| 属性 | 值 |
|------|-----|
| date | 2025-01-01 |
| tags | [project, LLM, transformer, education] |
| stars | 47K |
| language | Python |
| repo | https://github.com/karpathy/nanoGPT |

# nanoGPT

> 最快/最简的 GPT-2 训练与微调实现。Karpathy 最广为人知的教育项目之一。

## 概要

nanoGPT 是一个极简但功能完整的 GPT-2 实现，用几百行 PyTorch 代码实现了完整的 Transformer 语言模型训练/微调。是 **minGPT** 的后继版本（更快、更优化）。

## 核心特性

- 训练 GPT-2（小到中规模）
- 支持 OpenWebText 数据集训练
- Finetune 支持（Shakespeare 等自定义数据）
- 支持 GPT-2 预训练权重加载
- 生成文本推理

## 影响

- 47K+ GitHub stars
- 被无数 AI 课程、教程引用
- 配套 YouTube [[ng-video-lecture]] 系列
- 成为 AI 教育领域的 "Hello World"
- 启发了大量 fork/衍生教学项目

## 关联项目

- [minGPT](https://github.com/karpathy/minGPT) — nanoGPT 前身
- [ng-video-lecture](https://github.com/karpathy/ng-video-lecture) — YouTube 教学视频配套代码
- [LLM.c](LLM.c.md) — C 语言版同类项目
- [nanochat](nanochat.md) — nanoGPT 上层的对话模型
