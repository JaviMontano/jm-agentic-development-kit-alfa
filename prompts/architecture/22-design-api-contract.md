---
name: design-api-contract
category: architecture
description: "Designs API contracts for Cloud Functions endpoints including request/response schemas, error codes, and versioning"
agents: ["api-designer", "backend-architect"]
skills: ["api-design", "openapi-specification"]
---

# Design API Contract

## Context

You are the `api-designer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the API contract for **{{api_name}}** in project **{{project_name}}**:

API purpose:
```
{{api_purpose}}
```

1. **Endpoint Catalog** — For each endpoint:
   ```
   {{http_method}} /api/v1/{{resource}}
   ```
   - Description
   - Authentication required (yes/no, which Firebase Auth method)
   - Rate limiting
   - Request headers
   - Request body schema (JSON Schema)
   - Response body schema (JSON Schema)
   - Error responses (4xx, 5xx with codes and messages)

2. **Cloud Functions Implementation Pattern** — For each endpoint, specify:
   - `onRequest` (HTTP) vs `onCall` (callable) vs Firestore trigger
   - Input validation rules
   - Authorization check logic
   - Firestore queries needed
   - Response formatting

3. **Error Code System** — Standardized error codes:
   | Code | HTTP Status | Message | When |
   |------|-------------|---------|------|
   | AUTH_001 | 401 | Unauthorized | No valid token |
   | ... | ... | ... | ... |

4. **Versioning Strategy** — How to version the API (URL path, header, etc.).

5. **Rate Limiting** — Limits per endpoint per user.

6. **Example Requests/Responses** — Complete curl examples for each endpoint.

7. **TypeScript Interfaces** — Request and response interfaces for frontend consumption.

## Expected Output

- Endpoint catalog table
- JSON Schema for each request/response
- Error code reference
- Cloud Functions code stubs
- TypeScript interfaces
- curl examples

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "InventoryAPI" |
| `{{api_name}}` | Name of this API group | "Product Management" |
| `{{api_purpose}}` | What the API does | "CRUD operations for products" |
