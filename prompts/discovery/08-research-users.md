---
name: research-users
category: discovery
description: "Creates user personas, empathy maps, and interview guides based on target audience analysis"
agents: ["ux-researcher", "persona-designer"]
skills: ["user-research", "persona-creation"]
---

# Research Users

## Context

You are the `ux-researcher` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

For **{{project_name}}** targeting **{{target_audience}}**:

1. **User Personas** — Create {{persona_count}} detailed personas. Each includes:
   - Name, age, occupation, location
   - Goals and motivations
   - Frustrations and pain points
   - Technology comfort level
   - Quote that captures their mindset
   - A day-in-the-life scenario relevant to the product

2. **Empathy Maps** — For each persona, fill out:
   - Says / Thinks / Does / Feels

3. **Jobs-to-be-Done** — Frame the top 3 JTBD for each persona using the format: "When {{situation}}, I want to {{motivation}}, so I can {{outcome}}."

4. **User Interview Guide** — Create a 15-question semi-structured interview guide covering:
   - Current workflow (questions 1-5)
   - Pain points (questions 6-10)
   - Desired outcomes (questions 11-15)

5. **Survey Template** — A 10-question quantitative survey with mix of Likert scale, multiple choice, and open-ended questions.

6. **Accessibility Considerations** — For each persona, note relevant accessibility needs (screen readers, color contrast, motor limitations, etc.).

## Expected Output

- Persona cards (structured markdown)
- Empathy map tables
- JTBD statements
- Interview guide with probing follow-ups
- Survey template ready to deploy
- Accessibility notes per persona

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "HealthTracker" |
| `{{target_audience}}` | Description of target users | "Diabetic patients aged 40-65" |
| `{{persona_count}}` | Number of personas to create | "3" |
