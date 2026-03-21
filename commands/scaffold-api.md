---
description: "Cloud Functions REST API"
user-invocable: true
---

# /jm-adk:scaffold-api

## Purpose

Scaffold a Cloud Functions-based REST API with routing, middleware, and Firestore integration. Use this to build serverless backend APIs on Firebase infrastructure.

## Workflow

1. Initialize Firebase Functions project with TypeScript and Express/Hono router.
2. Set up middleware stack: CORS, auth validation, rate limiting, error handling.
3. Create base CRUD endpoints with Firestore data access layer.
4. Configure local emulator, testing setup, and deployment pipeline.

## Arguments

- `name` — API project name (optional)
- `framework` — API framework: `express` | `hono` (optional, default: hono)
- `auth` — Auth strategy: `firebase` | `api-key` | `both` (optional, default: firebase)

## Examples

```bash
/jm-adk:scaffold-api
/jm-adk:scaffold-api name=api framework=hono auth=firebase
```

## Related Commands

- `/jm-adk:design-api` — Design API contract first
- `/jm-adk:create-api` — Add individual endpoints
- `/jm-adk:deploy-firebase` — Deploy functions
