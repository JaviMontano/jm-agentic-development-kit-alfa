---
name: generate-spec
category: meta
description: "Generates a comprehensive technical specification document from requirements, including architecture, data model, and API design"
agents: ["spec-generator", "technical-writer"]
skills: ["spec-generation", "technical-writing"]
---

# Generate Technical Specification

## Context

You are the `spec-generator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Generate a technical specification for **{{feature_name}}** in **{{project_name}}**:

Requirements:
```
{{requirements}}
```

1. **Overview**:
   - Feature summary (2-3 sentences)
   - Business justification
   - Success metrics
   - Out of scope

2. **User Stories**:
   - As a [role], I want [goal], so that [benefit]
   - Acceptance criteria for each story (Given/When/Then)

3. **Technical Design**:
   - Architecture approach
   - Component diagram (Mermaid)
   - Data flow (sequence diagram)
   - Firebase services used

4. **Data Model**:
   - Firestore collections and documents
   - Document schemas (TypeScript interfaces)
   - Security rules
   - Indexes required

5. **API Design** (if Cloud Functions):
   - Endpoint specifications
   - Request/response schemas
   - Error codes

6. **UI/UX Specification**:
   - Wireframe descriptions (text-based)
   - Component list with props
   - State management
   - User flow

7. **Testing Strategy**:
   - Unit test scenarios
   - Integration test scenarios
   - E2E test scenarios
   - Edge cases to cover

8. **Implementation Plan**:
   - Task breakdown with estimates
   - Dependencies
   - Risks and mitigations
   - Definition of Done

9. **Non-Functional Requirements**:
   - Performance targets
   - Accessibility requirements
   - Security requirements
   - Browser support

## Expected Output

- Complete technical specification document
- Architecture diagrams (Mermaid)
- Data model schemas
- API contracts
- Task breakdown with estimates
- Testing strategy

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "PlatformApp" |
| `{{feature_name}}` | Feature to specify | "User Permissions System" |
| `{{requirements}}` | Business requirements | "Admin users should be able to…" |
