---
name: validate-feasibility
category: discovery
description: "Validates technical, financial, and operational feasibility of a proposed solution against constraints"
agents: ["feasibility-analyst", "architect"]
skills: ["feasibility-study", "constraint-analysis"]
---

# Validate Feasibility

## Context

You are the `feasibility-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Validate the feasibility of the proposed solution for **{{project_name}}**:

```
{{proposed_solution}}
```

Constraints:
```
{{constraints}}
```

Analyze across four dimensions:

1. **Technical Feasibility**
   - Can this be built with Firebase + HTML/CSS/JS + Angular/React?
   - Are there Firebase service limits that could block this? (Firestore document size 1MB, 1 write/sec per document, etc.)
   - Are required third-party APIs available and reliable?
   - What is the team's skill gap (if any)?

2. **Financial Feasibility**
   - Estimate Firebase costs at 100, 1K, 10K, and 100K monthly active users
   - Estimate development effort in person-weeks
   - Hostinger hosting tier required
   - Total cost of ownership over 12 months

3. **Operational Feasibility**
   - Can the team maintain this post-launch?
   - What monitoring and alerting is needed?
   - What is the support burden?

4. **Schedule Feasibility**
   - Can this be delivered by **{{deadline}}**?
   - What is the minimum viable scope that fits the deadline?
   - Critical path activities

5. **Go / No-Go Recommendation** — Provide a clear verdict with conditions.

## Expected Output

- Feasibility assessment document with RAG status (Red/Amber/Green) per dimension
- Firebase cost projection table
- Effort estimate in person-weeks
- Go/No-Go verdict with conditions

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CustomerPortal" |
| `{{proposed_solution}}` | Description of the proposed solution | "A real-time dashboard using…" |
| `{{constraints}}` | Budget, timeline, team, and tech constraints | "Budget: $5K, Team: 2 devs…" |
| `{{deadline}}` | Target delivery date | "2026-06-30" |
