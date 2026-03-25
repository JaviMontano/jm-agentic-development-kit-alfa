---
description: "System health check — verify integrity, workspace state, hook status, component counts, and report gaps"
user-invocable: true
---

# /jm-adk:health

## Purpose

Diagnostic command. Run when something feels off, after upgrading, or periodically to ensure system integrity. Unlike `/jm-adk:init` (which creates/configures), health only reads and reports.

## Workflow

### Step 1: Core Files

| File | Check | Fail action |
|------|-------|-------------|
| `PRISTINO.md` | Exists, has "## Identity" heading | Report: orchestrator identity missing |
| `references/ontology/constitution-v5.2.0.md` | Exists, > 1KB | Report: constitution missing or truncated |
| `PRISTINO-INDEX.md` | Exists | Suggest: `bash scripts/generate-pristino-index.sh` |
| `CLAUDE.md` | Contains "v4.0.0" | Report: CLAUDE.md may be outdated |
| `.jm-adk.json` | Exists, valid JSON | Suggest: `/jm-adk:init` |

### Step 2: Component Counts

Count SKILL.md files, agent .md files, command .md files. Compare against expected (264/256/256).
Flag if counts diverge by >5%.

### Step 3: Hook Status

Verify `hooks/hooks.json` has 5 entries. Check each script is executable (`-x` flag).

### Step 4: Workspace Health

- Registry exists and parseable?
- Active workspace directory exists on disk?
- Any orphaned pointers?
- Active workspace count vs maxActive limit?
- Stale workspaces (>7 days without update)?

### Step 5: Guardrails

Check `references/guardrails/` has at least `guidelines.json`, `constraints.json`, `guardrails.json`.

### Step 6: Report

```
=== JM-ADK Health Check ===

Core:    PRISTINO=OK | Constitution=OK | Index=OK | CLAUDE.md=v4.0.0
Components: 264 skills | 256 agents | 256 commands (expected: 256/256/256)
Hooks:   5/5 active, all executable
Workspace: enabled | active: 1 | stale: 0 | orphaned: 0
Guardrails: 3/3 files present

Issues: (none)
   — or —
Issues:
  WARN: PRISTINO-INDEX.md stale (run generate-pristino-index.sh)
  WARN: 1 stale workspace (>7 days): 2026-03-18-old-task
```

## Arguments

None. Read-only diagnostic.

## Related Commands

- `/jm-adk:init` — Fix issues found by health check
- `/jm-adk:workspace list` — See workspace details
