---
description: "Create API contract (OpenAPI/GraphQL)"
user-invocable: true
---

# /jm-adk:design-api

## Purpose

Design and generate API contracts in OpenAPI or GraphQL format with complete endpoint definitions. Use this to establish clear API boundaries before implementation.

## Workflow

1. Analyze requirements to identify API resources, operations, and relationships.
2. Define endpoints with request/response schemas, validation rules, and error codes.
3. Design authentication, pagination, filtering, and versioning strategies.
4. Generate an OpenAPI 3.1 or GraphQL schema document with examples.

## Arguments

- `input` — Requirements or domain model (required)
- `format` — API format: `rest` | `graphql` (optional, default: rest)
- `auth` — Auth strategy: `jwt` | `api-key` | `oauth2` (optional, default: jwt)

## Examples

```bash
/jm-adk:design-api input="User management with roles and permissions"
/jm-adk:design-api input=./docs/spec.md format=graphql
```

## Related Commands

- `/jm-adk:architect` — System architecture design
- `/jm-adk:create-api` — Implement API endpoints
- `/jm-adk:scaffold-api` — Scaffold API project
