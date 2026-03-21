---
name: auth-architecture
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Designs authentication and authorization architectures using Firebase Auth,
  OAuth2/OIDC flows, role-based access control (RBAC), custom claims, and
  session management for web and mobile applications.
  Trigger: "Firebase Auth", "OAuth2", "RBAC", "authentication", "authorization", "custom claims"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Auth Architecture

> "Authentication tells you who they are. Authorization tells you what they can do." — Security Proverb

## TL;DR

Designs authentication and authorization systems using Firebase Auth, OAuth2/OIDC, RBAC with custom claims, and secure session management for web and mobile apps. Use this skill when implementing login flows, designing permission systems, or securing API endpoints.

## Procedure

### Step 1: Discover
- Identify authentication requirements: email/password, social login, SSO, MFA
- Map user roles and permission levels across the application
- Review existing auth implementation for security gaps
- Identify protected resources: routes, API endpoints, Firestore collections

### Step 2: Analyze
- Choose auth provider: Firebase Auth (recommended for GCP stack), Auth0, Cognito
- Design OAuth2 flows: Authorization Code + PKCE for SPAs, Client Credentials for service-to-service
- Plan RBAC hierarchy: roles, permissions, and inheritance
- Evaluate custom claims vs. Firestore-based permission checking
- Design session strategy: token-based (JWT) vs. session cookies

### Step 3: Execute
- Implement Firebase Auth with selected providers (Google, email, phone)
- Set custom claims for role-based access via Cloud Functions
- Configure Firestore security rules aligned to RBAC model
- Implement route guards (frontend) and middleware (backend) for authorization
- Design token refresh flow with silent refresh and expiration handling
- Set up account lifecycle: registration, email verification, password reset, account deletion

### Step 4: Validate
- Verify unauthorized users cannot access protected resources (penetration test)
- Confirm token refresh handles edge cases (expired refresh token, revoked access)
- Check that custom claims propagate correctly after role changes
- Validate Firestore security rules with the Firebase emulator test suite

## Quality Criteria

- [ ] Authentication supports MFA for sensitive operations
- [ ] RBAC model is documented with role-permission matrix
- [ ] Firestore security rules enforce server-side authorization
- [ ] Token refresh and session expiration are handled gracefully
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Client-side only authorization (checking roles in frontend without backend enforcement)
- Storing sensitive data in JWT payload that should remain server-side
- Missing account deletion flow (GDPR right to erasure)

## Related Skills

- `security-architecture` — auth is a subset of overall security architecture
- `api-design` — API endpoint authentication and authorization headers
- `realtime-architecture` — Firestore security rules for real-time data access
