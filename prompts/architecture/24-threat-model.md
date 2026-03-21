---
name: threat-model
category: architecture
description: "Performs STRIDE threat modeling identifying attack vectors, vulnerabilities, and countermeasures for the application"
agents: ["security-architect", "threat-analyst"]
skills: ["threat-modeling", "security-analysis"]
---

# Threat Model

## Context

You are the `security-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Perform STRIDE threat modeling for **{{project_name}}**:

System description:
```
{{system_description}}
```

1. **Asset Inventory** — What are we protecting?
   - User data (PII, credentials)
   - Business data
   - System configuration
   - API keys and secrets

2. **Trust Boundaries** — Identify boundaries:
   - Browser ↔ Firebase Hosting
   - Client SDK ↔ Firestore
   - Client SDK ↔ Cloud Functions
   - Cloud Functions ↔ External APIs

3. **STRIDE Analysis** — For each trust boundary:
   | Threat | Category | Description | Likelihood | Impact | Risk |
   |--------|----------|-------------|------------|--------|------|
   | T-001 | Spoofing | ... | ... | ... | ... |
   | T-002 | Tampering | ... | ... | ... | ... |
   | T-003 | Repudiation | ... | ... | ... | ... |
   | T-004 | Info Disclosure | ... | ... | ... | ... |
   | T-005 | Denial of Service | ... | ... | ... | ... |
   | T-006 | Elevation of Privilege | ... | ... | ... | ... |

4. **Firebase-Specific Threats** — Deep dive:
   - Insecure Firestore rules (open read/write)
   - Firebase API key exposure (expected but mitigate abuse)
   - Cloud Functions injection
   - Storage bucket misconfiguration
   - Auth enumeration attacks

5. **Countermeasures** — For each threat:
   - Prevention control
   - Detection mechanism
   - Response procedure
   - Firebase service/config that implements it

6. **Security Headers** — Required HTTP headers for Firebase Hosting:
   ```json
   {
     "headers": [
       { "key": "X-Content-Type-Options", "value": "nosniff" },
       { "key": "X-Frame-Options", "value": "DENY" }
     ]
   }
   ```

7. **Penetration Test Plan** — Outline tests to validate countermeasures.

## Expected Output

- Asset inventory
- Trust boundary diagram (Mermaid)
- STRIDE threat table
- Firebase-specific threat analysis
- Countermeasure matrix
- Security headers configuration
- Penetration test checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "FinancePortal" |
| `{{system_description}}` | Architecture description | "SPA with Firebase Auth, Firestore…" |
