---
description: "Meta-scaffold: choose template and generate project"
user-invocable: true
---

# /jm-adk:scaffold

## Purpose

Select the best project template and generate a complete project scaffold with configuration, directory structure, and boilerplate. Use this to bootstrap any new project.

## Workflow

1. Analyze project requirements to recommend the best scaffold template.
2. Prompt for confirmation or allow manual template selection.
3. Generate project structure with configuration files, base components, and tooling.
4. Run initial setup (install dependencies, initialize git, verify build).

## Arguments

- `template` — Template: `firebase` | `angular` | `react` | `vanilla` | `api` | `landing` | `dashboard` (optional, prompted)
- `name` — Project name (optional, uses current directory)

## Examples

```bash
/jm-adk:scaffold
/jm-adk:scaffold template=react name=my-app
```

## Related Commands

- `/jm-adk:scaffold-firebase` — Firebase-specific scaffold
- `/jm-adk:scaffold-react` — React-specific scaffold
- `/jm-adk:init` — Initialize ADK environment only
