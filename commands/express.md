---
description: "Quick mode: scaffold → develop → deploy (skip analysis)"
user-invocable: true
---

# /jm-adk:express

## Purpose

Fast-track from idea to deployed application by skipping the analysis phase. Use this for prototypes, MVPs, or when you already know exactly what to build.

## Workflow

1. Parse user intent and select the best scaffold template automatically.
2. Generate project structure and implement core features in a single pass.
3. Run minimal quality checks (lint + smoke tests).
4. Deploy to preview environment and return the live URL.

## Arguments

- `idea` — What to build, described in natural language (required)
- `stack` — Technology stack: `firebase` | `angular` | `react` | `vanilla` (optional, auto-detected)
- `target` — Deploy target: `hostinger` | `firebase` | `preview` (optional, default: preview)

## Examples

```bash
/jm-adk:express idea="Portfolio website with dark mode"
/jm-adk:express idea="Todo app with Firebase auth" stack=react
```

## Related Commands

- `/jm-adk:guided` — Full pipeline with human checkpoints
- `/jm-adk:auto` — Autonomous pipeline including analysis
- `/jm-adk:scaffold` — Scaffold only without building
