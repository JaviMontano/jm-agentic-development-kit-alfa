---
description: "Cloud Function HTTP endpoint"
user-invocable: true
---

# /jm-adk:create-api

## Purpose

Generate a Cloud Function HTTP endpoint with request validation, error handling, and Firestore integration. Use this to add individual API endpoints to your backend.

## Workflow

1. Define endpoint method, path, request/response schema, and auth requirements.
2. Generate Cloud Function with input validation and typed request/response.
3. Implement Firestore data access with error handling and logging.
4. Create test file and update function exports.

## Arguments

- `name` — Endpoint name (required)
- `method` — HTTP method: `GET` | `POST` | `PUT` | `DELETE` (required)
- `path` — URL path (optional, derived from name)
- `auth` — Require authentication (optional, default: true)

## Examples

```bash
/jm-adk:create-api name=getUsers method=GET
/jm-adk:create-api name=createOrder method=POST path="/orders" auth=true
```

## Related Commands

- `/jm-adk:design-api` — Design API contract first
- `/jm-adk:scaffold-api` — Scaffold full API project
- `/jm-adk:create-crud` — Generate full CRUD endpoints
