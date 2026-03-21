---
name: create-auth-flow
category: development
description: "Creates a complete authentication flow with login, register, password reset, and profile management using Firebase Auth"
agents: ["auth-developer", "frontend-developer"]
skills: ["firebase-auth", "auth-ui"]
---

# Create Auth Flow

## Context

You are the `auth-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create the authentication flow for **{{project_name}}** using **{{framework}}**:

Auth providers: {{auth_providers}}

1. **Auth Service** — `src/services/auth.js`:
   - `signUp(email, password)` — Register with email verification
   - `signIn(email, password)` — Email/password login
   - `signInWithGoogle()` — Google OAuth
   - `signOut()` — Logout and cleanup
   - `resetPassword(email)` — Password reset email
   - `updateProfile(data)` — Update display name and photo
   - `deleteAccount()` — Account deletion with data cleanup
   - `onAuthStateChanged(callback)` — Auth state listener

2. **Login Page** — Complete UI:
   - Email/password form with validation
   - Social login buttons (Google, etc.)
   - "Remember me" checkbox (persistence setting)
   - "Forgot password" link
   - "Create account" link
   - Loading state during auth
   - Error messages (wrong password, user not found, etc.)

3. **Register Page** — Complete UI:
   - Registration form (name, email, password, confirm password)
   - Password strength indicator
   - Terms of service checkbox
   - Email verification sent confirmation
   - Auto-login after verification

4. **Password Reset Page** — Email input and success message.

5. **Profile Page** — Edit profile:
   - Display name, photo URL
   - Email change (requires re-authentication)
   - Password change (requires re-authentication)
   - Connected providers list
   - Delete account (with confirmation)

6. **Auth Guards** — Route protection:
   - Redirect unauthenticated users to login
   - Redirect authenticated users away from login/register
   - Role-based route access

7. **Firestore User Profile** — Create user document on signup:
   ```javascript
   // Cloud Function: auth.user().onCreate()
   // Create /users/{uid} document
   ```

## Expected Output

- Auth service file with all functions
- Login page component
- Register page component
- Password reset page component
- Profile page component
- Auth guard implementation
- Cloud Function for user creation
- CSS styles for all pages

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MemberPortal" |
| `{{framework}}` | Frontend framework | "vanilla" |
| `{{auth_providers}}` | Auth providers to support | "email, google" |
