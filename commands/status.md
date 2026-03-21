---
description: "Show current pipeline status and progress"
user-invocable: true
---

# /jm-adk:status

## Purpose

Display the current state of the ADK pipeline including completed phases, active tasks, and pending steps. Use this to check progress during any pipeline execution.

## Workflow

1. Read pipeline state from `.adk/pipeline.json` and session context.
2. Calculate completion percentage and identify the current active phase.
3. List completed artifacts, pending tasks, and any blocked items.
4. Display a visual progress bar and estimated time remaining.

## Arguments

- `verbose` — Show detailed task-level breakdown (optional, default: false)

## Examples

```bash
/jm-adk:status
/jm-adk:status verbose=true
```

## Related Commands

- `/jm-adk:menu` — Navigate to a specific command
- `/jm-adk:retro` — Review session retrospective
