---
description: "Accessible modal/dialog"
user-invocable: true
---

# /jm-adk:create-modal

## Purpose

Generate an accessible modal/dialog component with focus trapping, keyboard handling, and backdrop. Use this to add overlay dialogs for confirmations, forms, or detailed views.

## Workflow

1. Create modal component with open/close API and customizable content slot.
2. Implement focus trap, Escape key handling, and click-outside-to-close.
3. Add ARIA attributes (role=dialog, aria-modal, aria-labelledby, aria-describedby).
4. Handle scroll lock on body and animated enter/exit transitions.

## Arguments

- `name` — Modal component name (optional, default: Modal)
- `size` — Modal size: `sm` | `md` | `lg` | `full` (optional, default: md)
- `type` — Modal type: `dialog` | `confirm` | `form` | `alert` (optional, default: dialog)

## Examples

```bash
/jm-adk:create-modal
/jm-adk:create-modal name=ConfirmDialog type=confirm size=sm
```

## Related Commands

- `/jm-adk:create-component` — Create generic component
- `/jm-adk:create-form` — Create form for modal content
- `/jm-adk:add-a11y` — Improve accessibility
