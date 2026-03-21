---
name: stakeholder-mapping
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Maps stakeholder influence, interest, and responsibilities using power/interest
  grids, RACI matrices, and tailored communication plans. Ensures the right
  people are engaged at the right level throughout the project lifecycle.
  Trigger: "stakeholder", "RACI", "communication plan"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Stakeholder Mapping

> "The single biggest problem in communication is the illusion that it has taken place." — George Bernard Shaw

## TL;DR

Identifies and classifies project stakeholders by influence and interest, assigns clear responsibilities via RACI matrices, and designs communication plans tailored to each group. Use this skill at project inception, during scope changes, or when stakeholder alignment is breaking down.

## Procedure

### Step 1: Discover
- Identify all individuals and groups affected by or able to affect the project
- Review org charts, project charters, contracts, and existing documentation
- Categorize stakeholders: sponsors, users, regulators, developers, operations

### Step 2: Analyze
- Plot stakeholders on a Power/Interest grid (Manage Closely, Keep Satisfied, Keep Informed, Monitor)
- Assess each stakeholder's attitude: champion, supporter, neutral, critic, blocker
- Identify hidden stakeholders and political dynamics that could derail decisions

### Step 3: Execute
- Build a RACI matrix for key deliverables (Responsible, Accountable, Consulted, Informed)
- Design a communication plan: frequency, channel, format, and content per stakeholder group
- Create an engagement strategy for high-influence/high-interest stakeholders

### Step 4: Validate
- Confirm every deliverable has exactly one Accountable person
- Verify no stakeholder is overloaded with Responsible assignments
- Review communication plan feasibility with project leadership
- Check that blockers and critics have specific engagement strategies

## Quality Criteria

- [ ] All stakeholders identified and classified on Power/Interest grid
- [ ] RACI matrix covers all major deliverables with exactly one A per row
- [ ] Communication plan specifies channel, frequency, and owner for each group
- [ ] Engagement strategies exist for high-risk stakeholders
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- RACI with multiple Accountable entries per deliverable
- Ignoring low-power stakeholders who may become blockers later
- One-size-fits-all communication that overwhelms or under-informs

## Related Skills

- `requirements-engineering` — stakeholders are the source of requirements
- `executive-pitch` — tailored communication for C-level stakeholders
- `change-readiness` — stakeholder engagement during transitions
