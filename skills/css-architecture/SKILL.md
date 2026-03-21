---
name: css-architecture
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Designs CSS architectures using modern features: CSS Layers (@layer), @scope,
  custom properties, cascade control, and utility-first frameworks like
  Tailwind v4. Covers naming conventions and scalable CSS organization.
  Trigger: "CSS architecture", "CSS Layers", "@scope", "Tailwind", "custom properties", "CSS methodology"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# CSS Architecture

> "CSS is not just about making things look pretty. It's about creating a system." — Harry Roberts

## TL;DR

Designs scalable CSS architectures using modern features like CSS Layers, @scope, custom properties, and utility-first frameworks (Tailwind v4) with clear naming conventions and cascade management. Use this skill when establishing CSS methodology for a project, migrating to modern CSS, or when CSS specificity wars are slowing development.

## Procedure

### Step 1: Discover
- Audit existing CSS: file count, total size, specificity distribution, unused styles
- Identify CSS methodology in use (BEM, SMACSS, utility-first, none)
- Review build pipeline: preprocessors, PostCSS, CSS modules, CSS-in-JS
- Check browser support requirements for modern CSS features

### Step 2: Analyze
- Choose CSS methodology based on team and project needs:
  - **CSS Layers (@layer)**: explicit cascade control for large projects
  - **Utility-first (Tailwind v4)**: rapid development with design constraints
  - **CSS Modules**: scoped styles for component frameworks
  - **BEM + Custom Properties**: traditional but scalable naming convention
- Design custom property architecture: primitive → semantic → component tokens
- Plan CSS Layers order: reset, base, components, utilities, overrides

### Step 3: Execute
- Define CSS Layer order with `@layer` declarations
- Implement custom property system aligned to design tokens
- Set up `@scope` for component-level style encapsulation
- Configure Tailwind v4 with custom theme using CSS-first config
- Establish naming conventions and document them for the team
- Create utility classes for common patterns not covered by the framework
- Set up PurgeCSS or Tailwind's built-in tree-shaking for production

### Step 4: Validate
- Verify no specificity conflicts between layers
- Confirm custom properties cascade correctly through component hierarchy
- Check that production CSS is optimized (no unused styles shipped)
- Validate CSS works without JavaScript for progressive enhancement

## Quality Criteria

- [ ] CSS Layer order is defined and documented
- [ ] Custom properties follow semantic naming convention
- [ ] Production CSS is tree-shaken with no unused styles
- [ ] Naming convention is documented and consistently applied
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- !important as a fix instead of fixing cascade/specificity issues
- Deeply nested selectors creating high specificity and fragility
- Inline styles for things that should be design system tokens

## Related Skills

- `design-system` — design tokens consumed as CSS custom properties
- `responsive-design` — responsive patterns within CSS architecture
- `css-animation` — animation patterns within the CSS methodology
