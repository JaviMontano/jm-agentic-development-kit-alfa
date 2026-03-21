---
name: configure-domain
category: deployment
description: "Configures custom domain with DNS records, SSL, redirects, and email for Firebase Hosting or Hostinger"
agents: ["domain-engineer", "dns-specialist"]
skills: ["domain-configuration", "dns-management"]
---

# Configure Domain

## Context

You are the `domain-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Configure the domain **{{domain}}** for **{{project_name}}**:

Hosting: {{hosting_provider}}
Registrar: {{registrar}}

1. **DNS Records** — Required records:
   | Type | Name | Value | TTL | Purpose |
   |------|------|-------|-----|---------|
   | A | @ | (hosting IP) | 3600 | Root domain |
   | CNAME | www | (hosting CNAME) | 3600 | WWW subdomain |
   | TXT | @ | firebase-verification | 3600 | Ownership verification |
   | MX | @ | (mail server) | 3600 | Email |

2. **Firebase Hosting Domain Setup**:
   ```bash
   # Add custom domain in Firebase Console
   # Firebase provides TXT and A records
   # Wait for SSL provisioning (can take 24-48h)
   ```

3. **Hostinger Domain Setup**:
   - Point nameservers OR add A/CNAME records
   - Configure in hPanel

4. **Redirects**:
   - www → non-www (or vice versa) — pick one canonical
   - HTTP → HTTPS (force SSL)
   - Old URLs → new URLs (301 redirects)

5. **SSL Certificate**:
   - Firebase: Automatic provisioning
   - Hostinger: Auto-SSL (Let's Encrypt)
   - HSTS configuration
   - Mixed content prevention

6. **Email Configuration** — If using domain email:
   - MX records for email provider
   - SPF record (TXT)
   - DKIM record (TXT)
   - DMARC record (TXT)

7. **Subdomain Strategy**:
   - `www.{{domain}}` → main site
   - `app.{{domain}}` → web app (if separate)
   - `api.{{domain}}` → Cloud Functions (if needed)

8. **Verification**:
   - [ ] Domain resolves to correct server
   - [ ] SSL certificate valid and trusted
   - [ ] WWW redirect working
   - [ ] HTTP → HTTPS redirect working
   - [ ] Email deliverability (if configured)
   - [ ] DNS propagation complete

## Expected Output

- Complete DNS record table
- Step-by-step configuration guide
- SSL verification procedure
- Email DNS records
- Redirect configuration
- Verification checklist
- Troubleshooting guide

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "BusinessSite" |
| `{{domain}}` | Domain name | "example.com" |
| `{{hosting_provider}}` | Where the site is hosted | "firebase" or "hostinger" |
| `{{registrar}}` | Domain registrar | "Namecheap", "GoDaddy", "Hostinger" |
