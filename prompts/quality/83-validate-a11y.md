---
name: validate-a11y
category: quality
description: "Validates accessibility compliance by testing specific components or pages against WCAG criteria with fix suggestions"
agents: ["a11y-validator", "accessibility-engineer"]
skills: ["a11y-validation", "aria-review"]
---

# Validate Accessibility

## Context

You are the `a11y-validator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Validate accessibility for this component/page in **{{project_name}}**:

```html
{{html_code}}
```

```css
{{css_code}}
```

1. **Automated Checks** — axe-core rules:
   - Color contrast violations
   - Missing form labels
   - Missing alt text
   - Invalid ARIA usage
   - Focus management issues
   - Landmark structure

2. **ARIA Validation**:
   - Roles are valid and appropriate
   - Required ARIA properties present
   - aria-labelledby/describedby reference existing IDs
   - No redundant ARIA (e.g., `role="button"` on `<button>`)
   - aria-live regions configured correctly
   - aria-hidden not hiding focusable elements

3. **Keyboard Access Test**:
   - All interactive elements reachable via Tab
   - Correct tab order
   - Custom widgets have proper key bindings
   - Focus visible on all focused elements
   - No focus traps (except modal dialogs)

4. **Screen Reader Audit**:
   - Announce elements correctly
   - Reading order matches visual order
   - Dynamic updates announced appropriately
   - Form instructions read before input

5. **Color & Visual**:
   - Contrast ratios for all text
   - Focus indicator contrast (3:1 against adjacent)
   - Information not conveyed by color alone
   - Readable at 200% zoom

6. **Fixes** — Corrected code:
   ```html
   <!-- Before -->
   <div onclick="submit()">Submit</div>
   <!-- After -->
   <button type="submit">Submit</button>
   ```

## Expected Output

- Automated check results (pass/fail per rule)
- ARIA validation report
- Keyboard access map
- Screen reader test transcript
- Color contrast report
- Fixed code with annotations explaining each change

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "FormComponent" |
| `{{html_code}}` | HTML to validate | "<form>…</form>" |
| `{{css_code}}` | Associated CSS | ".form { … }" |
