---
name: prioritize-roadmap
category: discovery
description: "Creates a prioritized product roadmap with phases, milestones, and release plan using RICE or WSJF scoring"
agents: ["product-strategist", "roadmap-planner"]
skills: ["roadmap-planning", "prioritization-frameworks"]
---

# Prioritize Roadmap

## Context

You are the `product-strategist` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a prioritized roadmap for **{{project_name}}** given these features:

```
{{feature_list}}
```

Team capacity: **{{team_capacity}}**
Timeline: **{{timeline}}**

1. **RICE Scoring** — For each feature, estimate:
   - **Reach**: How many users per quarter? (1-10 scale)
   - **Impact**: How much will it move the needle? (0.25, 0.5, 1, 2, 3)
   - **Confidence**: How sure are we? (50%, 80%, 100%)
   - **Effort**: Person-weeks required
   - RICE Score = (Reach × Impact × Confidence) / Effort

2. **Dependencies** — Map feature dependencies. No feature can be scheduled before its dependencies.

3. **Phased Roadmap** — Organize into phases:
   - **Phase 1 (MVP)**: Minimum features to launch. Must be deployable on Hostinger or Firebase Hosting.
   - **Phase 2 (Growth)**: Features that drive adoption.
   - **Phase 3 (Scale)**: Features for scale and retention.
   - **Phase 4 (Optimize)**: Nice-to-haves and polish.

4. **Milestones** — Define measurable milestones with dates and success criteria.

5. **Risk-Adjusted Timeline** — Add 20% buffer for unknowns. Flag high-risk features.

6. **Release Plan** — For each phase, specify the deployment target (Hostinger vs. Firebase Hosting) and what changes in the CI/CD pipeline.

## Expected Output

- RICE scoring table sorted by score
- Dependency graph (text-based)
- Phased roadmap with dates
- Milestone table
- Risk-adjusted Gantt (text-based)
- Release plan per phase

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SaaSPlatform" |
| `{{feature_list}}` | List of proposed features | "User auth, dashboard, reports…" |
| `{{team_capacity}}` | Team size and availability | "2 full-time devs, 1 part-time designer" |
| `{{timeline}}` | Overall timeline | "6 months starting April 2026" |
