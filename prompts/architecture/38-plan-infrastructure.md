---
name: plan-infrastructure
category: architecture
description: "Plans the complete infrastructure setup including Firebase project config, Hostinger setup, DNS, and monitoring"
agents: ["infra-planner", "devops-architect"]
skills: ["infrastructure-planning", "firebase-setup"]
---

# Plan Infrastructure

## Context

You are the `infra-planner` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Plan the infrastructure for **{{project_name}}**:

Requirements:
```
{{infra_requirements}}
```

1. **Firebase Project Setup** — Configuration:
   - Project naming convention (dev/staging/prod)
   - Region selection (closest to {{primary_region}})
   - Services to enable:
     - [ ] Authentication
     - [ ] Firestore
     - [ ] Storage
     - [ ] Cloud Functions
     - [ ] Hosting
     - [ ] Analytics
     - [ ] Performance Monitoring
     - [ ] Crashlytics

2. **Hosting Decision** — Firebase Hosting vs Hostinger:
   | Criteria | Firebase Hosting | Hostinger |
   |----------|-----------------|-----------|
   - Recommendation with justification

3. **Environment Strategy** — Multi-environment setup:
   - Development (local emulators + dev Firebase project)
   - Staging (staging Firebase project)
   - Production (prod Firebase project)
   - Environment variable management

4. **Domain & DNS** — Setup:
   - Domain registration/transfer
   - DNS configuration (A records, CNAME)
   - SSL certificate (auto via Firebase or Let's Encrypt via Hostinger)
   - Subdomain strategy (app.domain.com, api.domain.com)

5. **Monitoring & Alerting** — Setup:
   - Firebase Performance Monitoring
   - Uptime monitoring (UptimeRobot, Pingdom)
   - Error tracking (Firebase Crashlytics or Sentry)
   - Alert channels (email, Slack)
   - Dashboard (Firebase Console, custom)

6. **Backup Strategy** — Data protection:
   - Firestore scheduled exports (Cloud Function + Cloud Scheduler)
   - Storage bucket backup
   - Configuration backup (firebase.json, firestore.rules, etc.)

7. **Cost Monitoring** — Budget alerts and usage dashboards.

## Expected Output

- Firebase project setup checklist
- Hosting recommendation
- Environment configuration files
- DNS configuration guide
- Monitoring setup checklist
- Backup automation code
- Cost alert configuration

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "GlobalApp" |
| `{{infra_requirements}}` | Infrastructure requirements | "99.9% uptime, <200ms response…" |
| `{{primary_region}}` | Primary user region | "us-central1" |
