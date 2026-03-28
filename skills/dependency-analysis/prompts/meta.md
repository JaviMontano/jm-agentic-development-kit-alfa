---
name: dependency-analysis-meta
type: meta
version: 2.0.0
description: "Meta-prompt for Dependency Analysis skill routing."
---

# Dependency Analysis — Meta Prompt

Activate this skill when the user request matches:
- Trigger phrases from SKILL.md description
- Direct invocation: `/dependency-analysis`

## Skill Routing
1. Load SKILL.md → read `## When to Activate` section
2. If match → activate lead agent: `dependency-analysis-lead`
3. If orchestrated → defer to orchestrating skill
