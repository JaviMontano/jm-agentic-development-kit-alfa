---
name: design-auth
category: architecture
description: "Designs the complete authentication and authorization architecture using Firebase Auth with custom claims and Firestore rules"
agents: ["auth-architect", "security-architect"]
skills: ["auth-design", "firebase-auth"]
---

# Design Auth Architecture

## Context

You are the `auth-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the authentication and authorization system for **{{project_name}}**:

User roles: {{user_roles}}

1. **Auth Providers** — Configure Firebase Auth providers:
   - Email/Password (with email verification)
   - Google Sign-In
   - Other providers: {{additional_providers}}
   - Anonymous auth (if applicable)

2. **Registration Flow** — Step by step:
   - Sign-up form fields
   - Email verification flow
   - Profile completion
   - Role assignment (default role, admin assignment)
   - Welcome email trigger (Cloud Function)

3. **Login Flow** — Including:
   - Multi-provider sign-in
   - Password reset flow
   - Account linking (same email, different providers)
   - Remember me / session persistence
   - MFA setup (if required)

4. **Custom Claims** — Role-based access via custom claims:
   ```typescript
   // Cloud Function to set claims
   admin.auth().setCustomUserClaims(uid, { role: 'admin' });
   ```
   - Claim structure
   - How claims are set/updated
   - How claims propagate to the client

5. **Firestore Security Rules** — Role-based rules:
   ```
   match /collection/{docId} {
     allow read: if request.auth != null;
     allow write: if request.auth.token.role == 'admin';
   }
   ```

6. **Route Guards** — Frontend route protection:
   - Auth guard (logged in?)
   - Role guard (correct role?)
   - Redirect logic

7. **Session Management** — Token refresh, session timeout, concurrent sessions.

8. **Security Considerations** — Brute force protection, account enumeration prevention, secure password requirements.

## Expected Output

- Auth provider configuration
- Registration/login flow diagrams
- Custom claims schema and Cloud Function code
- Complete Firestore security rules
- Route guard implementation code
- Session management configuration

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "HRPortal" |
| `{{user_roles}}` | Roles in the system | "admin, manager, employee, guest" |
| `{{additional_providers}}` | Extra auth providers | "Microsoft, GitHub" |
