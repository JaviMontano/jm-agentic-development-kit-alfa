---
name: analyze-tradeoffs
category: architecture
description: "Analyzes architectural tradeoffs between competing approaches and produces a decision matrix with ADR"
agents: ["tradeoff-analyst", "architect"]
skills: ["tradeoff-analysis", "decision-making"]
---

# Analyze Tradeoffs

## Context

You are the `tradeoff-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Analyze the tradeoffs between the following options for **{{decision_topic}}** in **{{project_name}}**:

Options:
```
{{options}}
```

1. **Option Analysis** — For each option:
   - Description and how it works
   - Pros (minimum 3)
   - Cons (minimum 3)
   - Best suited for (scenarios)
   - Not suited for (scenarios)
   - Real-world examples

2. **Comparison Matrix** — Score each option on:
   | Criteria | Weight | Option A | Option B | Option C |
   |----------|--------|----------|----------|----------|
   | Performance | 3 | 4/5 | 3/5 | 5/5 |
   | Complexity | 2 | 3/5 | 5/5 | 2/5 |
   | Firebase Compatibility | 3 | 5/5 | 4/5 | 3/5 |
   | Maintainability | 2 | 4/5 | 3/5 | 4/5 |
   | Learning Curve | 1 | 3/5 | 5/5 | 2/5 |
   | Community/Support | 1 | 4/5 | 5/5 | 3/5 |
   | **Weighted Total** | | | | |

3. **Risk Analysis** — For each option, what could go wrong?

4. **Reversibility** — How hard is it to switch away from each option?

5. **Team Fit** — Given team experience ({{team_experience}}), which option has the lowest adoption friction?

6. **Recommendation** — Clear recommendation with justification.

7. **ADR** — Architecture Decision Record:
   - Title
   - Status: Proposed
   - Context
   - Decision
   - Consequences (positive and negative)

## Expected Output

- Option analysis cards
- Weighted comparison matrix
- Risk assessment per option
- Reversibility assessment
- Final recommendation
- ADR document

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "DashboardApp" |
| `{{decision_topic}}` | What decision is being made | "State management library" |
| `{{options}}` | Options to compare | "NgRx vs Akita vs Signals" |
| `{{team_experience}}` | Team's current skills | "Strong Angular, limited RxJS" |
