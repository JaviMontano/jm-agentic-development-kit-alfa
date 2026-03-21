---
description: "Session retrospective with lessons learned"
user-invocable: true
---

# /jm-adk:retro

## Purpose

Run a session retrospective analyzing what went well, what could improve, and capturing lessons learned for future sessions. Use this at the end of a development session to continuously improve.

## Workflow

1. Review session timeline: commands executed, artifacts produced, and time spent.
2. Analyze what went well (keep doing), what was challenging (improve), and what to try next.
3. Extract lessons learned, useful patterns, and reusable snippets.
4. Generate a retrospective report and update the ADK knowledge base with learnings.

## Arguments

- `format` — Retro format: `standard` | `4ls` | `starfish` | `mad-sad-glad` (optional, default: standard)

## Examples

```bash
/jm-adk:retro
/jm-adk:retro format=4ls
```

## Related Commands

- `/jm-adk:status` — Check session progress
- `/jm-adk:docs` — Document learnings
- `/jm-adk:help` — Getting started guide
