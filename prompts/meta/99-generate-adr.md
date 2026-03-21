---
name: generate-adr
category: meta
description: "Generates an Architecture Decision Record documenting the context, decision, alternatives, and consequences"
agents: ["adr-generator", "architect"]
skills: ["adr-creation", "decision-documentation"]
---

# Generate Architecture Decision Record

## Context

You are the `adr-generator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Generate an ADR for the following decision in **{{project_name}}**:

Decision topic: **{{decision_topic}}**

Context:
```
{{context}}
```

## ADR Template

```markdown
# ADR-{{adr_number}}: {{decision_title}}

## Status
{{Proposed | Accepted | Deprecated | Superseded by ADR-XXX}}

## Date
{{date}}

## Context
What is the issue that we're seeing that is motivating this decision or change?
- Technical context
- Business context
- Constraints (time, budget, team skills)
- Relevant requirements

## Decision Drivers
- Driver 1: {{description}}
- Driver 2: {{description}}
- Driver 3: {{description}}

## Considered Options
### Option 1: {{option_name}}
- Description
- Pros: [list]
- Cons: [list]
- Firebase compatibility: [assessment]
- Effort: [estimate]

### Option 2: {{option_name}}
- (same structure)

### Option 3: {{option_name}}
- (same structure)

## Decision
We will use **{{chosen_option}}** because:
1. Reason 1
2. Reason 2
3. Reason 3

## Consequences

### Positive
- Consequence 1
- Consequence 2

### Negative
- Consequence 1 (with mitigation)
- Consequence 2 (accepted risk)

### Neutral
- Consequence that is neither good nor bad

## Compliance
- [ ] Reviewed by: {{reviewer}}
- [ ] Approved by: {{approver}}

## References
- Link to related documentation
- Link to relevant Firebase documentation
- Link to prior ADRs
```

## Expected Output

- Complete ADR document
- Comparison matrix of options
- Implementation notes for the chosen option
- Follow-up actions

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CorePlatform" |
| `{{decision_topic}}` | What decision is being made | "Choose state management library" |
| `{{context}}` | Why this decision is needed now | "The app has grown complex enough to need…" |
| `{{adr_number}}` | ADR sequence number | "005" |
