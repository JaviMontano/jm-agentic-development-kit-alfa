---
name: map-stakeholders
category: discovery
description: "Identifies all stakeholders, maps their influence and interest, and produces a communication plan"
agents: ["stakeholder-analyst", "communication-planner"]
skills: ["stakeholder-mapping", "influence-analysis"]
---

# Map Stakeholders

## Context

You are the `stakeholder-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

For the project **{{project_name}}** in the **{{domain}}** domain:

1. **Identify Stakeholders** — From the following context, extract every person, role, team, or external entity with a stake in this project:
   ```
   {{project_context}}
   ```

2. **Power/Interest Grid** — Classify each stakeholder into one of four quadrants:
   - **High Power / High Interest** → Manage Closely
   - **High Power / Low Interest** → Keep Satisfied
   - **Low Power / High Interest** → Keep Informed
   - **Low Power / Low Interest** → Monitor

3. **RACI Matrix** — For each major project activity (Requirements, Design, Development, Testing, Deployment, Maintenance), assign each stakeholder as Responsible, Accountable, Consulted, or Informed.

4. **Communication Plan** — For each stakeholder group, define:
   - Communication frequency (daily, weekly, bi-weekly, monthly)
   - Preferred channel (email, Slack, meetings, dashboard)
   - Key information needs
   - Escalation path

5. **Risk of Disengagement** — Flag stakeholders who may disengage and suggest mitigation strategies.

## Expected Output

- Stakeholder register table (Name, Role, Organization, Power, Interest, Quadrant)
- RACI matrix in table format
- Communication plan in table format
- Risk mitigation notes

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "E-Commerce Redesign" |
| `{{domain}}` | Business domain | "Retail" |
| `{{project_context}}` | Description of the project, org structure, known players | "The CEO wants a new portal…" |
