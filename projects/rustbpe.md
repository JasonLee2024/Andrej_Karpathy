| 属性 | 值 |
|------|-----|
| date | 2026-01-15 |
| tags | [project, BPE, tokenizer, Rust] |
| stars | 446 |
| language | Rust |
| repo | https://github.com/karpathy/rustbpe |

# rustbpe

> BPE tokenizer 的 Rust 实现。

## 概要

Karpathy 用 Rust 实现的 BPE（Byte Pair Encoding）tokenizer。目前只有训练代码，缺 tiktoken 加载/使用的训练代码（README 标记为 TODO）。

## 技术细节

- 纯 Rust 实现
- BPE 训练逻辑
- 缺：tiktoken 格式的加载/推理
- 开源协议：MIT

## 状态

| 组件 | 状态 |
|------|------|
| BPE 训练 | Done |
| tiktoken 加载/使用 | TODO |

## 关联

- [nanoGPT](nanoGPT.md) — tokenizer 的上游使用者
- llm-wiki — tokenizer 相关知识点
