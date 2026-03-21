---
description: "Email template"
user-invocable: true
---

# /jm-adk:create-email

## Purpose

Generate responsive HTML email templates compatible with major email clients. Use this to create transactional emails, newsletters, or notification emails.

## Workflow

1. Define email type, content structure, and branding elements.
2. Generate table-based HTML email layout compatible with Outlook, Gmail, and Apple Mail.
3. Implement responsive design with media queries and mobile-first approach.
4. Create email sending function via Cloud Functions with template variables.

## Arguments

- `type` — Email type: `welcome` | `notification` | `receipt` | `newsletter` | `custom` (required)
- `name` — Template name (optional, derived from type)
- `variables` — Template variables: comma-separated (optional, e.g., "userName,orderTotal")

## Examples

```bash
/jm-adk:create-email type=welcome
/jm-adk:create-email type=receipt variables="userName,orderItems,total,orderDate"
```

## Related Commands

- `/jm-adk:create-notification` — Push/in-app notifications
- `/jm-adk:create-auth` — Auth emails (verification, reset)
- `/jm-adk:create-api` — API endpoint for sending
