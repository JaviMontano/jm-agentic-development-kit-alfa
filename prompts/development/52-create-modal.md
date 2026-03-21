---
name: create-modal
category: development
description: "Creates an accessible modal/dialog component with focus trapping, backdrop, animations, and keyboard support"
agents: ["modal-developer", "ui-developer"]
skills: ["modal-component", "a11y-dialog"]
---

# Create Modal

## Context

You are the `modal-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a modal component for **{{project_name}}** using **{{framework}}**:

1. **Modal Component** — Reusable dialog:
   - Header (title + close button)
   - Body (content slot/children)
   - Footer (action buttons slot)
   - Sizes: small (400px), medium (600px), large (800px), fullscreen

2. **Backdrop** — Overlay behavior:
   - Semi-transparent backdrop
   - Click backdrop to close (configurable)
   - Prevent body scroll when open

3. **Animations** — Open/close transitions:
   - Fade in backdrop
   - Scale/slide in modal
   - CSS-only animations (no JS libraries)

4. **Accessibility** — WCAG compliant dialog:
   ```html
   <div role="dialog" aria-modal="true" aria-labelledby="modal-title" aria-describedby="modal-desc">
   ```
   - Focus trap (Tab cycles within modal)
   - Return focus to trigger on close
   - Escape key to close
   - Screen reader announcements

5. **API** — Component interface:
   ```javascript
   // Imperative
   modal.open();
   modal.close();
   // Declarative
   <Modal isOpen={true} onClose={handleClose} title="...">
   ```

6. **Variants** — Pre-built modal types:
   - Confirmation dialog (Are you sure? + Yes/No)
   - Alert dialog (Message + OK)
   - Form modal (form content + Save/Cancel)

7. **Nested Modals** — Support stacking (z-index management).

8. **Responsive** — Full-width on mobile, centered on desktop.

## Expected Output

- Modal component code
- CSS with animations
- Focus trap utility
- Confirmation dialog variant
- Usage examples
- Unit test outline

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "AdminApp" |
| `{{framework}}` | Frontend framework | "react" |
