---
description: "Extract requirements from conversation/documents"
user-invocable: true
---

# /jm-adk:requirements

## Purpose

Extract, classify, and structure requirements from unstructured input such as conversations, documents, or user stories. Use this to transform vague ideas into actionable requirement specifications.

## Workflow

1. Parse input sources (text, documents, URLs) and extract requirement candidates.
2. Classify each requirement as functional, non-functional, constraint, or assumption.
3. Assign priority (MoSCoW), estimate complexity, and detect dependencies.
4. Generate a structured requirements document with traceability IDs.

## Arguments

- `input` — Source text, document path, or URL (required)
- `format` — Output format: `user-stories` | `shall-statements` | `bdd` (optional, default: user-stories)

## Examples

```bash
/jm-adk:requirements input="Users need to log in with Google and manage their profiles"
/jm-adk:requirements input=./docs/meeting-notes.md format=bdd
```

## Related Commands

- `/jm-adk:discover` — Full discovery pipeline
- `/jm-adk:stakeholders` — Identify who has requirements
- `/jm-adk:estimate` — Estimate effort for extracted requirements
