---
description: "Initialize ADK environment for new project"
user-invocable: true
---

# /jm-adk:init

## Purpose

Set up the ADK environment in a new or existing project directory, creating configuration files and directory structure. Use this as the first command when starting a new project.

## Workflow

1. Detect existing project structure and technology stack if present.
2. Create `.adk/` configuration directory with project manifest and settings.
3. Initialize git repository if not present; set up `.gitignore` with ADK defaults.
4. Run environment validation and report readiness status.

## Arguments

- `name` — Project name (optional, uses directory name)
- `stack` — Technology stack: `firebase` | `angular` | `react` | `vanilla` (optional, prompted)
- `target` — Deploy target: `hostinger` | `firebase` (optional, prompted)

## Examples

```bash
/jm-adk:init
/jm-adk:init name="my-app" stack=react target=firebase
```

## Related Commands

- `/jm-adk:scaffold` — Scaffold full project structure after init
- `/jm-adk:status` — Check environment status
