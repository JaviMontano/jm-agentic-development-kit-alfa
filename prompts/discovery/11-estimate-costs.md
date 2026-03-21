---
name: estimate-costs
category: discovery
description: "Estimates project costs including Firebase usage, hosting, development effort, and ongoing maintenance"
agents: ["cost-estimator", "financial-analyst"]
skills: ["cost-estimation", "firebase-pricing"]
---

# Estimate Costs

## Context

You are the `cost-estimator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Estimate the total cost for **{{project_name}}**:

Project scope:
```
{{project_scope}}
```

1. **Development Costs** — Break down by phase:
   - Discovery & Design: person-weeks
   - Frontend Development: person-weeks
   - Backend/Firebase Setup: person-weeks
   - Testing & QA: person-weeks
   - Deployment & Launch: person-weeks
   Express in FTE-months. *Note: Do not provide dollar amounts — use FTE-months only.*

2. **Firebase Costs (Monthly)** — Estimate at three tiers:
   | Service | 1K MAU | 10K MAU | 100K MAU |
   |---------|--------|---------|----------|
   | Firestore reads | | | |
   | Firestore writes | | | |
   | Storage | | | |
   | Cloud Functions invocations | | | |
   | Authentication | | | |
   | Hosting bandwidth | | | |

3. **Hosting Costs** — Compare:
   - Hostinger (shared, VPS tiers)
   - Firebase Hosting (free tier vs. Blaze)

4. **Third-Party Services** — Domain, email, CDN, monitoring, analytics, etc.

5. **Ongoing Maintenance** — Monthly FTE-hours for:
   - Bug fixes
   - Security updates
   - Content updates
   - Monitoring & alerting

6. **Cost Optimization Recommendations** — Top 5 ways to reduce costs without compromising quality.

*Disclaimer: All estimates are approximate and subject to actual usage patterns.*

## Expected Output

- Development effort table (FTE-months)
- Firebase cost projection table at 3 tiers
- Hosting comparison table
- Third-party costs list
- Maintenance budget (monthly FTE-hours)
- Cost optimization recommendations

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "EventPlatform" |
| `{{project_scope}}` | Scope description with features | "User registration, event creation…" |
| `{{team_rate}}` | Team composition for effort calc | "2 senior devs, 1 junior dev" |
