---
name: setup-ssl
category: deployment
description: "Sets up SSL/TLS certificates with HTTPS enforcement, HSTS, and security headers"
agents: ["ssl-engineer", "security-engineer"]
skills: ["ssl-setup", "https-configuration"]
---

# Setup SSL

## Context

You are the `ssl-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Setup SSL for **{{project_name}}** on **{{hosting_provider}}**:

Domain: {{domain}}

1. **SSL Certificate Provisioning**:

   **Firebase Hosting** — Automatic:
   - SSL auto-provisioned when custom domain is added
   - Managed by Google Trust Services
   - Auto-renewal

   **Hostinger** — Auto-SSL:
   - Enable via hPanel → SSL
   - Let's Encrypt certificate
   - Auto-renewal every 90 days

   **Manual (if needed)**:
   - Certbot / Let's Encrypt CLI
   ```bash
   sudo certbot --apache -d {{domain}} -d www.{{domain}}
   ```

2. **HTTPS Enforcement** — Redirect HTTP to HTTPS:

   **Firebase** (firebase.json):
   ```json
   { "hosting": { "headers": [{ "source": "**", "headers": [{ "key": "Strict-Transport-Security", "value": "max-age=31536000; includeSubDomains" }] }] } }
   ```

   **Hostinger** (.htaccess):
   ```apache
   RewriteEngine On
   RewriteCond %{HTTPS} off
   RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
   ```

3. **Security Headers** — Complete set:
   ```
   Strict-Transport-Security: max-age=31536000; includeSubDomains; preload
   X-Content-Type-Options: nosniff
   X-Frame-Options: DENY
   X-XSS-Protection: 1; mode=block
   Referrer-Policy: strict-origin-when-cross-origin
   Content-Security-Policy: default-src 'self'; ...
   Permissions-Policy: camera=(), microphone=(), geolocation=()
   ```

4. **Mixed Content Prevention**:
   - Audit for HTTP resources in HTTPS pages
   - Update all asset URLs to HTTPS
   - Add `<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">`

5. **SSL Testing** — Verify configuration:
   - SSL Labs test (aim for A+ grade)
   - Check certificate chain
   - Check TLS version (1.2+ only)
   - Check cipher suites

6. **HSTS Preload** — Submit to preload list:
   - Requirements: valid certificate, HTTPS redirect, HSTS header with preload
   - Submit at hstspreload.org

## Expected Output

- SSL provisioning steps
- HTTPS redirect configuration
- Security headers configuration
- Mixed content audit checklist
- SSL test verification guide
- HSTS preload submission guide

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "SecureSite" |
| `{{hosting_provider}}` | Hosting provider | "firebase" or "hostinger" |
| `{{domain}}` | Domain name | "example.com" |
