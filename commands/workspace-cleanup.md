---
description: "Archive stale workspaces and clean up orphaned registry entries"
user-invocable: true
---

# /jm-adk:workspace-cleanup

## Purpose

Maintenance command. Archives workspaces older than N days (default: 30) and fixes registry inconsistencies. Run periodically or when `workspace/` accumulates too many entries.

## Workflow

1. Scan all workspaces in `workspace/` (exclude `archive/`)
2. For each workspace:
   - If status=completed and last updated > N days ago → archive automatically
   - If status=active and last updated > 7 days ago → flag as stale (ask user)
   - If directory exists but no `.workspace.json` → report as corrupted
3. Check registry for orphaned entries (point to non-existent dirs) → remove from registry
4. Report actions taken

## Arguments

| Argument | Type | Required | Default |
|----------|------|----------|---------|
| `days` | integer | No | 30 |
| `dry-run` | flag | No | false (actually performs cleanup) |

## Safety

- Never deletes workspaces — only moves to `archive/`
- Never archives active workspace without user confirmation
- `dry-run` mode shows what would happen without doing it

## Related Commands

- `/jm-adk:workspace list` — See current state
- `/jm-adk:workspace archive <id>` — Manual archive
