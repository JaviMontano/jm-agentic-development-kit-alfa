---
description: "Initialize a new project — detect environment, analyze repo, generate Constitution and governance files"
user-invocable: true
---

# /jm-adk:init

## Purpose

Guided project setup. Detects the environment (IDE + model), asks about your project, analyzes an existing repo if provided, and auto-generates governance files (Constitution, plan, triad recommendation).

## Workflow

### Step 1: Detect Environment

Identify IDE, model tier, triad mode. Report to user.

### Step 2: Ask About the Project

1. **"Do you have an existing repo to analyze?"** — If yes, read structure, package.json, tech stack
2. **"What are you building?"** — Extract domain, features, user types
3. **"Deployment target?"** — Hostinger / Firebase / Both

### Step 3: Auto-Generate

1. `.specify/CONSTITUTION.md` — Project-level constitution
2. `.specify/plans/plan-YYYY-MM-DD-init.md` — Initial plan with first 3 tasks
3. Triad recommendation for the first task
4. `workspace/` structure if applicable

### Step 4: Next Steps

Report what was generated and suggest next command.

## Arguments

| Argument | Description | Required | Default |
|----------|-------------|----------|---------|
| `repo` | Path to existing repo | No | current directory |
| `target` | Deployment target | No | ask user |

## Examples

```bash
/jm-adk:init
/jm-adk:init repo=/path/to/project
/jm-adk:init target=firebase
```

## Related Commands

- `/jm-adk:demo` — Quick showcase
- `/jm-adk:onboarding` — Simpler first-use
- `/jm-adk:analyze` — Full analysis (after init)
