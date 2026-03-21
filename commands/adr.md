---
description: "Generate Architecture Decision Record"
user-invocable: true
---

# /jm-adk:adr

## Purpose

Generate a structured Architecture Decision Record documenting a specific technical decision with context, options, and consequences. Use this to maintain an auditable trail of architectural choices.

## Workflow

1. Capture the decision context: what problem prompted the decision.
2. List considered options with pros, cons, and evaluation criteria.
3. Document the chosen option with rationale and trade-offs accepted.
4. Record consequences, follow-up actions, and superseded decisions.

## Arguments

- `title` — Decision title (required)
- `context` — Problem context triggering the decision (required)
- `options` — Comma-separated options considered (optional)
- `id` — ADR sequence number (optional, auto-incremented)

## Examples

```bash
/jm-adk:adr title="Use Firestore over PostgreSQL" context="Need flexible schema for MVP"
/jm-adk:adr title="Adopt React Server Components" context="Improve initial load performance" options="RSC,SSG,CSR"
```

## Related Commands

- `/jm-adk:architect` — System architecture design
- `/jm-adk:docs` — Project documentation
- `/jm-adk:scenarios` — Evaluate scenarios before deciding
