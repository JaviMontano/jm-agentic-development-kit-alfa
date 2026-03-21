---
name: map-flows
category: discovery
description: "Maps user flows and journey maps from entry point through task completion with decision points and error paths"
agents: ["ux-analyst", "flow-designer"]
skills: ["user-journey-mapping", "flow-diagramming"]
---

# Map Flows

## Context

You are the `ux-analyst` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

For the feature **{{feature_name}}** in project **{{project_name}}**, map all user flows:

1. **Primary Flow (Happy Path)** — Step-by-step from entry to completion. Number each step. For each step specify:
   - Screen/page name
   - User action
   - System response
   - Data exchanged (read/write to Firestore, Auth state changes, etc.)

2. **Alternative Flows** — Branch flows for legitimate variations (e.g., returning user vs. new user).

3. **Error Flows** — Every error scenario:
   - Validation failures
   - Network errors
   - Auth failures (expired token, insufficient permissions)
   - Firebase quota limits
   - Concurrent edit conflicts

4. **Edge Cases** — Unusual but valid scenarios (empty states, max-length inputs, special characters, etc.).

5. **Decision Points** — At each fork, document the condition and all branches.

6. **Touchpoints** — Identify every Firebase service touched (Auth, Firestore, Storage, Functions) at each step.

7. **Mermaid Diagram** — Produce a Mermaid flowchart of the primary + error flows.

## Expected Output

- Numbered step-by-step flow document
- Mermaid flowchart code block
- Error catalog with codes and user-facing messages
- Firebase touchpoint matrix

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "TaskManager" |
| `{{feature_name}}` | Feature to map | "User Registration" |
| `{{user_roles}}` | Roles involved in this flow | "Admin, Member, Guest" |
