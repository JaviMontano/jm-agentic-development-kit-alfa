---
description: "Full development pipeline (SA-style): design → scaffold → build → test → deploy"
user-invocable: true
---

# /jm-adk:develop

## Purpose

Execute a complete development pipeline from architecture design through deployment. Use this when you have a validated specification and are ready to build.

## Workflow

1. Design system architecture including component hierarchy, API contracts, and database schema.
2. Scaffold project structure using the appropriate template (Firebase, Angular, React, Vanilla).
3. Build features iteratively, running lint and unit tests after each module.
4. Execute full test suite, perform quality audit, and deploy to the configured target.

## Arguments

- `spec` — Path to specification or inline description (required)
- `stack` — Technology stack: `firebase` | `angular` | `react` | `vanilla` (optional, auto-detected)
- `target` — Deploy target: `hostinger` | `firebase` | `preview` (optional)

## Examples

```bash
/jm-adk:develop spec=./docs/spec.md
/jm-adk:develop spec="Build a task manager app" stack=react target=firebase
```

## Related Commands

- `/jm-adk:analyze` — Run analysis pipeline first
- `/jm-adk:scaffold` — Scaffold project structure only
- `/jm-adk:deploy` — Deploy only
