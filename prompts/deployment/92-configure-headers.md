---
name: configure-headers
category: deployment
description: "Configures HTTP response headers for security, caching, and performance on Firebase Hosting or Hostinger"
agents: ["headers-engineer", "security-engineer"]
skills: ["http-headers", "security-headers"]
---

# Configure HTTP Headers

## Context

You are the `headers-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Configure HTTP headers for **{{project_name}}** on **{{hosting_provider}}**:

1. **Security Headers**:
   | Header | Value | Purpose |
   |--------|-------|---------|
   | Strict-Transport-Security | max-age=31536000; includeSubDomains | Force HTTPS |
   | X-Content-Type-Options | nosniff | Prevent MIME sniffing |
   | X-Frame-Options | DENY | Prevent clickjacking |
   | Referrer-Policy | strict-origin-when-cross-origin | Control referrer info |
   | Permissions-Policy | camera=(), microphone=(), geolocation=() | Restrict APIs |
   | Content-Security-Policy | (detailed below) | XSS prevention |

2. **Content Security Policy** — Detailed CSP:
   ```
   Content-Security-Policy:
     default-src 'self';
     script-src 'self' https://apis.google.com https://www.gstatic.com;
     style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
     img-src 'self' data: https://firebasestorage.googleapis.com;
     font-src 'self' https://fonts.gstatic.com;
     connect-src 'self' https://*.firebaseio.com https://*.googleapis.com;
     frame-src https://accounts.google.com;
   ```
   - Firebase SDK domains whitelisted
   - Google Auth domains whitelisted
   - Report-URI for CSP violations

3. **Caching Headers** — Per resource type:
   | Resource | Cache-Control | Rationale |
   |----------|--------------|-----------|
   | HTML | no-cache | Always fresh |
   | JS/CSS (hashed) | public, max-age=31536000, immutable | Long cache, hash busts |
   | Images | public, max-age=86400 | 1 day cache |
   | Fonts | public, max-age=31536000 | Long cache |
   | API responses | no-store | Never cache |

4. **Firebase Hosting Configuration**:
   ```json
   {
     "hosting": {
       "headers": [
         { "source": "**/*.@(js|css)", "headers": [...] },
         { "source": "**/*.@(jpg|jpeg|png|gif|webp|svg)", "headers": [...] },
         { "source": "**", "headers": [...] }
       ]
     }
   }
   ```

5. **Hostinger Configuration** — Via .htaccess.

6. **CORS Headers** — If API access needed:
   ```
   Access-Control-Allow-Origin: https://{{domain}}
   Access-Control-Allow-Methods: GET, POST, PUT, DELETE
   Access-Control-Allow-Headers: Content-Type, Authorization
   ```

7. **Verification** — Check headers are applied:
   ```bash
   curl -I https://{{domain}}
   ```

## Expected Output

- Complete header configuration (Firebase or Hostinger format)
- CSP policy tailored to Firebase stack
- Caching strategy per resource type
- CORS configuration
- Verification commands
- Security headers test report

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SecureApp" |
| `{{hosting_provider}}` | Hosting provider | "firebase" or "hostinger" |
| `{{domain}}` | Domain name | "app.example.com" |
