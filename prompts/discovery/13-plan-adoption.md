---
name: plan-adoption
category: discovery
description: "Creates a user adoption strategy with onboarding flows, engagement tactics, and success metrics"
agents: ["adoption-strategist", "growth-planner"]
skills: ["adoption-planning", "onboarding-design"]
---

# Plan Adoption

## Context

You are the `adoption-strategist` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design an adoption plan for **{{project_name}}** targeting **{{target_users}}**:

1. **Adoption Funnel** — Map the full funnel:
   - Awareness → Interest → Evaluation → Trial → Adoption → Advocacy
   - For each stage, define tactics and channels

2. **Onboarding Flow** — Design a step-by-step onboarding:
   - Welcome screen content
   - Progressive disclosure steps (max 5)
   - First-value moment (what action proves value?)
   - Tooltips and guided tour elements
   - Checklist/progress bar design

3. **Engagement Loops** — Design 3 engagement mechanisms:
   - Notification strategy (Firebase Cloud Messaging)
   - Email drip campaign (triggers and content outlines)
   - In-app engagement prompts

4. **Gamification** — If appropriate, suggest:
   - Progress indicators
   - Achievements / badges
   - Streaks or challenges

5. **Success Metrics** — Define KPIs:
   - Activation rate (% completing onboarding)
   - Day-1, Day-7, Day-30 retention
   - Feature adoption rate per feature
   - NPS target
   - Time-to-first-value

6. **Firebase Analytics Events** — List custom events to track each metric:
   ```javascript
   firebase.analytics().logEvent('event_name', { param: 'value' });
   ```

## Expected Output

- Adoption funnel diagram (text-based)
- Onboarding flow specification
- Engagement loop designs
- KPI dashboard specification
- Firebase Analytics event catalog

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "FitnessApp" |
| `{{target_users}}` | Target user description | "Gym members aged 25-40" |
| `{{launch_date}}` | Planned launch date | "2026-07-01" |
