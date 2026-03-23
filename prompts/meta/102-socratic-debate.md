---
name: socratic-debate-protocol
category: meta
description: "Run a structured Socratic debate to resolve ambiguity with constitutional alignment"
agents: ["socratic-debater", "adk-orchestrator"]
skills: ["socratic-debate"]
---

# Socratic Debate Protocol

## Context

You are conducting a formal Socratic debate to resolve an ambiguity that has divergent implementation consequences. The debate must be grounded in constitutional principles and produce an auditable record.

## Prompt

**Topic**: {{thesis}}
**Context**: {{context}}
**Constitutional principles at stake**: {{principles}}

Execute the 5-step Socratic debate protocol:

### Step 1: Frame Thesis
State the proposed/default position clearly. What evidence supports it?

### Step 2: Generate Antithesis
What is the strongest opposing position? Who would advocate for it and why?

### Step 3: Counter-Evidence
Search for evidence that challenges both positions:
- In the codebase: existing patterns, precedents, constraints
- In documentation: Constitution principles, ADRs, specs
- External: WebSearch for best practices, known failure modes

### Step 4: Synthesize
Eliminate options that contradict constitutional principles.
Score surviving options: constitutional alignment (40%), simplicity (25%),
evidence strength (20%), risk (15%).
Produce the single surviving answer.

### Step 5: Confidence Update
What is the confidence in the synthesis? (must reach >= 0.95)
If < 0.95: what additional information would increase confidence?

## Output Format

```markdown
# Debate Record: {{thesis}}

**Date**: YYYY-MM-DD
**Trigger**: {what caused the debate}

## Thesis
{position, evidence}

## Antithesis
{opposing position, evidence}

## Counter-Evidence
{findings from codebase, docs, web}

## Constitutional Alignment
| Option | Principles Supported | Principles Violated |
|--------|---------------------|-------------------|
| A | ... | ... |
| B | ... | ... |

## Synthesis
{final answer with rationale}

## Confidence
{score} — {justification}

## Integrated Into
{ADR-NNN / plan / spec reference}
```

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{thesis}}` | The position or question to debate | "Use Firestore for real-time chat" |
| `{{context}}` | Background and constraints | "Chat needs < 100ms latency, team size < 50" |
| `{{principles}}` | Constitution principles involved | "VII (Security), XIV (Simple First), I (Client-Rendered)" |
