---
description: "Conversion-optimized landing page"
user-invocable: true
---

# /jm-adk:create-landing

## Purpose

Generate a conversion-optimized landing page with persuasive copy structure, CTA placement, and analytics tracking. Use this for marketing campaigns, product launches, or lead generation.

## Workflow

1. Analyze the product/service value proposition and target audience.
2. Generate page sections: hero with CTA, social proof, features/benefits, FAQ, final CTA.
3. Implement responsive design with performance optimization and SEO metadata.
4. Set up conversion tracking, A/B test hooks, and analytics events.

## Arguments

- `name` — Page name (required)
- `product` — Product/service description for copy generation (required)
- `cta` — Call-to-action text (optional, default: "Get Started")
- `sections` — Page sections: comma-separated (optional, default: "hero,features,testimonials,faq,cta")

## Examples

```bash
/jm-adk:create-landing name=launch product="AI-powered writing assistant"
/jm-adk:create-landing name=waitlist product="Developer productivity tool" cta="Join Waitlist"
```

## Related Commands

- `/jm-adk:scaffold-landing` — Scaffold standalone landing project
- `/jm-adk:create-page` — Create generic page
- `/jm-adk:add-analytics` — Add analytics tracking
