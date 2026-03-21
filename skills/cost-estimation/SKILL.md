---
name: cost-estimation
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Produces effort estimates using multiple techniques: effort inductors,
  T-shirt sizing, story points, and Monte Carlo simulation for probabilistic
  forecasting. Outputs FTE-months with confidence intervals.
  Trigger: "estimation", "cost estimate", "effort", "T-shirt sizing", "Monte Carlo"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Cost Estimation

> "An estimate is not a commitment. A target is not a plan. A plan is not a commitment." — Steve McConnell

## TL;DR

Produces defensible effort estimates using inductors, T-shirt sizing, and Monte Carlo simulation to generate probabilistic forecasts with confidence intervals. Use this skill when scoping projects, preparing proposals, or when stakeholders need FTE-month projections with understood uncertainty.

## Procedure

### Step 1: Discover
- Decompose the scope into estimable work packages (features, components, integrations)
- Identify effort inductors: number of screens, API endpoints, integrations, data entities
- Gather historical velocity data and team composition

### Step 2: Analyze
- Apply T-shirt sizing (XS/S/M/L/XL) as initial calibration with the team
- Convert T-shirt sizes to story point ranges using team-specific reference stories
- Identify estimation risks: unknowns, spikes needed, external dependencies
- Calculate inductors: count × average effort per inductor type

### Step 3: Execute
- Produce a bottom-up estimate by work package with ranges (optimistic/likely/pessimistic)
- Run Monte Carlo simulation (1000+ iterations) using triangular distributions
- Output P50, P80, and P95 confidence intervals in FTE-months
- Document assumptions, exclusions, and estimation basis explicitly

### Step 4: Validate
- Cross-check bottom-up estimates against top-down analogous estimates
- Verify assumptions are documented and stakeholders agree
- Confirm contingency buffer is proportional to estimation confidence
- Review with technical leads for sanity check on complex items

## Quality Criteria

- [ ] Estimates use ranges (min/likely/max), never single-point values
- [ ] Monte Carlo produces P50, P80, P95 confidence intervals
- [ ] All assumptions and exclusions are explicitly documented
- [ ] FTE-months output includes team composition assumptions
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Single-point estimates presented as commitments
- Padding estimates secretly instead of using explicit contingency
- Estimating in hours instead of relative effort for uncertain scope

## Related Skills

- `risk-assessment` — risk-based contingency feeds into estimates
- `feasibility-validation` — validates whether estimates fit constraints
- `product-roadmapping` — estimates enable roadmap feasibility planning
