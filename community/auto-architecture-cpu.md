| 属性 | 值 |
|------|-----|
| date | 2026-04-28 |
| tags | [community, HN, architecture, optimization] |

# Auto-Architecture: Karpathy's Loop (CPU 版)

> HN 热帖（169 pts）— 社区将 autoresearch loop 指向 CPU 微架构设计。仓库：[FeSens/auto-arch-tournament](https://github.com/FeSens/auto-arch-tournament)

## 概要

社区将 Karpathy 的 [autoresearch](../projects/autoresearch.md) 研究循环指向了 **CPU 微架构设计**（而非 ML 训练）。基准是一个 5-stage in-order RV32IM SystemVerilog 核心，Agent 自主提出微架构假说、编辑 RTL、通过 riscv-formal/Verilator/FPGA P&R 验证门禁。73 个假说中仅 10 个被接受，最终 CoreMark/MHz +31%，iter/sec +92%，Fmax +48%，LUT4 −40%，超过人工调优的 VexRiscv ~56%。

仓库：[FeSens/auto-arch-tournament](https://github.com/FeSens/auto-arch-tournament) · HN 帖子：[Show HN (47937380)](https://hn.edgecompute.app/item/47937380)

## 讨论要点

- Agent loop 是已解决问题，**验证门禁**才是关键工程难点
- CPU vs GPU 的性价比权衡
- 小规模实验的迭代速度优势
- 形式化验证 + FPGA 实测的可靠性
