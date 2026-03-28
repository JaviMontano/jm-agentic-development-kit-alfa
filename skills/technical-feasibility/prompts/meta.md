---
name: technical-feasibility-meta
type: meta
version: 2.0.0
description: "Meta-prompt for Technical Feasibility skill routing."
---

# Technical Feasibility — Meta Prompt

Activate this skill when the user request matches:
- Trigger phrases from SKILL.md description
- Direct invocation: `/technical-feasibility`

## Skill Routing
1. Load SKILL.md → read `## When to Activate` section
2. If match → activate lead agent: `technical-feasibility-lead`
3. If orchestrated → defer to orchestrating skill
