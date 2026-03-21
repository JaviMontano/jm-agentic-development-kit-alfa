---
name: assess-risks
category: discovery
description: "Identifies, categorizes, scores, and creates mitigation plans for project risks"
agents: ["risk-analyst", "project-manager"]
skills: ["risk-assessment", "mitigation-planning"]
---

# Assess Risks

## Context

You are the `risk-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform a comprehensive risk assessment for **{{project_name}}**:

```
{{project_context}}
```

1. **Risk Identification** — Identify risks across categories:
   - **Technical**: Firebase limits, browser compatibility, API dependencies, performance
   - **Security**: Data breaches, XSS, CSRF, insecure Firestore rules, auth vulnerabilities
   - **Schedule**: Scope creep, resource unavailability, dependency delays
   - **Business**: Market changes, competitor moves, stakeholder changes
   - **Operational**: Hosting downtime, Firebase outages, DNS issues

2. **Risk Scoring** — For each risk:
   - Probability: 1 (Rare) to 5 (Almost Certain)
   - Impact: 1 (Negligible) to 5 (Catastrophic)
   - Risk Score = Probability × Impact
   - Priority: Critical (≥20), High (15-19), Medium (8-14), Low (≤7)

3. **Risk Matrix** — 5×5 heat map (text-based).

4. **Mitigation Plans** — For each Critical and High risk:
   - Prevention strategy
   - Detection mechanism
   - Response plan
   - Owner
   - Contingency

5. **Firebase-Specific Risks** — Deep dive into:
   - Firestore pricing spikes (runaway reads)
   - Security rules misconfiguration
   - Cloud Functions cold starts
   - Vendor lock-in

6. **Risk Register** — Master table with ID, description, category, probability, impact, score, priority, mitigation, owner, status.

## Expected Output

- Risk register table (RISK-001, RISK-002, …)
- 5×5 risk matrix
- Mitigation plans for Critical/High risks
- Firebase-specific risk analysis
- Monitoring checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PatientPortal" |
| `{{project_context}}` | Project description and constraints | "A healthcare portal handling PHI…" |
