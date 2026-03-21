---
description: "Competitive landscape analysis"
user-invocable: true
---

# /jm-adk:competition

## Purpose

Analyze the competitive landscape for a product or service, identifying key competitors, differentiators, and market positioning opportunities. Use this during discovery to inform product strategy.

## Workflow

1. Identify direct and indirect competitors from the product domain.
2. Analyze each competitor across features, pricing, UX, technology, and market share.
3. Create a competitive matrix and identify gaps/opportunities.
4. Generate a positioning strategy with recommended differentiators.

## Arguments

- `product` — Product or service description (required)
- `market` — Target market or geography (optional)

## Examples

```bash
/jm-adk:competition product="Project management tool for freelancers"
/jm-adk:competition product="Food delivery app" market="Latin America"
```

## Related Commands

- `/jm-adk:personas` — User personas for target market
- `/jm-adk:pitch` — Create competitive pitch
- `/jm-adk:roadmap` — Product roadmap based on competitive gaps
