---
name: discovery-orchestration
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Orchestrates the discovery pipeline by sequencing skills, enforcing quality
  gates, and tracking deliverable completion. Manages the flow from initial
  input through analysis to validated output.
  Trigger: "discovery pipeline", "orchestrate", "gate enforcement", "deliverable tracking"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Discovery Orchestration

> "Orchestration is the art of making many instruments sound like one voice." — Leopold Stokowski

## TL;DR

Manages the end-to-end discovery pipeline by sequencing skill execution, enforcing quality gates between phases, and tracking deliverable completion. Use this skill when running a full discovery engagement, coordinating multiple analysis skills, or ensuring nothing falls through the cracks.

## Procedure

### Step 1: Discover
- Identify the discovery scope: full engagement or focused analysis
- Determine which skills are needed based on project type and objectives
- Assess available inputs: existing documentation, stakeholder access, codebase
- Check for existing discovery artifacts that can be reused or updated

### Step 2: Analyze
- Sequence skills based on dependencies (requirements before architecture, stakeholders before communication)
- Define quality gates between phases with explicit pass/fail criteria
- Identify parallel execution opportunities (skills that don't depend on each other)
- Estimate effort per skill and total discovery timeline

### Step 3: Execute
- Execute skills in dependency order, passing outputs as inputs to downstream skills
- Enforce quality gates: verify deliverable completeness before proceeding
- Track deliverable status: not started, in progress, complete, validated
- Produce a discovery dashboard showing progress, blockers, and next steps
- Aggregate findings into a unified discovery report

### Step 4: Validate
- Verify all required deliverables are complete and validated
- Confirm quality gates were enforced (no shortcuts taken)
- Check cross-references between deliverables for consistency
- Review the complete discovery package with stakeholders

## Quality Criteria

- [ ] Skill sequence respects dependency graph
- [ ] Quality gates have explicit, measurable criteria
- [ ] All deliverables are tracked with status and owner
- [ ] Cross-deliverable consistency is verified
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Skipping quality gates under time pressure
- Running all skills sequentially when parallel execution is possible
- Discovery without a defined end state or exit criteria

## Related Skills

- `input-analysis` — amplifies initial input before pipeline processing
- `requirements-engineering` — key deliverable in the discovery pipeline
- `system-architecture` — downstream consumer of discovery outputs
