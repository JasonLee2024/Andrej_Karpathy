---
date: 2025-01-01
tags: [project, C, LLM, training, inference]
language: C
repo: https://github.com/karpathy/llm.c
---

# LLM.c

> 纯 C 语言实现的 LLM 训练与推理。无框架依赖，零基础到完整 LLM。

## 概要

LLM.c 只用一个 C 语言源文件就实现了完整的 LLM 训练/推理。极简主义的极致，证明 LLM 底层并不神秘。

## 核心亮点

- 纯 C 无任何框架依赖（无 PyTorch/TensorFlow）
- 完整的训练 loop：前向 → 损失 → 反向 → 更新
- 支持 GPU 加速（CUDA）
- 代码可读性极高，适合深入学习
- 伴随博客文章逐行解释

## 教学内容

- 解释了 Transformer 中的每个计算步骤
- 包括：LayerNorm、注意力机制、MLP、交叉熵损失
- 从零实现 AdamW 优化器
- 是 [[nanoGPT]] 的"C 语言版"

## 关联

- [[nanoGPT]] — Python/PyTorch 版
- [[micrograd]] — Python 版自动求导
