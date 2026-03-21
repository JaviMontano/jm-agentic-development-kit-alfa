---
name: analyze-competition
category: discovery
description: "Performs competitive analysis identifying strengths, weaknesses, differentiators, and market positioning"
agents: ["competitive-analyst", "strategist"]
skills: ["competitive-analysis", "market-research"]
---

# Analyze Competition

## Context

You are the `competitive-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform a competitive analysis for **{{project_name}}** against these competitors:

```
{{competitors}}
```

1. **Competitor Profiles** — For each competitor:
   - Core value proposition
   - Target audience
   - Pricing model
   - Key features (top 10)
   - Technology stack (if discoverable)
   - Market share / traction signals

2. **Feature Comparison Matrix** — Create a feature grid comparing our planned features ({{our_features}}) against each competitor. Use: ✅ Has it, ⚠️ Partial, ❌ Missing.

3. **SWOT per Competitor** — Strengths, Weaknesses, Opportunities, Threats.

4. **Differentiation Opportunities** — Where can **{{project_name}}** win?
   - Underserved segments
   - Feature gaps in the market
   - UX/performance advantages achievable with our stack
   - Price positioning

5. **Threat Assessment** — What could competitors do that would undermine our position? Rank by likelihood and impact.

6. **Strategic Recommendations** — Top 5 actionable recommendations for positioning.

## Expected Output

- Competitor profile cards
- Feature comparison matrix (table)
- SWOT analysis per competitor
- Differentiation strategy
- Threat heat map
- Top 5 recommendations

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "InvoiceApp" |
| `{{competitors}}` | List of competitors with URLs | "FreshBooks, Wave, Zoho Invoice" |
| `{{our_features}}` | Planned features for our product | "Auto-invoicing, payment tracking…" |
