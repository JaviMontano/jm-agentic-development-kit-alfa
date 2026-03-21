---
description: "Design authentication architecture"
user-invocable: true
---

# /jm-adk:design-auth

## Purpose

Design a complete authentication and authorization architecture including providers, flows, and security policies. Use this to plan secure user identity management.

## Workflow

1. Identify authentication requirements: providers, MFA, session management, roles.
2. Design auth flows for sign-up, sign-in, password reset, and social providers.
3. Define authorization model (RBAC/ABAC) with roles, permissions, and resource policies.
4. Generate auth architecture document with sequence diagrams and security checklist.

## Arguments

- `input` — Requirements or user stories (required)
- `provider` — Auth provider: `firebase` | `auth0` | `custom` (optional, default: firebase)
- `social` — Social providers: comma-separated (optional, e.g., "google,github")

## Examples

```bash
/jm-adk:design-auth input="Multi-tenant SaaS with team management"
/jm-adk:design-auth input=./docs/spec.md provider=firebase social="google,github"
```

## Related Commands

- `/jm-adk:create-auth` — Implement auth flows
- `/jm-adk:audit-security` — Security audit
- `/jm-adk:architect` — System architecture
