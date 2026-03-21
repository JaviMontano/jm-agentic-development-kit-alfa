---
name: check-compliance
category: discovery
description: "Audits project requirements against regulatory frameworks (GDPR, HIPAA, SOC2, WCAG) and produces a compliance checklist"
agents: ["compliance-auditor", "security-analyst"]
skills: ["compliance-checking", "regulatory-analysis"]
---

# Check Compliance

## Context

You are the `compliance-auditor` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Audit **{{project_name}}** for compliance with **{{regulations}}**:

Project description:
```
{{project_description}}
```

Data handled:
```
{{data_types}}
```

1. **Applicable Regulations** — For each regulation in {{regulations}}:
   - Key requirements relevant to this project
   - Penalties for non-compliance
   - Deadline/enforcement date

2. **Data Classification** — Classify all data types:
   - Public / Internal / Confidential / Restricted
   - PII identification
   - Sensitive data flags

3. **Gap Analysis** — For each requirement, assess current state:
   - ✅ Compliant
   - ⚠️ Partially Compliant (with gaps described)
   - ❌ Non-Compliant (with remediation needed)

4. **Firebase Compliance** — Assess:
   - Firestore security rules adequacy
   - Firebase Auth configuration
   - Data residency (Firebase region selection)
   - Encryption at rest and in transit
   - Audit logging capabilities

5. **Remediation Plan** — For each gap:
   - Required action
   - Priority (Critical/High/Medium/Low)
   - Effort estimate
   - Responsible party

6. **Compliance Checklist** — A printable yes/no checklist for pre-launch verification.

## Expected Output

- Regulation applicability matrix
- Data classification table
- Gap analysis with RAG status
- Firebase compliance assessment
- Remediation plan with priorities
- Pre-launch compliance checklist

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "MedicalRecords" |
| `{{regulations}}` | Applicable regulations | "GDPR, HIPAA, WCAG 2.1 AA" |
| `{{project_description}}` | Project description | "A patient-facing portal…" |
| `{{data_types}}` | Types of data processed | "Name, email, health records, SSN" |
