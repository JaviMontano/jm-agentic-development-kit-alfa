---
description: "Login/register/reset password flow"
user-invocable: true
---

# /jm-adk:create-auth

## Purpose

Generate a complete authentication flow including login, registration, password reset, and optional social sign-in. Use this to add user authentication to your application.

## Workflow

1. Configure Firebase Auth providers (email/password, Google, GitHub, etc.).
2. Generate auth UI pages: login, register, forgot password, email verification.
3. Implement auth state management with route guards and user context.
4. Create user profile initialization on first sign-in and security rules.

## Arguments

- `providers` — Auth providers: comma-separated (optional, default: "email,google")
- `features` — Features: comma-separated (optional, default: "login,register,reset,profile")
- `style` — UI style: `modal` | `page` | `inline` (optional, default: page)

## Examples

```bash
/jm-adk:create-auth
/jm-adk:create-auth providers="email,google,github" features="login,register,reset,profile"
```

## Related Commands

- `/jm-adk:design-auth` — Design auth architecture first
- `/jm-adk:create-form` — Create custom auth forms
- `/jm-adk:audit-security` — Audit auth security
