---
description: "Rollback to previous deployment"
user-invocable: true
---

# /jm-adk:rollback

## Purpose

Rollback the current deployment to a previous version when issues are detected in production. Use this for quick recovery from failed deployments.

## Workflow

1. List available deployment versions with timestamps and release notes.
2. Select the target version for rollback (default: previous version).
3. Execute rollback by redeploying the selected version artifacts.
4. Verify rollback success and notify relevant stakeholders.

## Arguments

- `version` — Target version to rollback to (optional, default: previous)
- `target` — Hosting target: `hostinger` | `firebase` (optional, uses config)

## Examples

```bash
/jm-adk:rollback
/jm-adk:rollback version=v1.2.0
```

## Related Commands

- `/jm-adk:deploy` — Deploy new version
- `/jm-adk:status` — Check deployment status
- `/jm-adk:changelog` — View deployment history
