---
name: analyze-requirements
category: discovery
description: "Elicits, structures, and prioritizes functional and non-functional requirements from raw stakeholder input"
agents: ["requirements-analyst", "domain-modeler"]
skills: ["elicit-requirements", "prioritize-backlog"]
---

# Analyze Requirements

## Context

You are the `requirements-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Given the following raw input from stakeholders about the project **{{project_name}}**:

```
{{raw_input}}
```

Perform a comprehensive requirements analysis:

1. **Functional Requirements** — Extract every user-facing capability implied or stated. Write each as a user story: "As a {{role}}, I want {{goal}} so that {{benefit}}."
2. **Non-Functional Requirements** — Identify performance, security, scalability, accessibility, and compliance constraints. For each, state a measurable acceptance criterion.
3. **Implicit Requirements** — Infer requirements not explicitly stated but necessary given the domain ({{domain}}) and target audience ({{audience}}).
4. **Ambiguities & Gaps** — List every ambiguity, contradiction, or missing information. For each, propose a clarifying question.
5. **Prioritization** — Apply MoSCoW (Must / Should / Could / Won't) to each requirement. Justify every "Must."
6. **Dependency Map** — Show which requirements depend on others (use a simple numbered reference system).
7. **Firebase Fit** — For each functional requirement, indicate the Firebase service(s) most relevant (Firestore, Auth, Storage, Functions, Hosting, etc.).

## Expected Output

- A structured requirements document with numbered items (REQ-001, REQ-002, …)
- MoSCoW priority for every requirement
- A list of clarifying questions sorted by impact
- A dependency adjacency list

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ClientPortal" |
| `{{raw_input}}` | Unstructured stakeholder notes, emails, or transcripts | "We need a portal where clients can…" |
| `{{domain}}` | Business domain | "FinTech", "HealthCare" |
| `{{audience}}` | Target end-users | "SMB owners aged 30-50" |
