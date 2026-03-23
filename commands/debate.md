---
description: "Trigger a formal Socratic debate to resolve ambiguities, trade-offs, or low-confidence decisions"
user-invocable: true
---

# /jm-adk:debate

## Purpose

Trigger a structured Socratic debate when facing ambiguity, conflicting trade-offs, or decisions where confidence is below 0.95. Activates the `socratic-debater` agent to run a thesis-antithesis-synthesis cycle grounded in constitutional principles. Records the outcome for auditability.

## Workflow

1. Parse user's topic and classify the ambiguity type
2. Activate `socratic-debater` agent
3. Frame thesis (default/proposed position)
4. Generate antithesis (strongest opposing position)
5. Search for counter-evidence (codebase, docs, WebSearch)
6. Eliminate options by contradiction against Constitution principles
7. Produce synthesis with confidence score
8. Record debate in `.specify/debates/debate-YYYY-MM-DD-topic.md`
9. Link result to relevant ADR, plan, or spec

## Arguments

| Argument | Description | Required | Default |
|----------|-------------|----------|---------|
| `topic` | The ambiguity or question to debate | Yes | — |
| `scope` | Type of debate | No | `general` |

**Scope values**: `architecture`, `requirements`, `trade-off`, `security`, `general`

## Examples

```bash
# Architecture trade-off
/jm-adk:debate topic="Firestore vs Realtime Database for real-time chat" scope=architecture

# Requirements ambiguity
/jm-adk:debate topic="Should the cotizador support offline calculations?"

# Security decision
/jm-adk:debate topic="Strip vs escape vs allowlist for admin rich text fields" scope=security
```

## Related Commands

- `/jm-adk:analyze` — Full analysis pipeline (may trigger debates internally)
- `/jm-adk:scenarios` — Multi-scenario comparison (structured alternative)
- `/jm-adk:adr` — Create ADR from debate outcome
- `/jm-adk:validate-chain` — Verify debate results propagated to chain
