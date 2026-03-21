---
name: create-landing
category: development
description: "Creates a high-converting landing page with hero, features, testimonials, CTA, and SEO optimization"
agents: ["landing-developer", "conversion-designer"]
skills: ["landing-page", "conversion-optimization"]
---

# Create Landing Page

## Context

You are the `landing-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a landing page for **{{project_name}}**:

Brand: {{brand_info}}

1. **Hero Section** — Above the fold:
   - Headline (attention-grabbing, max 10 words)
   - Subheadline (value proposition, max 25 words)
   - Primary CTA button
   - Hero image/illustration area
   - Social proof snippet (e.g., "Trusted by 500+ companies")

2. **Features Section** — Key features:
   ```
   {{features}}
   ```
   - Icon + title + description per feature
   - 3-column grid (desktop), single column (mobile)

3. **How It Works** — 3-4 step process:
   - Numbered steps with icons
   - Brief description per step

4. **Social Proof** — Trust elements:
   - Testimonials (card layout)
   - Client logos
   - Statistics (counters)

5. **Pricing** — If applicable:
   - Pricing cards (free, pro, enterprise)
   - Feature comparison table
   - FAQ accordion

6. **CTA Section** — Final conversion push:
   - Compelling headline
   - Email signup form or CTA button
   - Firebase Analytics event on click

7. **Footer** — Links, social media, legal.

8. **Technical Requirements**:
   - Pure HTML/CSS/JS (no framework overhead for landing)
   - Lighthouse score > 95 on all categories
   - Optimized images (WebP, lazy load)
   - SEO meta tags and structured data
   - Open Graph tags for social sharing
   - Deployed to Firebase Hosting or Hostinger

9. **Animations** — Subtle scroll-triggered animations:
   - Intersection Observer for reveal animations
   - CSS transitions (no heavy JS libraries)

## Expected Output

- Complete index.html
- styles.css
- script.js (minimal, for interactions)
- SEO meta tags
- Structured data (JSON-LD)
- Image optimization guidelines
- Firebase Hosting configuration

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "LaunchPage" |
| `{{brand_info}}` | Brand name and colors | "Acme Corp, #2563EB, #10B981" |
| `{{features}}` | Key features to highlight | "Real-time sync, offline mode, team collaboration" |
