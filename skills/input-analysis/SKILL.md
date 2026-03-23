---
name: input-analysis
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Performs 3-pass input amplification: typo correction, intent disambiguation,
  and semantic enrichment to extract maximum value from ambiguous or incomplete
  user inputs before routing to specialized skills.
  Trigger: "clarify input", "what did you mean", "input analysis", "disambiguate"
allowed-tools:
  - Read
  - Write
  - Glob
  - Grep
  - Bash
---

# Input Analysis

> "The most dangerous phrase in the language is, 'We've always done it this way.'" — Grace Hopper

## TL;DR

Applies a 3-pass protocol to transform raw user input into amplified, unambiguous instructions: (1) correct typos and syntax, (2) disambiguate intent, (3) enrich with contextual knowledge. Use this skill as a pre-processor before routing to specialized skills, or when user input is ambiguous.

## Procedure

### Step 1: Discover
- Receive raw user input and identify the working context (project, plugin, brand)
- Check for explicit skill/command prefixes that indicate routing
- Gather contextual signals: current directory, recent conversation, active project

### Step 2: Analyze
- **Pass 1 — Surface Correction**: Fix typos, expand abbreviations, normalize terminology
- **Pass 2 — Intent Disambiguation**: Identify the core action requested, resolve ambiguity between possible interpretations, ask clarifying questions if confidence < 80%
- **Pass 3 — Semantic Enrichment**: Infer implicit requirements, add relevant context from project state, identify the optimal skill(s) to handle the request

### Step 3: Execute
- Produce an amplified input with explicit intent, scope, and constraints
- Route to the appropriate skill(s) with enriched context
- If ambiguous, present 2-3 interpretations ranked by confidence for user selection
- Document the amplification reasoning for transparency

### Step 4: Validate
- Verify the amplified input preserves the user's original intent
- Confirm no assumptions were added that contradict explicit user statements
- Check that routing targets the correct skill based on amplified understanding
- Ensure the user has opportunity to correct misinterpretations

## Quality Criteria

- [ ] Original intent is preserved after amplification
- [ ] Ambiguities are resolved or explicitly flagged for user decision
- [ ] Context from project state enriches the interpretation
- [ ] Routing recommendation includes confidence level
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Over-amplification: adding scope the user never intended
- Silent assumption: disambiguating without telling the user which interpretation was chosen
- Ignoring explicit instructions in favor of inferred "better" intent

## Related Skills

- `discovery-orchestration` — routes amplified inputs through discovery pipeline
- `requirements-engineering` — formalizes amplified inputs into specifications
- `scenario-analysis` — evaluates alternative interpretations of ambiguous inputs
