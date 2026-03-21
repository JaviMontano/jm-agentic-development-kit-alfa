---
name: generate-diagram
category: architecture
description: "Generates architecture diagrams in Mermaid syntax including C4, sequence, flow, ER, and state diagrams"
agents: ["diagram-generator", "architect"]
skills: ["mermaid-diagrams", "c4-modeling"]
---

# Generate Diagram

## Context

You are the `diagram-generator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Generate a **{{diagram_type}}** diagram for **{{project_name}}**:

Subject:
```
{{subject}}
```

Supported diagram types and their output:

### C4 Context Diagram
```mermaid
C4Context
  title System Context Diagram for {{project_name}}
  Person(user, "User", "Description")
  System(system, "{{project_name}}", "Description")
  System_Ext(firebase, "Firebase", "BaaS")
  Rel(user, system, "Uses")
  Rel(system, firebase, "Stores data")
```

### Sequence Diagram
```mermaid
sequenceDiagram
  actor User
  participant App
  participant Firebase
  User->>App: Action
  App->>Firebase: Request
  Firebase-->>App: Response
```

### Flowchart
```mermaid
flowchart TD
  A[Start] --> B{Decision}
  B -->|Yes| C[Action]
  B -->|No| D[Other]
```

### Entity Relationship
```mermaid
erDiagram
  USER ||--o{ ORDER : places
  ORDER ||--|{ ITEM : contains
```

### State Diagram
```mermaid
stateDiagram-v2
  [*] --> Draft
  Draft --> Published: publish
  Published --> Archived: archive
```

Generate the diagram with:
1. Proper labels and descriptions
2. Color coding where supported
3. Clear relationship labels
4. Notes for complex interactions
5. Multiple views if the system is complex

## Expected Output

- Mermaid diagram code block(s)
- Diagram legend/key
- Brief description of what the diagram shows
- Suggestions for additional diagrams that would be useful

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "OrderSystem" |
| `{{diagram_type}}` | Type of diagram | "sequence" |
| `{{subject}}` | What to diagram | "User checkout flow" |
