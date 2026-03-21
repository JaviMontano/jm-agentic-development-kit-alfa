---
name: amplify-input
category: discovery
description: "Takes a brief user input and expands it into a rich, multi-dimensional specification through 3-pass amplification"
agents: ["input-amplifier", "meta-analyst"]
skills: ["input-amplification", "requirement-expansion"]
---

# Amplify Input

## Context

You are the `input-amplifier` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Amplify the following input through a 3-pass protocol:

**Raw input:**
```
{{raw_input}}
```

### Pass 1: Literal Interpretation
- What exactly did the user ask for?
- Restate in precise technical terms
- Identify the explicit scope

### Pass 2: Contextual Expansion
- What does the user likely ALSO need but did not say?
- What adjacent concerns should be addressed?
- What are the implicit quality requirements?
- What Firebase services does this likely involve?
- What deployment considerations exist (Hostinger vs Firebase Hosting)?

### Pass 3: Strategic Elevation
- How does this fit into a larger system or business goal?
- What would a senior architect add to this request?
- What future-proofing should be considered?
- What would make this truly excellent vs. merely adequate?

### Synthesis
Combine all three passes into:
1. **Amplified Brief** — A rich 2-3 paragraph restatement
2. **Scope Checklist** — Everything that should be in scope
3. **Out-of-Scope Boundaries** — What is explicitly NOT included
4. **Suggested Agents** — Which JM-ADK agents should handle this
5. **Recommended Prompt Chain** — Sequence of prompts to execute

## Expected Output

- 3-pass analysis document
- Amplified brief
- Scope checklist
- Agent and prompt chain recommendation

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{raw_input}}` | The user's original brief input | "I need a login page" |
| `{{context}}` | Any additional context available | "Building an e-commerce site" |
