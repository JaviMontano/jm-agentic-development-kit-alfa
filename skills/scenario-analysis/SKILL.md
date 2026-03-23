---
name: scenario-analysis
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Evaluates multiple solution alternatives using Tree-of-Thought reasoning,
  weighted scoring matrices, and structured comparison frameworks. Produces
  defensible recommendations backed by evidence.
  Trigger: "scenario analysis", "tree of thought", "weighted scoring", "compare options"
allowed-tools:
  - Read
  - Write
  - Glob
  - Grep
  - Bash
---

# Scenario Analysis

> "It is not the strongest of the species that survives, but the most adaptable to change." — Charles Darwin

## TL;DR

Systematically evaluates multiple solution alternatives using Tree-of-Thought reasoning and weighted scoring matrices to produce defensible, evidence-backed recommendations. Use this skill when facing architectural decisions, technology choices, or any situation with multiple viable paths forward.

## Procedure

### Step 1: Discover
- Define the decision to be made and its constraints (budget, timeline, team skills)
- Identify all viable alternatives (minimum 2, ideally 3-5)
- Gather evaluation criteria from stakeholders and technical requirements

### Step 2: Analyze
- Apply Tree-of-Thought: explore each alternative through 3+ reasoning branches
- Define weighted scoring criteria (weight must sum to 100%)
- Score each alternative against criteria using evidence, not gut feeling
- Identify risks, dependencies, and second-order effects for each option

### Step 3: Execute
- Produce a weighted scoring matrix with normalized scores
- Write a narrative analysis for each alternative: strengths, weaknesses, risks
- Document the recommended option with clear justification
- Include a sensitivity analysis: how would the recommendation change if weights shift?

### Step 4: Validate
- Verify scoring is evidence-based, not biased toward a predetermined conclusion
- Confirm all stakeholder criteria are represented in the matrix
- Check that the recommendation addresses the highest-weighted concerns
- Ensure the analysis is reproducible by another evaluator

## Quality Criteria

- [ ] Minimum 3 alternatives evaluated with consistent criteria
- [ ] Weights are justified and sum to 100%
- [ ] Each score has supporting evidence or rationale
- [ ] Sensitivity analysis tests robustness of recommendation
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Analysis paralysis: over-analyzing when the decision is clear
- Anchoring bias: scoring to justify a predetermined choice
- Ignoring non-functional criteria like team capability and maintenance burden

## Related Skills

- `trade-off-analysis` — complementary decision framework using ATAM
- `feasibility-validation` — validates technical viability of chosen scenario
- `competitive-intelligence` — provides market data for technology choices
