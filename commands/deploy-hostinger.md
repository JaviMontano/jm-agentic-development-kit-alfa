---
description: "Build and deploy to Hostinger via FTP"
user-invocable: true
---

# /jm-adk:deploy-hostinger

## Purpose

Build the production bundle and deploy to Hostinger shared hosting via FTP. Use this for static sites and vanilla JS projects hosted on Hostinger.

## Workflow

1. Build production bundle with optimizations (minification, compression, image optimization).
2. Read FTP credentials from `.adk/deploy.json` or environment variables.
3. Upload files via FTP with diff-based sync (upload only changed files).
4. Verify deployment by checking HTTP status and report the live URL.

## Arguments

- `host` — FTP host (optional, uses config)
- `path` — Remote directory path (optional, uses config)
- `dry-run` — Preview what would be uploaded (optional, default: false)

## Examples

```bash
/jm-adk:deploy-hostinger
/jm-adk:deploy-hostinger dry-run=true
```

## Related Commands

- `/jm-adk:deploy` — Generic deploy command
- `/jm-adk:setup-domain` — Configure custom domain
- `/jm-adk:setup-ssl` — Configure SSL certificate
