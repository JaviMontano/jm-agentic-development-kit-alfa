---
name: run-full-pipeline
category: meta
description: "Orchestrates a full development pipeline from discovery through deployment, chaining all relevant prompts"
agents: ["pipeline-orchestrator", "meta-orchestrator"]
skills: ["pipeline-orchestration", "full-lifecycle"]
---

# Run Full Pipeline

## Context

You are the `pipeline-orchestrator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Orchestrate the full development pipeline for **{{project_name}}**:

Project brief:
```
{{project_brief}}
```

Execute the following phases, using output from each phase as input to the next:

### Phase 1: Discovery
| Step | Prompt | Purpose | Est. Time |
|------|--------|---------|-----------|
| 1.1 | 15-amplify-input | Expand the project brief | 15 min |
| 1.2 | 01-analyze-requirements | Extract requirements | 30 min |
| 1.3 | 02-map-stakeholders | Identify stakeholders | 20 min |
| 1.4 | 03-model-domain | Create domain model | 30 min |
| 1.5 | 12-assess-risks | Identify project risks | 20 min |
| 1.6 | 06-validate-feasibility | Validate feasibility | 20 min |
| 1.7 | 10-prioritize-roadmap | Create roadmap | 20 min |

### Phase 2: Architecture
| Step | Prompt | Purpose | Est. Time |
|------|--------|---------|-----------|
| 2.1 | 21-design-system-arch | System architecture | 45 min |
| 2.2 | 23-model-database | Firestore schema | 30 min |
| 2.3 | 22-design-api-contract | API design | 30 min |
| 2.4 | 35-design-auth | Auth architecture | 25 min |
| 2.5 | 27-design-components | Component design | 25 min |
| 2.6 | 30-design-tokens | Design system | 20 min |

### Phase 3: Development
| Step | Prompt | Purpose | Est. Time |
|------|--------|---------|-----------|
| 3.1 | 41-scaffold-project | Project scaffolding | 30 min |
| 3.2 | 47-create-auth-flow | Authentication | 45 min |
| 3.3 | 51-create-nav | Navigation | 20 min |
| 3.4 | 42-create-page (×N) | Page creation | 30 min each |
| 3.5 | 46-create-firestore-crud | Data services | 25 min |
| 3.6 | 61-implement-dark-mode | Theme support | 20 min |

### Phase 4: Quality
| Step | Prompt | Purpose | Est. Time |
|------|--------|---------|-----------|
| 4.1 | 71-write-unit-tests | Unit tests | 45 min |
| 4.2 | 73-audit-performance | Performance check | 20 min |
| 4.3 | 74-audit-accessibility | A11y check | 20 min |
| 4.4 | 75-audit-security | Security check | 20 min |
| 4.5 | 78-review-code | Code review | 30 min |

### Phase 5: Deployment
| Step | Prompt | Purpose | Est. Time |
|------|--------|---------|-----------|
| 5.1 | 93-setup-environments | Environments | 20 min |
| 5.2 | 88-setup-github-actions | CI/CD | 25 min |
| 5.3 | 87-deploy-firebase (or 86) | Deploy | 15 min |
| 5.4 | 89-configure-domain | Domain setup | 15 min |
| 5.5 | 95-pre-deploy-checklist | Final check | 15 min |

### Phase 6: Meta
| Step | Prompt | Purpose | Est. Time |
|------|--------|---------|-----------|
| 6.1 | 85-generate-docs | Documentation | 30 min |
| 6.2 | 84-generate-changelog | Changelog | 10 min |
| 6.3 | 101-session-retrospective | Retrospective | 15 min |

**Pipeline Controls**:
- Skip phases: {{skip_phases}}
- Focus phases: {{focus_phases}}
- Quality gate: Require sign-off between phases

## Expected Output

- Phase-by-phase execution plan with dependencies
- Estimated total timeline
- Resource requirements per phase
- Quality gates and sign-off points
- Deliverable checklist per phase
- Pipeline status dashboard

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "NewProduct" |
| `{{project_brief}}` | Initial project description | "Build a customer portal with…" |
| `{{skip_phases}}` | Phases to skip | "none" or "discovery" |
| `{{focus_phases}}` | Phases to emphasize | "development, quality" |
