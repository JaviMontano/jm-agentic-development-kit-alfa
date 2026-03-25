---
description: "Generate a summary report for the active or specified workspace — metrics, timeline, artifacts, decisions"
user-invocable: true
---

# /jm-adk:workspace-report

## Purpose

Produce a structured summary of a workspace's activity. Useful for handoffs, retrospectives, or when resuming work after days away. Combines data from tasklog.md, .workspace.json, plan.md, and changelog.md into a single narrative.

## Workflow

1. Run `bash scripts/workspace-manager.sh report [id]` for raw metrics
2. Read workspace's `tasklog.md` — extract action timeline
3. Read workspace's `plan.md` — check which tasks are completed
4. Read workspace's `changelog.md` — count versions
5. Count files in `artifacts/`
6. Synthesize into report

## Output Format

```markdown
# Workspace Report: {title}

## Overview
| Metric | Value |
|--------|-------|
| ID | 2026-03-25-landing-page |
| Status | active |
| Created | 2026-03-25 10:30 |
| Quality Gate | G2 |
| Tool Calls | 47 |
| Artifacts | 5 files |
| Actions Logged | 23 |

## Timeline (key actions)
- 10:30 — Workspace created
- 10:35 — Plan written: landing page with Firebase auth
- 11:00 — index.html scaffolded
- 11:20 — Lighthouse audit: 94/100
- 11:30 — G2 gate passed

## Plan Status
- [x] Scaffold HTML structure
- [x] Add Firebase Auth
- [ ] Deploy to Hostinger

## Artifacts
- artifacts/index.html
- artifacts/styles.css
- artifacts/app.js

## Decisions & Assumptions
(Extracted from tasklog [ASSUMPTION] and [DECISION] tags)
```

## Arguments

| Argument | Type | Required | Default |
|----------|------|----------|---------|
| `id` | workspace ID | No | active workspace |
| `format` | `md` / `html` | No | `md` |

## Related Commands

- `/jm-adk:workspace status` — Quick metrics
- `/jm-adk:workspace complete` — Close workspace after reviewing report
