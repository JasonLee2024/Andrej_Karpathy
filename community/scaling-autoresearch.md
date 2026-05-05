---
date: 2026-03
tags: [community, extension, skypilot, distributed]
---

# Scaling Karpathy's Autoresearch (SkyPilot)

> 社区用 SkyPilot 将 [[autoresearch]] 扩展到分布式环境。

## 概要

SkyPilot 团队（UC Berkeley）用 SkyPilot 框架扩展了 Karpathy 的 [[autoresearch]]，实现了跨云 GPU 集群的分布式自动 AI 研究。展示了 autoresearch 的可扩展性和更广泛的应用可能。

## 技术要点

- 多 GPU 分布式训练管理
- 跨云（AWS/GCP/Azure）资源调度
- 自动化实验编排
- 与 autoresearch agent loop 集成
