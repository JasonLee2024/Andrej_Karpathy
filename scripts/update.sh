#!/bin/bash
# ===============================================================
# Karpathy 知识库自动更新脚本
# 从 GitHub、Hacker News、X/Twitter 获取最新动态并追加到知识库
# ===============================================================
# Usage: bash scripts/update.sh
# 建议配合 cron 每周运行一次
# ===============================================================

set -euo pipefail
cd "$(dirname "$0")/.."
KBASE="$(pwd)"
TODAY=$(date '+%Y-%m-%d')
LOGFILE="$KBASE/scripts/update.log"

log() { echo "[$TODAY] $*" | tee -a "$LOGFILE"; }
warn() { echo "[$TODAY] WARN: $*" | tee -a "$LOGFILE"; }

log "=== Karpathy KB Update Started ==="

# ── 1. GitHub Events ──
log "Fetching GitHub events..."
if command -v gh &>/dev/null; then
    # Karpathy's recent public activity
    gh api users/karpathy/events/public --jq '
        .[] | select(.type != "WatchEvent" and .type != "MemberEvent")
        | [.created_at, .type, .repo.name, (.payload.commits[0].message // "")]
        | @tsv
    ' 2>/dev/null | head -20 > /tmp/karpathy_gh_events.txt || \
        warn "GitHub API call failed"
    if [ -s /tmp/karpathy_gh_events.txt ]; then
        log "GitHub events saved. Check KBASE/scripts/gh_events_latest.txt"
        cp /tmp/karpathy_gh_events.txt "$KBASE/scripts/gh_events_latest.txt"
    fi
else
    # Fallback: use public RSS
    curl -s "https://github.com/karpathy.atom" 2>/dev/null \
        | grep -oP '(?<=<title>)[^<]+' | head -10 \
        > "$KBASE/scripts/github_latest.txt" || warn "GitHub RSS failed"
fi

# ── 2. Hacker News (Algolia API) ──
log "Fetching HN mentions..."
curl -s "https://hn.algolia.com/api/v1/search?query=karpathy&tags=story&hitsPerPage=20&restrictSearchableAttributes=title,url,text" \
    > /tmp/hn_karpathy.json 2>/dev/null || warn "HN API failed"

if [ -f /tmp/hn_karpathy.json ]; then
    # Extract new stories that don't exist in KB yet
    echo "" > "$KBASE/scripts/hn_new.txt"
    python3 -c "
import json, sys
with open('/tmp/hn_karpathy.json') as f:
    data = json.load(f)
for hit in data.get('hits', []):
    title = hit.get('title', '')
    url = hit.get('url') or f\"https://news.ycombinator.com/item?id={hit.get('objectID')}\"
    points = hit.get('points', 0)
    date = hit.get('created_at', '')[:10]
    print(f'{date} | {points} pts | {title}')
    print(f'  → {url}')
" | head -30 > "$KBASE/scripts/hn_new.txt"
    log "HN results saved to scripts/hn_new.txt"
fi

# ── 3. X/Twitter (via x-cli if available) ──
log "Checking X/Twitter..."
if command -v timeline &>/dev/null; then
    timeline @karpathy --count 10 2>/dev/null \
        > "$KBASE/scripts/x_latest.txt" || warn "X CLI failed"
else
    log "X CLI not installed. Skipping Twitter check."
    log "Install via: cargo install x-cli (or use xurl)"
fi

# ── 4. Generate Summary ──
log "Generating summary..."
{
    echo "# 更新摘要 — $TODAY"
    echo ""
    echo "## GitHub 活动"
    if [ -f "$KBASE/scripts/gh_events_latest.txt" ]; then
        cat "$KBASE/scripts/gh_events_latest.txt"
    else
        echo "（无数据）"
    fi
    echo ""
    echo "## HN 提及"
    if [ -f "$KBASE/scripts/hn_new.txt" ]; then
        cat "$KBASE/scripts/hn_new.txt"
    else
        echo "（无数据）"
    fi
    echo ""
    echo "## X/Twitter"
    if [ -f "$KBASE/scripts/x_latest.txt" ]; then
        cat "$KBASE/scripts/x_latest.txt"
    else
        echo "（无数据）"
    fi
} > "$KBASE/scripts/update_summary_$TODAY.md"

# ── 5. Generate Sitemap + Sync Directory Tree ──
log "Generating sitemap..."
python3 scripts/generate-sitemap.py 2>&1 | tee -a "$LOGFILE"

log "=== Karpathy KB Update Complete ==="
log "Summary saved to scripts/update_summary_$TODAY.md"
