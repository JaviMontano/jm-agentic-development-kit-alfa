---
name: create-email-template
category: development
description: "Creates responsive HTML email templates for transactional emails sent via Firebase Cloud Functions"
agents: ["email-developer", "template-developer"]
skills: ["email-templates", "transactional-email"]
---

# Create Email Template

## Context

You are the `email-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create an email template for **{{email_type}}** in **{{project_name}}**:

1. **HTML Email Template** — Compatible with major email clients:
   ```html
   <!DOCTYPE html>
   <html>
   <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <!--[if mso]><style>table{border-collapse:collapse;}</style><![endif]-->
   </head>
   <body style="margin:0; padding:0; background:#f4f4f4;">
     <!-- Table-based layout for email client compatibility -->
   </body>
   </html>
   ```

2. **Design Elements** — Include:
   - Header with logo
   - Main content area
   - Call-to-action button (bulletproof button technique)
   - Footer with unsubscribe link
   - Brand colors and typography

3. **Template Variables** — Handlebars-style placeholders:
   ```
   {{userName}}, {{actionUrl}}, {{expirationDate}}
   ```

4. **Cloud Function** — Send email via Cloud Function:
   ```typescript
   import * as functions from 'firebase-functions';
   import * as nodemailer from 'nodemailer';

   export const send{{EmailType}} = functions.firestore
     .document('{{trigger_collection}}/{docId}')
     .onCreate(async (snap) => {
       // Build email from template
       // Send via SMTP or SendGrid/Mailgun
     });
   ```

5. **Responsive** — Mobile-friendly:
   - Stack columns on small screens
   - Min font-size 14px
   - CTA button full-width on mobile

6. **Testing** — Email testing checklist:
   - Gmail (web, iOS, Android)
   - Outlook (desktop, web)
   - Apple Mail
   - Dark mode rendering

7. **Plain Text Version** — Fallback for non-HTML clients.

## Expected Output

- Complete HTML email template
- Cloud Function to send email
- Plain text version
- Template variable documentation
- Email client compatibility notes
- Testing checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SaaSApp" |
| `{{email_type}}` | Type of email | "welcome", "password-reset", "invoice" |
| `{{trigger_collection}}` | Firestore collection that triggers email | "mail_queue" |
