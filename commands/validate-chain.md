---
description: "Validate the Intent Integrity Chain end-to-end for a feature or the entire project"
user-invocable: true
---

# /jm-adk:validate-chain

## Purpose

Validate the complete governance chain (Intent → RQL → Plan → ADR → Spec → Tests → Code) for a specific feature or the entire project. Produces a traceability matrix, identifies broken links, and generates remediation tasks. Essential for quality gate G1 and G3 compliance.

## Workflow

1. Activate `integrity-validator` agent
2. Scan `.specify/` for all governance artifacts (RQL, plans, ADRs, specs)
3. Scan source code for test files and implementation files
4. Trace each requirement forward (RQL → Code)
5. Trace each code file backward (Code → RQL)
6. Classify gaps by severity (critical, high, medium, low)
7. Produce traceability matrix with chain health percentage
8. Generate remediation tasks for each gap

## Arguments

| Argument | Description | Required | Default |
|----------|-------------|----------|---------|
| `scope` | What to validate | No | `all` |

**Scope values**: `all` (entire project), `feature=NAME` (specific feature)

## Examples

```bash
# Validate entire project
/jm-adk:validate-chain

# Validate specific feature
/jm-adk:validate-chain scope=feature=authentication

# Quick health check
/jm-adk:validate-chain scope=all
```

## Output

```
=== Integrity Chain Report ===
Chain Health: 87% (14/16 complete)

| RQL | Plan | ADR | Spec | Tests | Code | Status |
|-----|------|-----|------|-------|------|--------|
| RQL-001 | ✅ | ✅ | ✅ | ✅ | ✅ | COMPLETE |
| RQL-002 | ✅ | — | — | — | — | CRITICAL |
| — | — | — | — | — | utils.js | HIGH: Orphan |

Critical gaps: 1 | High: 1 | Medium: 0 | Low: 0
Gate status: G2 PASS (>= 80%) | G3 BLOCK (< 95%)
```

## Related Commands

- `/jm-adk:status` — Project status overview
- `/jm-adk:review` — Code review with quality gates
- `/jm-adk:debate` — Resolve ambiguities found during validation
