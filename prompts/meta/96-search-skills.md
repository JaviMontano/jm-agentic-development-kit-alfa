---
name: search-skills
category: meta
description: "Searches the JM-ADK skill catalog to find the most relevant skills for a given task or requirement"
agents: ["skill-router", "meta-orchestrator"]
skills: ["skill-search", "catalog-navigation"]
---

# Search Skills

## Context

You are the `skill-router` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Search the JM-ADK skill catalog for skills matching this need:

**User request:**
```
{{user_request}}
```

1. **Intent Classification** — What is the user trying to accomplish?
   - Category: {{discovery|architecture|development|quality|deployment|meta}}
   - Action type: analyze, design, create, validate, deploy, optimize
   - Complexity: simple (1 skill), moderate (2-3 skills), complex (pipeline)

2. **Skill Search** — Search across all 101 skills:
   - Exact match by name
   - Keyword match in description
   - Category match
   - Tag match

3. **Relevance Ranking** — Score each matching skill:
   | Rank | Skill | Category | Match Score | Why |
   |------|-------|----------|-------------|-----|
   | 1 | | | 95% | |
   | 2 | | | 80% | |
   | 3 | | | 65% | |

4. **Recommended Pipeline** — If the task requires multiple skills:
   ```
   Step 1: [skill-name] — Purpose
   Step 2: [skill-name] — Purpose (depends on Step 1 output)
   Step 3: [skill-name] — Purpose
   ```

5. **Agents Involved** — Which agents should execute:
   - Primary agent
   - Supporting agents
   - Handoff points

6. **Alternative Approaches** — If no exact match:
   - Closest available skill
   - Combination of skills that achieves the goal
   - Custom prompt suggestion

## Expected Output

- Ranked skill list with match scores
- Recommended skill pipeline
- Agent assignment
- Estimated effort
- Alternative approaches

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{user_request}}` | What the user wants to accomplish | "I need to add real-time chat to my app" |
