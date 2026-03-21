---
name: design-a11y
category: architecture
description: "Designs an accessibility-first architecture ensuring WCAG 2.1 AA compliance across all components and interactions"
agents: ["a11y-architect", "ux-designer"]
skills: ["accessibility-design", "wcag-compliance"]
---

# Design Accessibility Architecture

## Context

You are the `a11y-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the accessibility architecture for **{{project_name}}** targeting **{{wcag_level}}**:

1. **Semantic HTML Plan** — For each page, define:
   - Landmark regions (header, nav, main, footer, aside)
   - Heading hierarchy (h1-h6 outline)
   - Document structure

2. **ARIA Strategy** — Define ARIA usage patterns:
   - Roles for custom components
   - aria-live regions for dynamic content (Firestore real-time updates)
   - aria-expanded, aria-controls for interactive elements
   - aria-describedby for form validation errors

3. **Keyboard Navigation** — For each interactive component:
   | Component | Tab Order | Key Bindings | Focus Management |
   |-----------|-----------|-------------|-----------------|
   | Modal | Trap focus | Escape to close | Return focus on close |
   | Dropdown | Tab to trigger | Arrow keys, Enter, Escape | Focus first item |

4. **Color & Contrast** — Design constraints:
   - Minimum contrast ratios (4.5:1 text, 3:1 large text, 3:1 UI elements)
   - Color-blind safe palette
   - Focus indicator design (visible, high contrast)

5. **Form Accessibility** — Standard patterns:
   - Labels associated with inputs (for/id or wrapping)
   - Error message association (aria-describedby)
   - Required field indication (aria-required + visual)
   - Inline validation timing

6. **Dynamic Content** — How to handle:
   - Firestore real-time updates (aria-live polite)
   - Loading states (aria-busy)
   - Toast notifications (role="alert")
   - Route changes (focus management, page title updates)

7. **Testing Plan** — Accessibility testing tools and procedures:
   - Automated: axe-core, Lighthouse
   - Manual: keyboard-only testing, screen reader testing
   - Screen readers to test: VoiceOver (Mac), NVDA (Windows), TalkBack (Android)

## Expected Output

- Semantic HTML templates per page
- ARIA pattern library
- Keyboard navigation matrix
- Color/contrast specification
- Form accessibility patterns
- Dynamic content handling patterns
- Testing checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "GovPortal" |
| `{{wcag_level}}` | Target WCAG compliance level | "WCAG 2.1 AA" |
