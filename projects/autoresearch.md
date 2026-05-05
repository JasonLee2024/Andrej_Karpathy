---
date: 2026-03-15
tags: [project, AI-agent, research, automation]
stars: 79K
language: Python
repo: https://github.com/karpathy/autoresearch
---

# autoresearch

> AI agent 自动做 AI 研究 — 用 AI 来优化 AI 训练。

## 概要

autoresearch 是 Karpathy 最具野心的项目之一。它构建了一个 AI agent 系统，让 agent 自主探索和优化 nanochat 的训练策略。**79K stars**，是 Karpathy GitHub 上 stars 最多的项目。

## 核心理念

- **AI 辅助/自动化的 AI 研究**
- **自我优化** — agent 设计实验、运行实验、分析结果、迭代改进
- **自动化科学发现** 的雏形

## 技术架构

- agent 框架：定义研究任务、设计实验
- 训练环境：调用 [[nanochat]] 训练代码
- 结果分析：自动分析训练指标，提出改进方案
- 迭代循环："Auto-Architecture: Karpathy's Loop"（HN 2026-04-28）

## 社区扩展

- **SkyPilot "Scaling Karpathy's Autoresearch"**（2026-03）— 分布式扩展
- "Auto-Architecture: Karpathy's Loop" HN 热帖（240 pts, 2026-04-28）
- 社区讨论：AI agent 做研究的局限与前景

## 关联

- [[nanochat]] — 被研究的模型
- [[community/scaling-autoresearch]] — SkyPilot 扩展项目
- [[community/auto-architecture-cpu]] — CPU 版实现
