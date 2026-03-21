---
description: "Add page transitions and micro-interactions"
user-invocable: true
---

# /jm-adk:add-animation

## Purpose

Add page transitions, scroll animations, and micro-interactions to enhance user experience. Use this to add polish and visual feedback to your application.

## Workflow

1. Audit current UI for animation opportunities (transitions, hover states, loading states).
2. Implement page transition animations using CSS transitions or View Transitions API.
3. Add scroll-triggered animations for content sections using Intersection Observer.
4. Implement micro-interactions for buttons, forms, and navigation with prefers-reduced-motion support.

## Arguments

- `type` — Animation type: `transitions` | `scroll` | `micro` | `all` (optional, default: all)
- `library` — Animation library: `css-only` | `gsap` | `framer-motion` (optional, default: css-only)

## Examples

```bash
/jm-adk:add-animation
/jm-adk:add-animation type=micro library=css-only
```

## Related Commands

- `/jm-adk:evolve` — General enhancement meta-command
- `/jm-adk:add-a11y` — Ensure prefers-reduced-motion support
- `/jm-adk:audit-perf` — Check animation performance impact
