---
description: "Configure custom domain + DNS"
user-invocable: true
---

# /jm-adk:setup-domain

## Purpose

Configure a custom domain with DNS records for your deployed application. Use this to point your domain to Hostinger or Firebase hosting.

## Workflow

1. Gather domain name and hosting target information.
2. Generate required DNS records (A, CNAME, TXT) for the hosting provider.
3. Provide step-by-step instructions for DNS configuration at the registrar.
4. Generate verification steps and estimated propagation timeline.

## Arguments

- `domain` — Custom domain name (required)
- `target` — Hosting target: `hostinger` | `firebase` (required)
- `subdomain` — Configure for subdomain only (optional)

## Examples

```bash
/jm-adk:setup-domain domain=example.com target=firebase
/jm-adk:setup-domain domain=example.com target=hostinger subdomain=app
```

## Related Commands

- `/jm-adk:setup-ssl` — Configure SSL certificate
- `/jm-adk:deploy` — Deploy to hosting
- `/jm-adk:deploy-hostinger` — Hostinger deployment
