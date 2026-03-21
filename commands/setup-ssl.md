---
description: "Configure SSL certificate"
user-invocable: true
---

# /jm-adk:setup-ssl

## Purpose

Configure SSL certificate for HTTPS on your custom domain. Use this to secure your application with TLS encryption.

## Workflow

1. Determine hosting provider and SSL provisioning method.
2. Generate SSL configuration steps (auto-provision via Let's Encrypt or manual upload).
3. Configure HTTPS redirect and HSTS headers.
4. Verify SSL installation and report certificate details.

## Arguments

- `domain` — Domain to secure (required)
- `provider` — SSL provider: `letsencrypt` | `cloudflare` | `manual` (optional, default: letsencrypt)

## Examples

```bash
/jm-adk:setup-ssl domain=example.com
/jm-adk:setup-ssl domain=example.com provider=cloudflare
```

## Related Commands

- `/jm-adk:setup-domain` — Configure custom domain first
- `/jm-adk:audit-security` — Security audit including SSL
- `/jm-adk:deploy` — Deploy application
