---
name: competitive-intelligence
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Conducts market research, technology landscape analysis, and build-vs-buy
  evaluations. Maps competitor capabilities, identifies market gaps, and
  provides strategic technology recommendations.
  Trigger: "competitive analysis", "market research", "build vs buy", "technology landscape"
allowed-tools:
  - Read
  - Write
  - Glob
  - Grep
  - Bash
---

# Competitive Intelligence

> "Strategy without tactics is the slowest route to victory. Tactics without strategy is the noise before defeat." — Sun Tzu

## TL;DR

Researches and analyzes the competitive landscape, technology alternatives, and market positioning to inform strategic technology decisions including build-vs-buy. Use this skill when evaluating vendor solutions, positioning a product against competitors, or assessing technology trends for strategic planning.

## Procedure

### Step 1: Discover
- Define the competitive landscape scope (product category, technology domain, market segment)
- Identify direct competitors, indirect alternatives, and emerging disruptors
- Gather public information: features, pricing models, technology stacks, market share

### Step 2: Analyze
- Build a feature comparison matrix across all identified alternatives
- Assess each alternative on: maturity, community, support, pricing, lock-in risk
- Conduct build-vs-buy analysis: TCO over 3 years, customization needs, strategic value
- Identify market gaps and underserved segments

### Step 3: Execute
- Produce a competitive landscape map with positioning quadrants
- Create a detailed build-vs-buy recommendation with TCO breakdown
- Document technology trend analysis with adoption curves
- Write strategic recommendations aligned to business objectives

### Step 4: Validate
- Verify competitor data is current and from reliable sources
- Confirm TCO calculations include hidden costs (training, migration, maintenance)
- Cross-reference findings with industry analyst reports when available
- Review recommendations for vendor bias or sunk-cost influence

## Quality Criteria

- [ ] Minimum 5 competitors or alternatives evaluated
- [ ] Feature comparison matrix uses consistent, measurable criteria
- [ ] Build-vs-buy includes 3-year TCO with assumptions documented
- [ ] Strategic recommendations are tied to specific business objectives
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Comparing only on features while ignoring ecosystem, support, and community
- Build bias: underestimating maintenance cost of custom solutions
- Buy bias: ignoring vendor lock-in and customization limitations

## Related Skills

- `scenario-analysis` — structured evaluation of competitive alternatives
- `trade-off-analysis` — weighted decision matrices for vendor selection
- `sector-intelligence` — industry-specific competitive context
