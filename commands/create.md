---
description: "Create new component/feature (meta-command)"
user-invocable: true
---

# /jm-adk:create

## Purpose

Meta-command that routes to the appropriate create sub-command based on what you want to build. Use this when you need to add a new feature or component to an existing project.

## Workflow

1. Analyze the user request to determine the type of artifact to create.
2. Route to the appropriate specialized create command (page, component, form, etc.).
3. Execute the specialized command with provided arguments.
4. Verify the created artifact integrates correctly with the existing project.

## Arguments

- `type` — Artifact type: `page` | `component` | `form` | `api` | `crud` | `auth` | etc. (required)
- `name` — Name of the artifact to create (required)

## Examples

```bash
/jm-adk:create type=component name=UserCard
/jm-adk:create type=page name=about
```

## Related Commands

- `/jm-adk:create-component` — Create framework component
- `/jm-adk:create-page` — Create HTML page
- `/jm-adk:evolve` — Improve existing code
