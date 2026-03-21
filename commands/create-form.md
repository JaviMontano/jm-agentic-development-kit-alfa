---
description: "Form with validation and submission"
user-invocable: true
---

# /jm-adk:create-form

## Purpose

Generate a complete form with field validation, error messages, and submission handling. Use this to add data entry forms with proper UX and accessibility.

## Workflow

1. Define form fields with types, validation rules, and labels.
2. Generate form markup with semantic fieldsets, labels, and ARIA attributes.
3. Implement client-side validation with real-time feedback and error messages.
4. Wire up form submission handler with loading state and success/error feedback.

## Arguments

- `name` — Form name (required)
- `fields` — Field definitions: comma-separated (required, e.g., "email:email:required,name:text:required")
- `action` — Submission target: `firestore` | `api` | `email` (optional, default: firestore)

## Examples

```bash
/jm-adk:create-form name=contact fields="name:text:required,email:email:required,message:textarea:required"
/jm-adk:create-form name=registration fields="username:text:required,email:email:required,password:password:required" action=api
```

## Related Commands

- `/jm-adk:create-component` — Create generic component
- `/jm-adk:create-auth` — Create auth forms specifically
- `/jm-adk:create-crud` — Full CRUD with forms
