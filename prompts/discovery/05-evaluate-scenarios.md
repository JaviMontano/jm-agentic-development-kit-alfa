---
name: evaluate-scenarios
category: discovery
description: "Evaluates business scenarios through impact analysis, scoring, and recommendation with evidence-based reasoning"
agents: ["scenario-evaluator", "business-analyst"]
skills: ["scenario-analysis", "decision-matrix"]
---

# Evaluate Scenarios

## Context

You are the `scenario-evaluator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Evaluate the following scenarios for **{{project_name}}**:

```
{{scenarios}}
```

For each scenario:

1. **Description** — Restate the scenario clearly in one paragraph.
2. **Assumptions** — List every assumption this scenario relies on.
3. **Impact Analysis** — Assess impact across:
   - Revenue / cost
   - User experience
   - Technical complexity
   - Time-to-market
   - Maintenance burden
   - Security posture
4. **Scoring** — Rate each dimension 1-5. Compute a weighted total using weights: Revenue (3), UX (3), Complexity (2), Time (2), Maintenance (1), Security (2).
5. **Firebase Implications** — For each scenario, estimate Firebase usage (reads/writes per day, storage, bandwidth) and cost tier (free/Blaze).
6. **Recommendation** — Rank all scenarios. Recommend the top choice and state the deciding factors.
7. **Contingency** — For the recommended scenario, describe a fallback plan if the key assumption fails.

## Expected Output

- Scenario comparison matrix (table)
- Weighted scoring table
- Firebase cost estimate per scenario
- Final recommendation with justification
- Contingency plan

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MarketplaceApp" |
| `{{scenarios}}` | List of scenarios to evaluate | "Scenario A: Build custom auth…" |
| `{{evaluation_criteria}}` | Additional criteria to consider | "Must support 10K concurrent users" |
