---
name: sector-brief
category: discovery
description: "Produces a sector-specific briefing covering industry trends, regulations, key players, and technology patterns"
agents: ["sector-analyst", "research-specialist"]
skills: ["industry-analysis", "trend-research"]
---

# Sector Brief

## Context

You are the `sector-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Produce a sector briefing for the **{{sector}}** industry to support the project **{{project_name}}**:

1. **Industry Overview** — Current state of the {{sector}} sector:
   - Market size and growth trends
   - Key players and market shares
   - Value chain overview

2. **Digital Maturity** — Where is this sector in digital transformation?
   - Common technology stacks in use
   - Digital adoption barriers
   - Success stories and case studies

3. **Regulatory Landscape** — Key regulations affecting digital products in {{sector}}:
   - Data protection requirements
   - Industry-specific regulations
   - Compliance certifications needed

4. **User Expectations** — What do users in this sector expect from digital products?
   - UX benchmarks
   - Performance expectations
   - Integration requirements (ERPs, CRMs, etc.)

5. **Technology Patterns** — Common architectural patterns in {{sector}} web apps:
   - Authentication patterns (SSO, MFA, role hierarchies)
   - Data patterns (real-time dashboards, report generation, data export)
   - Integration patterns (APIs, webhooks, file exchanges)

6. **Firebase Fit Assessment** — How well does Firebase serve this sector?
   - Advantages
   - Limitations and workarounds
   - Alternative services to complement Firebase

7. **Competitive Landscape** — Digital products already serving this sector and their gaps.

## Expected Output

- Industry overview (1 page)
- Digital maturity assessment
- Regulatory checklist
- UX benchmark summary
- Technology pattern catalog
- Firebase fit assessment
- Competitive landscape map

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "LogisticsTracker" |
| `{{sector}}` | Industry sector | "Logistics & Supply Chain" |
| `{{region}}` | Geographic focus | "Latin America" |
