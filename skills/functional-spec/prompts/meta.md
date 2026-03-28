---
name: functional-spec-meta
type: meta
version: 2.0.0
description: "Meta-prompt for Functional Spec skill routing."
---

# Functional Spec — Meta Prompt

Activate this skill when the user request matches:
- Trigger phrases from SKILL.md description
- Direct invocation: `/functional-spec`

## Skill Routing
1. Load SKILL.md → read `## When to Activate` section
2. If match → activate lead agent: `functional-spec-lead`
3. If orchestrated → defer to orchestrating skill
