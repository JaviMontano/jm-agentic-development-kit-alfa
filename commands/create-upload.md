---
description: "File upload to Firebase Storage"
user-invocable: true
---

# /jm-adk:create-upload

## Purpose

Generate a file upload component with drag-and-drop, progress tracking, and Firebase Storage integration. Use this to add file upload capability to your application.

## Workflow

1. Create upload UI with drag-and-drop zone, file type/size validation, and preview.
2. Implement Firebase Storage upload with progress tracking and pause/resume.
3. Generate thumbnail/preview for images and metadata storage in Firestore.
4. Set up Storage security rules and configure CORS.

## Arguments

- `name` — Component name (optional, default: FileUpload)
- `accept` — Accepted file types: comma-separated MIME types (optional, default: "image/*")
- `max-size` — Maximum file size in MB (optional, default: 10)
- `multiple` — Allow multiple files (optional, default: false)

## Examples

```bash
/jm-adk:create-upload
/jm-adk:create-upload accept="image/*,application/pdf" max-size=25 multiple=true
```

## Related Commands

- `/jm-adk:create-component` — Create generic component
- `/jm-adk:create-form` — Form with file fields
- `/jm-adk:audit-security` — Audit storage security rules
