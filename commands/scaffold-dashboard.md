---
description: "Admin dashboard with Firebase backend"
user-invocable: true
---

# /jm-adk:scaffold-dashboard

## Purpose

Scaffold a complete admin dashboard with authentication, data tables, charts, and Firebase backend. Use this for internal tools, admin panels, or data management interfaces.

## Workflow

1. Generate dashboard layout with sidebar navigation, header, and content area.
2. Implement Firebase Auth with role-based access control and protected routes.
3. Create data table components with Firestore integration, sorting, and filtering.
4. Add chart components, summary cards, and real-time data subscriptions.

## Arguments

- `name` — Project name (optional)
- `framework` — Frontend: `angular` | `react` | `vanilla` (optional, default: vanilla)
- `features` — Features: comma-separated (optional, default: "auth,tables,charts")

## Examples

```bash
/jm-adk:scaffold-dashboard
/jm-adk:scaffold-dashboard name=admin framework=react features="auth,tables,charts,users"
```

## Related Commands

- `/jm-adk:scaffold` — Meta-scaffold with template selection
- `/jm-adk:create-dashboard` — Create dashboard in existing project
- `/jm-adk:create-crud` — Add CRUD operations
