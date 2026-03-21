---
description: "Design workshop session plan"
user-invocable: true
---

# /jm-adk:workshop

## Purpose

Design a structured workshop session plan with activities, timeboxes, and facilitation guides. Use this to plan discovery workshops, design sprints, or alignment sessions.

## Workflow

1. Define workshop objectives and expected outcomes based on project phase.
2. Design agenda with timeboxed activities, icebreakers, and collaboration exercises.
3. Prepare facilitation materials including templates, prompts, and voting mechanisms.
4. Generate a complete workshop guide with pre-work, logistics, and follow-up actions.

## Arguments

- `topic` — Workshop topic or objective (required)
- `duration` — Workshop duration in hours (optional, default: 4)
- `participants` — Expected number of participants (optional, default: 8)

## Examples

```bash
/jm-adk:workshop topic="Requirements discovery for mobile app"
/jm-adk:workshop topic="Architecture decision session" duration=2 participants=5
```

## Related Commands

- `/jm-adk:discover` — Full discovery pipeline
- `/jm-adk:stakeholders` — Identify workshop participants
- `/jm-adk:personas` — Generate personas for workshop exercises
