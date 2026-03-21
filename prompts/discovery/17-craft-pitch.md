---
name: craft-pitch
category: discovery
description: "Creates a compelling project pitch with value proposition, elevator pitch, and stakeholder-specific talking points"
agents: ["pitch-crafter", "storyteller"]
skills: ["pitch-creation", "value-proposition-design"]
---

# Craft Pitch

## Context

You are the `pitch-crafter` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Craft a compelling pitch for **{{project_name}}**:

```
{{project_summary}}
```

Target audience for the pitch: **{{pitch_audience}}**

1. **Value Proposition Canvas**
   - Customer Jobs: What are they trying to get done?
   - Pains: What annoys them about current solutions?
   - Gains: What would delight them?
   - Pain Relievers: How does our solution address pains?
   - Gain Creators: How does our solution create gains?

2. **Elevator Pitch** (30 seconds)
   - For [target customer]
   - Who [statement of need]
   - The [product name] is a [product category]
   - That [key benefit]
   - Unlike [competitor], our product [key differentiator]

3. **One-Page Pitch** — A structured one-pager with:
   - Problem (2 sentences)
   - Solution (2 sentences)
   - Key Features (3-5 bullets)
   - Technical Approach (Firebase + modern web stack highlights)
   - Timeline & Investment (FTE-months)
   - Expected Impact (metrics)

4. **Stakeholder-Specific Angles** — Tailor the message for:
   - Executive sponsor (ROI focus)
   - Technical lead (architecture focus)
   - End user (UX focus)

5. **Objection Handling** — Top 5 likely objections and prepared responses.

6. **Demo Script** — If a prototype exists, outline a 5-minute demo flow.

## Expected Output

- Value Proposition Canvas
- 30-second elevator pitch (word-for-word)
- One-page pitch document
- Stakeholder talking points
- Objection handling guide
- Demo script outline

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SmartScheduler" |
| `{{project_summary}}` | Brief project description | "An AI-powered scheduling tool…" |
| `{{pitch_audience}}` | Who the pitch is for | "C-suite executives" |
