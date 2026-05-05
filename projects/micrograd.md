---
date: 2025-01-01
tags: [project, autograd, education, math]
stars: 12K
language: Python
repo: https://github.com/karpathy/micrograd
---

# micrograd

> 一个极小的自动求导引擎。**~100 行代码**实现完整的自动微分。

## 概要

micrograd 用约 100 行 Python 代码实现了 PyTorch 中 autograd 的核心机制。是理解深度学习反向传播的最佳教学工具。

## 核心特性

- 标量值自动求导（非张量，降低复杂度）
- 支持所有基础运算（+、-、*、/、pow、exp、tanh 等）
- 构建计算图并自动计算梯度
- 完整的反向传播实现
- 可用作小型神经网络的训练引擎

## 影响

- 10K+ GitHub stars
- 被无数 AI 课程用作教学材料
- "Karpathy 的 micrograd" 几乎是 AI 教学的代名词
- 启发了社区的各种语言移植版本（Rust、Go、JS 等）

## 关联

- [[nanoGPT]] — 更高级的应用
- [[LLM.c]] — C 语言版教学项目
- [[community/micrograd-ports]] — 社区移植
