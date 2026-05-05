---
date: 2026-04-28
tags: [community, HN, architecture, optimization]
---

# Auto-Architecture: Karpathy's Loop (CPU 版)

> HN 热帖（240 pts）— 社区对 autoresearch 架构反思后提出的 CPU 优化版。

## 概要

社区在分析 [[autoresearch]] 的 agent loop 后，提出了 CPU-only 优化的实现方案。核心观点：很多 AI 研究任务不需要 GPU，CPU 优化可以大幅降低成本。

## 讨论要点

- Agent loop 的计算瓶颈分析
- CPU vs GPU 的性价比权衡
- 小规模实验的迭代速度优势
