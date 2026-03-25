---
description: "Initialize JM-ADK workspace management — system check, config, workspace/, hooks validation, first-task setup"
user-invocable: true
---

# /jm-adk:init

## Purpose

One-time project setup. Creates the workspace management layer, validates system integrity, and prepares automatic task tracking. Idempotent: running twice updates config without destroying existing workspaces.

## Preconditions

- Current directory is the JM-ADK plugin root (PRISTINO.md exists)
- `scripts/workspace-manager.sh` is executable

## Workflow

### Step 1: System Integrity Check

| Check | Pass | Fail (degraded) |
|-------|------|-----------------|
| `PRISTINO.md` exists + has Identity section | Continue | Warn: "Orchestrator identity missing" |
| `references/ontology/constitution-v5.2.0.md` readable | Continue | Warn: "Constitution missing — quality gates disabled" |
| `PRISTINO-INDEX.md` accessible | Continue | Run `bash scripts/generate-pristino-index.sh` to rebuild |
| `hooks/hooks.json` has 5 entries | Continue | Warn: "Hooks incomplete — auto-tasklog may not work" |
| All `scripts/*.sh` executable | Continue | Run `chmod +x scripts/*.sh` |
| Component counts match expectations | Continue | Report actual counts vs expected |

Decision: Never block init on degraded checks. Report gaps and continue. User fixes later.

### Step 2: Detect Environment

Read IDE type, model tier, triad mode from environment signals. Report to user.

### Step 3: Create Configuration

Write `.jm-adk.json` at project root. If file already exists, **merge** (preserve user customizations, update version).

```json
{
  "version": "4.0.0",
  "initialized": "{ISO_TIMESTAMP}",
  "workspace": {
    "enabled": true,
    "root": "workspace",
    "autoCreate": true,
    "naming": "YYYY-MM-DD-{slug}",
    "maxActive": 3
  },
  "hooks": {
    "sessionStartCheck": true,
    "autoWorkspace": true,
    "autoTasklog": true,
    "autoSummary": true
  },
  "lastSession": {
    "date": null,
    "activeWorkspace": null
  }
}
```

### Step 4: Create Workspace Infrastructure

1. `mkdir -p workspace/archive/`
2. Initialize `workspace/.workspace-registry.json` (empty registry) — only if not exists
3. Add `workspace/` to `.gitignore` — only if not already present
4. `.jm-adk.json` is NOT gitignored (it's project config, shared across team)

### Step 5: Validate Hooks

Run `chmod +x scripts/*.sh`. Verify hooks.json points to all 5 scripts.

### Step 6: Create First Workspace (if task provided)

If `task` argument given → `bash scripts/workspace-manager.sh create "{slug}"`.
Otherwise → skip. Workspace auto-creates on first substantive request.

### Step 7: Report

```
JM-ADK v4.0.0 initialized.
System: PRISTINO=OK | Constitution=v5.2.0 | Index=OK
Components: {n} skills · {n} agents · {n} commands
Workspace: enabled | auto-create: on | max-active: 3
Hooks: 5/5 active
Config: .jm-adk.json {created|updated}
{DEGRADED: list of issues, if any}

Ready. Describe your first task — workspace auto-creates.
```

## Arguments

| Argument | Type | Required | Default | Description |
|----------|------|----------|---------|-------------|
| `task` | string | No | — | Pre-create workspace for this task |
| `repo` | path | No | cwd | Repo to analyze for tech stack |
| `target` | enum | No | ask | Deployment target: `hostinger`, `firebase`, `both` |

## Acceptance Criteria

- [ ] `.jm-adk.json` exists at project root with version 4.0.0
- [ ] `workspace/` directory exists with `.workspace-registry.json`
- [ ] `workspace/` is in `.gitignore`
- [ ] All scripts in `scripts/` are executable
- [ ] If `task` provided: workspace exists with tasklog, changelog, plan, artifacts/
- [ ] System integrity report shown to user
- [ ] Idempotent: second run doesn't destroy existing workspaces or config customizations

## Edge Cases

| Scenario | Behavior |
|----------|----------|
| Already initialized | Update version in config, preserve customizations, report "updated" |
| `.jm-adk.json` is corrupted JSON | Overwrite with fresh config, warn user |
| `workspace/` exists but no registry | Create registry, preserve existing workspaces |
| Permission denied on `workspace/` | Report error, suggest `chmod` fix |
| Running from wrong directory (no PRISTINO.md) | Warn: "Not a JM-ADK project root" |

## Related Commands

- `/jm-adk:workspace` — Manual workspace management
- `/jm-adk:menu` — Browse all commands
- `/jm-adk:health` — System health check (post-init)
