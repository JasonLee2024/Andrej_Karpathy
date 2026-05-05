# 🧠 Andrej Karpathy 知识库

> 结构化跟踪 AI 科学家 Andrej Karpathy 的项目、观点与研究动态。
> 本仓库是 Obsidian 兼容的知识库，支持双向链接检索。

---

## 导航

| 目录 | 内容 |
|------|------|
| `profile/` | 个人简介、履历时间线、GitHub 仓库索引 |
| `projects/` | 核心开源项目详解（nanoGPT, nanochat, LLM.c 等）|
| `talks/` | 演讲、访谈、播客内容整理 |
| `blog/` | 博客文章摘要与解读 |
| `social/` | X/Twitter 等社交平台观点精选 |
| `community/` | 社区衍生项目、讨论与二次创作 |
| `scripts/` | 自动化更新脚本 |
| [[timeline]] | 综合时间线 — 所有事件的集中索引 |

---

## Karpathy 是谁

Andrej Karpathy，AI 科学家、教育者。曾任 OpenAI 研究科学家、Tesla AI 总监（Autopilot 视觉负责人），2023 年重返 OpenAI，2024 年创立 [[Eureka Labs]]。以深度学习与计算机视觉的交叉研究闻名，同时是 **CS231n**（Stanford CNN for Visual Recognition）课程的创建者。

> "I am not one thing. I am a teacher, a researcher, an engineer, and a builder." — Karpathy

代表作：
- [[nanoGPT]] — 极简 GPT-2 实现（47K+ stars）
- [[nanochat]] — "$100 能买到的最好 ChatGPT"
- [[autoresearch]] — AI 自动做 AI 研究（79K+ stars）
- [[LLM.c]] — 纯 C 语言的 LLM 训练/推理
- [[micrograd]] — 微小型自动求导引擎（10K+ stars）

---

## 最近动态（2025-2026）

| 日期 | 事件 | 链接 |
|------|------|------|
| 2026-04-28 | [[autoresearch]] HN 热帖 "Auto-Architecture: Karpathy's Loop" | [[autoresearch]] |
| 2026-04-25 | "Karpathy-style LLM wiki"（[[llm-wiki]]）HN 260 pts | [[llm-wiki]] |
| 2026-04-14 | [[nanochat]] 发布 — 53K stars | [[nanochat]] |
| 2026-03 | US Job Market Visualizer 工具发布 | [[us-job-market]] |
| 2026-03 | SkyPilot "Scaling Karpathy's Autoresearch"（79K stars）| [[autoresearch]] |
| 2026-01 | [[rustbpe]] 开源 — BPE 的 Rust 实现 | [[rustbpe]] |
| 2025-12 | "Never felt this much behind" 获 549 pts HN 热议 | [[never-felt-behind]] |
| 2025-10 | DeepSeek-OCR 评论 "Are pixels better than text?" | [[deepseek-ocr-comment]] |
| 2025-05 | YC AI Startup School 演讲 "Software in the AI Era" | [[2025-YC-AI-Startup-School]] |

---

## 仓库统计（截至 2026-05）

- **GitHub**: 63 仓库、180K+ followers
- **Stars 最高**: [[autoresearch]] (79K) → [[nanochat]] (53K) → [[nanoGPT]] (47K)
- **博客**: `karpathy.ai/blog/`（最后更新 2024-12）
- **X/Twitter**: @karpathy，500K+ followers

---

## 目录结构

```
Andrej_Karpathy/
├── README.md  ← 首页导航 + 最近动态一览
├── _config.yml  ← GitHub Pages 配置
├── sitemap.md  ← 🗺️ 站点地图（自动生成）
├── timeline.md  ← 综合时间线
├── profile/  ← 个人简介、履历、平台索引
│   ├── bio.md  ← 个人履历
│   ├── platforms-index.md  ← 全平台索引
│   └── projects-index.md  ← 项目索引表
├── projects/  ← 核心开源项目详解
│   ├── LLM.c.md  ← LLM.c
│   ├── autoresearch.md  ← autoresearch
│   ├── hn-time-capsule.md  ← hn-time-capsule
│   ├── micrograd.md  ← micrograd
│   ├── nanoGPT.md  ← nanoGPT
│   ├── nanochat.md  ← nanochat
│   ├── rustbpe.md  ← rustbpe
│   └── us-job-market.md  ← US Job Market Visualizer
├── talks/  ← 演讲、访谈、播客
│   ├── 2025-Dwarkesh-Podcast.md  ← Dwarkesh Podcast: "10 years to solve ...
│   ├── 2025-YC-AI-Startup-School.md  ← YC AI Startup School: "Software in th...
│   ├── 2025-never-felt-behind.md  ← "Never felt this much behind"
│   └── 2026-sequoia-ai-ascent-agentic-engineering.md  ← Sequoia AI Ascent 2026: From Vibe Cod...
├── social/  ← X/Twitter 观点精选
│   ├── 2025-agent-decade.md  ← "10 years to solve Agents"
│   ├── 2025-deepseek-ocr-comment.md  ← DeepSeek-OCR 评论："Are pixels better th...
│   ├── 2025-programming-behind.md  ← Programming is 99% behind
│   └── 2026-claws-concept.md  ← "Claws" 概念
├── community/  ← 社区衍生项目 & 讨论
│   ├── auto-architecture-cpu.md  ← Auto-Architecture: Karpathy's Loop (C...
│   ├── hn-llm-visual-guide.md  ← "How LLMs Work" 视觉指南 (HN)
│   ├── karpathy-llm-wiki.md  ← Karpathy-style LLM Wiki
│   ├── micrograd-ports.md  ← micrograd 社区语言移植
│   └── scaling-autoresearch.md  ← Scaling Karpathy's Autoresearch (SkyP...
├── blog/  ← 博客文章摘要
│   └── 2024-founding-fathers.md  ← Founding Fathers of AI (2024-12)
└── scripts/  ← 自动化维护脚本
    ├── generate-sitemap.py  ← 站点地图生成器
    └── update.sh  ← 自动拉取最新动态
```

共 **28 个文件，1065 行**。全部是 Obsidian 兼容的 Markdown（`[[wikilink]]` 双向链接）。全部是 Obsidian 兼容的 Markdown（`[[wikilink]]` 双向链接）。全部是 Obsidian 兼容的 Markdown（`[[wikilink]]` 双向链接）。全部是 Obsidian 兼容的 Markdown（`[[wikilink]]` 双向链接）。

### 说明

1. **知识库是活的** — `scripts/update.sh` 每周拉一次 GitHub Events、HN Algolia API 获取最新动态
2. **Obsidian 友好** — 所有文件有 `date:` 前注，支持 `[[双链]]` 互相引用
3. **时间线是中心入口** — `timeline.md` 聚合所有事件，按年季度排列

---

*本知识库由 [[Hermes Agent]] 自动维护，内容持续更新。*

---

> **在线阅读：** [https://jasonlee2024.github.io/Andrej_Karpathy/](https://jasonlee2024.github.io/Andrej_Karpathy/) — 知识库 GitHub Pages 站点  
> **GitHub 仓库：** [github.com/JasonLee2024/Andrej_Karpathy](https://github.com/JasonLee2024/Andrej_Karpathy) — 欢迎 Star、Issue 和 PR
