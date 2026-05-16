| 属性 | 值 |
|------|-----|
| date | 2026-03-07 |
| updated | 2026-05-16 |
| tags | [project, AI-agent, research, automation, autonomous, loop] |
| stars | 79K |
| language | Python |
| license | MIT |
| repo | https://github.com/karpathy/autoresearch |

# autoresearch

> "Let AI agents run experiments while you sleep." — Karpathy, 2026-03-07

## 概要

autoresearch 是一个极简的 **AI 自主研究框架**，仅 ~630 行 Python 代码，在单张 GPU 上实现了完整的 "提出假设 → 修改代码 → 训练验证 → 保留/丢弃" 自动化研究闭环。2026-03-07 开源，一个月内获 65.4K+ stars，目前 79K stars，是 Karpathy GitHub 上 stars 最多的项目。

> "我们的目标不是模拟一名博士生，而是模拟一个由无数博士生组成的完整科研社群。" — Karpathy

## 三文件架构

| 文件 | 大小 | 角色 | 是否可被 Agent 修改 |
|------|------|------|---------------------|
| `prepare.py` | ~100 行 | 固定常量 + 数据预处理 | **否**（人类锁定） |
| `train.py` | ~350 行 | GPT 模型 + Muon/AdamW 优化器 + 训练循环 | **是**（唯一 Agent 可编辑文件） |
| `program.md` | ~40 行 | 人类编写的实验指令 / "AI 研究员入职手册" | 人类编辑 |

## Agent 自主研究循环

```
┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│ 修改代码  │ → │ 训练 5 分钟│ → │ 评估指标  │ → │ 保留/丢弃 │
│ (train.py)│    │ (单GPU)   │    │ (val_bpb) │    │ 好结果保留 │
└──────────┘    └──────────┘    └──────────┘    └──────────┘
      ↑                                              │
      └──────────── 继续下一轮 ──────────────────────┘
```

- **固定时间预算**: 每次实验 wall-clock 5 分钟（不含启动），~12 次/小时，一觉醒来 ~100 次实验
- **评估指标**: `val_bpb`（validation bits per byte）— 越低越好，vocab-size 无关
- **Agent 可改动**: 架构、超参数、优化器、batch size、正则化等
- **优化器**: Muon + AdamW 混合
- **硬件**: 单 NVIDIA GPU（Karpathy 在 H100 上测试）

## 实验数据

| 来源 | 实验次数 | 有效改进 | 关键发现 |
|------|----------|----------|----------|
| Karpathy 自主运行 | 276 | 29 | 发现了手调 20 年遗漏的 attention scaling / 正则化问题 |
| 社区扩展 | ~3,000 | 82 | — |

### 核心成果

- nanoChat 模型训练时间 **2.02h → 1.80h**（效率提升 ~11%）
- agent 约 700 次自主改动尝试
- 帖子浏览量 > **1,060 万次**

## 依赖与运行

- Python 3.10+，`uv` 包管理器
- `pyproject.toml` 声明依赖
- 配套 `analysis.ipynb` 用于结果分析

## 社区扩展

| 项目 | 说明 |
|------|------|
| SkyPilot "Scaling Karpathy's Autoresearch"（2026-03） | 分布式协作层，多 Agent 共享成果、分工协作 |
| "Auto-Architecture: Karpathy's Loop"（HN 2026-04-28, 240 pts） | CPU 版实现 + HN 热议 |
| 社区讨论 | AI agent 做研究的局限与前景 |

## 意义

autoresearch 被认为是 "**AI 研究可编程化**" 的第一个最小可行原型——把完整的科学研究闭环第一次变成了可以持续自动运行的系统。它验证了一个核心命题：**AI agent 可以在没有人类干预的情况下，自主完成有意义的深度学习实验并发现人类遗漏的优化方向**。

## 关联

- [[nanochat]] — 被研究的模型
- [[community/scaling-autoresearch]] — SkyPilot 分布式扩展
- [[community/auto-architecture-cpu]] — CPU 版实现
- [[projects/karpathy-skills]] — Karpathy 的 AI Agent 编程准则
