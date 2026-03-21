---
name: design-workshop
category: discovery
description: "Designs a facilitated workshop agenda with activities, timeboxes, and deliverables for stakeholder alignment"
agents: ["workshop-designer", "facilitator"]
skills: ["workshop-design", "facilitation-planning"]
---

# Design Workshop

## Context

You are the `workshop-designer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design a **{{workshop_type}}** workshop for **{{project_name}}**:

Participants: {{participants}}
Duration: {{duration}}
Format: {{format}} (remote/in-person/hybrid)

1. **Workshop Objectives** — 3-5 clear, measurable outcomes.

2. **Pre-Work** — What participants should prepare before the workshop:
   - Reading materials
   - Data to bring
   - Tools to install (Miro, Figma, etc.)

3. **Agenda** — Detailed timeboxed agenda:
   | Time | Activity | Method | Facilitator Notes | Output |
   |------|----------|--------|-------------------|--------|
   | 0:00 | Icebreaker | ... | ... | ... |

4. **Activity Designs** — For each activity:
   - Instructions (read-aloud script)
   - Materials needed
   - Group size and formation
   - Timebox with warning signals
   - Expected artifact

5. **Decision Framework** — How decisions will be made (dot voting, fist-of-five, Roman voting, etc.)

6. **Post-Workshop** — Deliverables, follow-up actions, and communication plan.

7. **Remote Tooling** — If remote/hybrid:
   - Miro board template structure
   - Breakout room plan
   - Digital voting mechanism

## Expected Output

- Complete workshop agenda with timeboxes
- Activity instruction cards
- Pre-work communication template
- Post-workshop summary template
- Miro board structure (if remote)

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "BrandRedesign" |
| `{{workshop_type}}` | Type of workshop | "Requirements Discovery" |
| `{{participants}}` | Who will attend | "5 stakeholders, 2 developers, 1 designer" |
| `{{duration}}` | Workshop length | "4 hours" |
| `{{format}}` | Delivery format | "remote" |
