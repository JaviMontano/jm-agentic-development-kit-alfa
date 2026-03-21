---
name: generate-docs
category: quality
description: "Generates project documentation including API docs, component docs, setup guides, and architecture overview"
agents: ["docs-generator", "technical-writer"]
skills: ["documentation", "api-docs"]
---

# Generate Documentation

## Context

You are the `docs-generator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Generate documentation for **{{project_name}}**:

Documentation type: **{{doc_type}}**

Source material:
```
{{source_material}}
```

1. **API Documentation** — For each function/endpoint:
   ```
   ### functionName(param1, param2)
   Description of what it does.

   **Parameters:**
   | Name | Type | Required | Description |
   |------|------|----------|-------------|

   **Returns:** `Promise<ReturnType>`

   **Throws:** `ErrorType` when condition

   **Example:**
   ```javascript
   const result = await functionName('value');
   ```
   ```

2. **Component Documentation** — For each component:
   - Description and purpose
   - Props/Inputs table
   - Events/Outputs table
   - Slots/Content projection
   - Usage examples (3+ scenarios)
   - Accessibility notes

3. **Setup Guide** — Getting started:
   - Prerequisites
   - Installation steps
   - Environment configuration
   - Firebase project setup
   - Running locally (with emulators)
   - Deployment

4. **Architecture Overview** — System documentation:
   - Architecture diagram (Mermaid)
   - Technology stack rationale
   - Folder structure explanation
   - Data flow description
   - Firebase services used

5. **Contributing Guide** — For team members:
   - Code style and conventions
   - Branch naming convention
   - Commit message format
   - PR review process
   - Testing requirements

6. **Troubleshooting** — Common issues:
   | Problem | Cause | Solution |
   |---------|-------|----------|

## Expected Output

- Documentation files in requested format
- API reference
- Component catalog
- Setup guide
- Architecture document
- Contributing guide
- Troubleshooting guide

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PlatformSDK" |
| `{{doc_type}}` | Type of documentation | "api", "components", "setup", "architecture" |
| `{{source_material}}` | Code or specs to document | "export function createUser(data) {…}" |
