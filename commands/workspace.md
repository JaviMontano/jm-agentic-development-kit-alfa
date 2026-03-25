---
description: "Manage JM-ADK workspaces — create, status, list, complete, archive, switch, gate, report"
user-invocable: true
---

# /jm-adk:workspace

## Purpose

Manual control over the workspace system. Normally, workspaces are auto-created and auto-tracked. Use this command when you need explicit control: creating a second workspace, switching context, reviewing history, or advancing quality gates.

## Preconditions

- `/jm-adk:init` has been run (`.jm-adk.json` exists)
- `scripts/workspace-manager.sh` is executable

## Subcommands

### `new <description>`

Create a named workspace. Idempotent collision handling: appends `-2`, `-3`, etc. if slug exists today.

```
/jm-adk:workspace new "landing page redesign"
→ WORKSPACE-CREATED: 2026-03-25-landing-page-redesign
```

**Limits**: Slug truncated to 40 chars. Max 99 workspaces with same slug per day (safety valve).

### `status`

Active workspace info: name, path, staleness, tool call count, quality gate, active count.

Self-heals: if registry points to a deleted workspace, clears the orphaned pointer automatically.

```
/jm-adk:workspace status
→ STATUS: active | WORKSPACE: 2026-03-25-landing-page | GATE: G1 | TOOLS: 23
```

### `list`

All workspaces (active + archived) with status and quality gate.

### `complete [id]`

Mark workspace as completed. Defaults to active workspace. Appends summary stats to tasklog. Clears active pointer.

**Guard**: Won't complete an already-completed workspace (idempotent).

### `archive <id>`

Move completed workspace to `workspace/archive/`. Preserves full history.

**Guards**: Won't archive active workspace (must complete first). Won't overwrite existing archive.

### `switch <id>`

Change active workspace. Target must have status=active (not completed). Use `reopen` first for completed workspaces.

### `reopen <id>`

Reactivate a completed workspace. Sets status back to active, makes it the active workspace, logs the reopen event.

```
/jm-adk:workspace reopen 2026-03-24-firebase-auth
→ WORKSPACE-REOPENED: 2026-03-24-firebase-auth
```

**Guard**: Only works on completed workspaces. Active/archived workspaces are rejected.

### `gate <G0|G1|G2|G3>`

Advance quality gate for active workspace. Logs transition to tasklog.

**Validation**: Only G0→G1→G2→G3 (sequential). Rejects regression (G2→G1) and invalid names.

```
/jm-adk:workspace gate G2
→ GATE-UPDATED: G1 → G2
```

### `report [id]`

Generate summary report: title, status, dates, metrics, artifact count, action count. Defaults to active workspace.

## Workspace Structure

```
workspace/YYYY-MM-DD-slug/
├── .workspace.json    # Metadata (schema v1): id, status, triad, metrics, quality gate
├── tasklog.md         # Append-only audit trail. Auto-maintained by PostToolUse hook.
├── changelog.md       # Semantic versioning. Keep-a-Changelog format. Model-maintained.
├── plan.md            # Objective, scope, tasks, acceptance criteria, risks. Model-filled.
└── artifacts/         # Generated deliverables. Model places files here.
```

## Lifecycle

```
CREATE → ACTIVE → COMPLETED → ARCHIVED
           ↑          │
           └─ reopen ─┘
```

**Max 3 active** (Constitution XVI: WIP ≤ 3). Enforced by CLAUDE.md, not by bash.

## Implementation

All operations delegate to `scripts/workspace-manager.sh`:

```bash
bash scripts/workspace-manager.sh create "description"
bash scripts/workspace-manager.sh status
bash scripts/workspace-manager.sh list
bash scripts/workspace-manager.sh complete [id]
bash scripts/workspace-manager.sh archive <id>
bash scripts/workspace-manager.sh switch <id>
bash scripts/workspace-manager.sh reopen <id>
bash scripts/workspace-manager.sh gate <G0|G1|G2|G3>
bash scripts/workspace-manager.sh report [id]
```

## Acceptance Criteria

- [ ] `new`: Creates directory with all 4 files + artifacts/ folder
- [ ] `new`: Sets as active workspace in registry
- [ ] `new`: Handles slug collision with counter suffix
- [ ] `status`: Reports staleness if workspace is from a previous day
- [ ] `status`: Self-heals orphaned registry pointer
- [ ] `complete`: Appends stats to tasklog, clears active pointer
- [ ] `archive`: Refuses to archive active workspace
- [ ] `switch`: Refuses to switch to completed workspace
- [ ] `gate`: Validates gate name, logs transition
- [ ] `report`: Shows metrics, artifact count, action count

## Edge Cases

| Scenario | Behavior |
|----------|----------|
| `new` with empty name | Slug defaults to "unnamed" |
| `new` with all special chars | Slug normalizes to "unnamed" |
| `complete` with no active workspace | Error with hint to create one |
| `switch` to non-existent workspace | Error with hint to run `list` |
| `archive` of active workspace | Error: must complete first |
| Registry corrupted | Self-heals on next `ensure_registry` |
| Workspace dir deleted manually | `status` detects orphan, clears pointer |

## Related Commands

- `/jm-adk:init` — First-time setup
- `/jm-adk:health` — System integrity check
- `/jm-adk:analyze` — Analysis pipeline (outputs to active workspace)
