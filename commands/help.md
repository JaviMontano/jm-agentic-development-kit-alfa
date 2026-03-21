---
description: "Show help and getting started guide"
user-invocable: true
---

# /jm-adk:help

## Purpose

Display a comprehensive help guide covering ADK setup, available commands, workflows, and best practices. Use this when you are new to the ADK or need a refresher on capabilities.

## Workflow

1. Detect the current project state and ADK environment configuration.
2. Present a getting-started guide tailored to the project's current phase.
3. List all available commands organized by category with brief descriptions.
4. Provide recommended workflows and tips for effective ADK usage.

## Arguments

- `topic` — Help topic: `setup` | `commands` | `workflows` | `faq` (optional, default: overview)
- `command` — Get detailed help for a specific command (optional)

## Examples

```bash
/jm-adk:help
/jm-adk:help topic=workflows
/jm-adk:help command=scaffold
```

## Related Commands

- `/jm-adk:menu` — Interactive command palette
- `/jm-adk:search` — Search for specific capabilities
- `/jm-adk:init` — Initialize ADK environment
