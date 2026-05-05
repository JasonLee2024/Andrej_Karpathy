---
date: 2026-05-05
tags: [sitemap, navigation, index]
---

# 🗺️ 站点地图

> 本页由 `scripts/generate-sitemap.py` 自动生成 · 最后更新 2026-05-05 18:44

## 导航一览

| 目录 | 内容 |
|------|------|
| `profile/` | 个人简介、履历时间线、全平台索引 |
| `projects/` | 核心开源项目详解（nanoGPT, nanochat, LLM.c 等） |
| `talks/` | 演讲、访谈、播客内容整理 |
| `blog/` | 博客文章摘要与解读 |
| `social/` | X/Twitter 等社交平台观点精选 |
| `community/` | 社区衍生项目、讨论与二次创作 |
| `scripts/` | 自动化更新脚本 |
| `courses/` | 课程体系 |
| `companies/` | 企业版图 |
| `papers/` | 学术论文 |
| `[[timeline]]` | 综合时间线 — 所有事件的集中索引 |

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

## 统计

| 指标 | 数值 |
|------|------|
| Markdown 文件数 | **28** |
| 总行数 | **1055** |
| 目录数 | **7** |
| 知识库大小 | **35 KB** |
| 最后更新 | 2026-05-05 18:44 |

## 维护说明

- 新增或删除文件后，运行 `python3 scripts/generate-sitemap.py` 更新本页
- 本文件由 pre-commit hook 自动校验一致性
- `scripts/update.sh` 每周运行时自动更新
