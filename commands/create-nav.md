---
description: "Responsive navigation component"
user-invocable: true
---

# /jm-adk:create-nav

## Purpose

Generate a responsive navigation component with mobile hamburger menu, active state tracking, and accessibility. Use this to add or improve site navigation.

## Workflow

1. Analyze site structure and define navigation items with hierarchy.
2. Generate responsive navbar with desktop horizontal and mobile hamburger layouts.
3. Implement active state tracking, dropdown submenus, and keyboard navigation.
4. Add ARIA attributes, focus management, and skip-to-content link.

## Arguments

- `items` — Navigation items: comma-separated (required, e.g., "Home,About,Services,Contact")
- `style` — Nav style: `horizontal` | `sidebar` | `both` (optional, default: horizontal)
- `sticky` — Make navigation sticky on scroll (optional, default: true)

## Examples

```bash
/jm-adk:create-nav items="Home,Products,Pricing,Blog,Contact"
/jm-adk:create-nav items="Dashboard,Users,Settings,Reports" style=sidebar
```

## Related Commands

- `/jm-adk:create-page` — Create pages for nav links
- `/jm-adk:create-component` — Create generic component
- `/jm-adk:add-a11y` — Improve accessibility
