---
name: design-system
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Creates design systems with design tokens, CSS custom properties, component
  libraries, and documentation. Establishes visual consistency and development
  velocity through shared design primitives.
  Trigger: "design tokens", "design system", "component library", "CSS variables", "theme"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Design System

> "A design system is a product serving products." — Nathan Curtis

## TL;DR

Creates comprehensive design systems with design tokens, CSS custom properties, and documented component libraries to establish visual consistency and accelerate development. Use this skill when establishing a new design system, migrating from ad-hoc styles, or when visual inconsistency is slowing down development.

## Procedure

### Step 1: Discover
- Audit existing UI: colors, typography, spacing, shadows, radii in use
- Identify inconsistencies: how many unique font sizes, colors, spacings exist
- Review brand guidelines and existing design files (Figma, Sketch)
- Assess current CSS methodology and component patterns

### Step 2: Analyze
- Define token taxonomy: primitive tokens → semantic tokens → component tokens
- Design scales: type scale (modular/fluid), spacing scale (4px/8px base), color palette
- Identify core components: buttons, inputs, cards, modals, navigation, feedback
- Plan theme support: light/dark modes, brand variants, high contrast

### Step 3: Execute
- Create design tokens as CSS custom properties (or JSON for multi-platform)
- Define color system: primary, secondary, neutral, semantic (success, warning, error)
- Implement typography scale with fluid sizing using clamp()
- Build spacing scale: 4px base unit with consistent multipliers
- Document components with: usage guidelines, props/variants, do/don't examples
- Set up token transformation pipeline (Style Dictionary or similar)

### Step 4: Validate
- Verify tokens cover all visual properties used across the application
- Confirm dark mode works correctly with semantic token abstraction
- Check component documentation includes live examples and accessibility notes
- Validate the system is adoptable: clear naming, easy to find, well-documented

## Quality Criteria

- [ ] Design tokens use semantic naming (--color-text-primary, not --blue-500)
- [ ] Type scale, spacing scale, and color palette are systematic, not arbitrary
- [ ] Components have documented variants, states, and accessibility requirements
- [ ] Theme switching (light/dark) works via token swap without component changes
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Design system as PDF: documented but not implemented as consumable code
- Token explosion: creating a token for every unique value instead of constraining
- Building the system in isolation without consumer feedback

## Related Skills

- `css-architecture` — CSS methodology supporting the design system
- `component-architecture` — component patterns consumed by the design system
- `responsive-design` — responsive tokens and breakpoint system
