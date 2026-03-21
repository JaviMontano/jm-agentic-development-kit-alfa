---
name: design-tokens
category: architecture
description: "Creates a design token system with color, typography, spacing, and elevation tokens as CSS custom properties"
agents: ["design-system-architect", "ui-designer"]
skills: ["design-tokens", "css-custom-properties"]
---

# Design Tokens

## Context

You are the `design-system-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a design token system for **{{project_name}}** with brand colors **{{brand_colors}}**:

1. **Color Tokens**
   ```css
   :root {
     /* Brand */
     --color-primary-50: ;  /* lightest */
     --color-primary-500: ; /* base */
     --color-primary-900: ; /* darkest */
     /* Generate full scale: 50, 100, 200, 300, 400, 500, 600, 700, 800, 900 */
     /* Semantic */
     --color-success: ;
     --color-warning: ;
     --color-error: ;
     --color-info: ;
     /* Surface */
     --color-bg-primary: ;
     --color-bg-secondary: ;
     --color-text-primary: ;
     --color-text-secondary: ;
   }
   ```

2. **Typography Tokens**
   ```css
   :root {
     --font-family-sans: ;
     --font-family-mono: ;
     --fs-xs: ; --fs-sm: ; --fs-base: ; --fs-lg: ; --fs-xl: ;
     --fw-regular: 400; --fw-medium: 500; --fw-bold: 700;
     --lh-tight: 1.25; --lh-normal: 1.5; --lh-relaxed: 1.75;
   }
   ```

3. **Spacing Tokens** — Based on a {{spacing_base}}px base:
   ```css
   :root {
     --space-1: 4px; --space-2: 8px; /* ... */ --space-16: 64px;
   }
   ```

4. **Border & Radius Tokens**
5. **Shadow/Elevation Tokens** — 5 levels
6. **Motion Tokens** — Duration and easing curves
7. **Z-Index Scale** — Systematic layering

8. **Dark Mode Tokens** — Override surface and text colors:
   ```css
   [data-theme="dark"] { /* overrides */ }
   ```

9. **Token Documentation** — Usage guidelines for each token category.

## Expected Output

- Complete CSS custom properties file
- Dark mode overrides
- Token usage guide
- Figma-compatible token structure (JSON)

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "BrandApp" |
| `{{brand_colors}}` | Primary and secondary brand colors | "#2563EB, #10B981" |
| `{{spacing_base}}` | Base spacing unit in px | "4" |
