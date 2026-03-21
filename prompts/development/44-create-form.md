---
name: create-form
category: development
description: "Creates a complete form with validation, error messages, Firestore submission, and accessibility"
agents: ["form-developer", "frontend-developer"]
skills: ["form-creation", "validation-logic"]
---

# Create Form

## Context

You are the `form-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create the **{{form_name}}** form for **{{project_name}}**:

Fields:
```
{{form_fields}}
```

1. **Form HTML** — Semantic form markup:
   - Labels associated with inputs (for/id)
   - Input types matching data (email, tel, url, number, date, etc.)
   - Required/optional indicators
   - Placeholder text (as hints, not labels)
   - Fieldsets and legends for grouping

2. **Validation** — Client-side validation:
   ```javascript
   const validationRules = {
     email: { required: true, pattern: /^[^\s@]+@[^\s@]+\.[^\s@]+$/, message: 'Valid email required' },
     // ... for each field
   };
   ```
   - Required fields
   - Format validation (regex)
   - Length constraints (min/max)
   - Custom validation rules
   - Cross-field validation
   - Real-time validation (on blur) vs submit-time

3. **Error Display** — User-friendly errors:
   - Inline errors below each field
   - Error summary at form top
   - aria-describedby linking errors to fields
   - aria-invalid on errored fields
   - Focus first errored field on submit

4. **Firestore Submission** — Save to Firestore:
   ```javascript
   import { addDoc, collection } from 'firebase/firestore';
   const handleSubmit = async (formData) => {
     // Sanitize, validate, save
   };
   ```
   - Loading state during submission
   - Success feedback (toast/redirect)
   - Error handling (network, permission, validation)
   - Duplicate prevention (disable button)

5. **Accessibility** — Complete a11y:
   - Screen reader experience walkthrough
   - Keyboard-only submission flow
   - Error announcement via aria-live

6. **Responsive Layout** — Single column on mobile, multi-column on desktop.

## Expected Output

- Complete form HTML/JSX
- CSS styles
- Validation logic
- Firestore submission code
- Error handling
- Success/loading states

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ContactApp" |
| `{{form_name}}` | Name of the form | "ContactForm" |
| `{{form_fields}}` | Field definitions | "name (text, required), email (email, required), message (textarea, required, max 500)" |
| `{{firestore_collection}}` | Target Firestore collection | "contacts" |
