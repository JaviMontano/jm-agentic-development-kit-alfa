---
name: validate-css
category: quality
description: "Validates CSS for correctness, unused rules, specificity issues, and optimization opportunities"
agents: ["css-validator", "style-auditor"]
skills: ["css-validation", "css-optimization"]
---

# Validate CSS

## Context

You are the `css-validator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Validate and optimize CSS for **{{project_name}}**:

```css
{{css_code}}
```

1. **Syntax Validation** — W3C CSS Validator checks:
   - Invalid properties
   - Invalid values
   - Vendor prefix necessity
   - Unknown at-rules

2. **Unused CSS** — Identify dead rules:
   - Selectors with no matching HTML elements
   - Percentage of unused CSS
   - Removal candidates

3. **Specificity Analysis** — Identify problematic specificity:
   - Overly specific selectors
   - !important usage count
   - ID selectors in styling (prefer classes)
   - Specificity graph (should trend low to high)

4. **Performance Issues**:
   - Expensive selectors (universal *, deep nesting)
   - Large file size optimization
   - Render-blocking analysis
   - Reflow-triggering properties

5. **Best Practices Check**:
   - BEM or consistent naming convention
   - CSS custom properties for theming
   - Logical properties for RTL support
   - Modern layout (Grid, Flexbox vs floats)
   - Responsive units (rem, em, vw vs px)
   - Mobile-first media queries

6. **Duplication Analysis**:
   - Repeated property values → extract to custom property
   - Repeated patterns → extract to utility class
   - Similar selectors → combine

7. **Optimized CSS** — Provide the cleaned-up version:
   - Remove unused rules
   - Reduce specificity
   - Replace !important
   - Use shorthand properties
   - Organize by component/section

## Expected Output

- Validation error list
- Unused CSS report
- Specificity analysis
- Performance recommendations
- Best practices checklist
- Optimized CSS code
- Before/after size comparison

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "StyleRefactor" |
| `{{css_code}}` | CSS to validate | ".header { color: red; }…" |
