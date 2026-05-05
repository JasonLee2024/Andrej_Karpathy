---
date: 2026-01-27
tags: [project, agent, skills, CLAUDE.md, coding-guidelines]
stars: 113K
language: Markdown
repo: https://github.com/forrestchang/andrej-karpathy-skills
---

# Karpathy Skills（AI Agent 编程准则）

> Karpathy 提出的 AI 编码 Agent 行为准则，由社区整理为 `CLAUDE.md` 指令集。113K stars，被广泛集成到 Claude Code、Cursor 等 AI 编程工具。

## 概要

Karpathy 在 2026 年初分享了一套不到 100 行（核心逻辑约 65 行）的 `CLAUDE.md` 指令文件，定义了 AI 编码助手的行为准则。社区成员 **forrestchang** 将其整理为结构化仓库 `andrej-karpathy-skills`，包含 Claude Code、Cursor 等多平台适配版本。

## 四大核心原则

### 1. 先思后行（Think Before Coding）

- 不要假设。不要隐藏困惑。暴露权衡。
- 实施前：明确陈述假设，不确定就问
- 如果有多种解释，全部呈现——不要默默选择
- 如果有更简单的方案，说出来。在必要时提出异议
- 如果有不清楚的地方，停下来，说出困惑，提问

### 2. 至简优先（Simplicity First）

- 用最少代码解决问题。不要做任何猜测性工作
- ❌ 不要实现未要求的功能
- ❌ 不要为一次性代码创建抽象层
- ❌ 不要添加未要求的"灵活性"或"可配置性"
- ❌ 不要为不可能发生的场景做错误处理
- ✅ 如果写了 200 行但可以用 50 行实现，重写

### 3. 手术级修改（Surgical Changes）

- 只改必须改的。只清理自己留下的乱。
- ❌ 不改邻近代码、注释或格式
- ❌ 不重构没坏的东西
- ❌ 匹配现有风格，即使你会用不同方式写
- ✅ 修改产生的孤儿（未使用的导入/变量/函数）要清理
- ✅ 不改预先存在的死代码，除非被要求

### 4. 目标驱动执行（Goal-Driven Execution）

- 定义成功标准，迭代直到验证通过
- 每个修改的行都应当能追溯到用户的需求

## 文件结构

```
.
├── CLAUDE.md          # 核心准则（Claude Code）
├── CURSOR.md          # Cursor 适配版本
├── EXAMPLES.md        # 示例和场景说明
├── README.md          # 英文说明
├── README.zh.md       # 中文说明
├── .claude-plugin/    # Claude 插件配置
├── .cursor/           # Cursor 配置
└── skills/            # 细分技能模块
```

## 影响

- **113K stars**（截至 2026-05），GitHub 增长最快的仓库之一
- 被大量 Claude Code、Cursor 用户直接集成到项目中
- 与 Karpathy 在 [[talks/2026-sequoia-ai-ascent-agentic-engineering]] 中提出的 "Agentic Engineering" 理念一脉相承
- 代表从 "Vibe Coding" 到严谨 Agent 工程实践的转变

## 应用建议

在 Hermes Agent 的 `persona.md` 和技能系统中，这些原则可以直接映射为技能模板的行为准则。核心矛盾在于"至简"与"功能完整性"之间的权衡——Karpathy 明确偏向保守。
