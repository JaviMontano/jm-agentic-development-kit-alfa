---
name: mermaid-diagramming
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Creates technical diagrams using Mermaid syntax including C4 architecture,
  sequence diagrams, flowcharts, entity-relationship, state machines, and
  Gantt charts. Produces copy-paste-ready Mermaid code blocks.
  Trigger: "mermaid", "diagram", "C4 diagram", "sequence diagram", "flowchart", "ER diagram"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Mermaid Diagramming

> "A picture is worth a thousand words. A diagram is worth a thousand meetings." — Unknown

## TL;DR

Produces technical diagrams using Mermaid syntax — C4 architecture, sequence, flowchart, ER, state machine, and Gantt — as copy-paste-ready code blocks renderable in GitHub, documentation, and Markdown tools. Use this skill whenever a visual representation would clarify architecture, flows, data models, or timelines.

## Procedure

### Step 1: Discover
- Identify the concept to visualize: architecture, flow, data model, sequence, timeline
- Gather the entities, relationships, and interactions to represent
- Determine the appropriate diagram type for the communication goal
- Check rendering environment compatibility (GitHub, VS Code, documentation site)

### Step 2: Analyze
- Select diagram type:
  - **C4 Context/Container**: system boundaries and external actors
  - **Sequence**: interactions between components over time
  - **Flowchart**: decision trees, process flows, algorithms
  - **Entity-Relationship**: data models and relationships
  - **State**: component lifecycle and state transitions
  - **Gantt**: project timelines and dependencies
- Determine the right level of detail (avoid cluttered diagrams)
- Plan layout direction (TB, LR) for readability

### Step 3: Execute
- Write Mermaid code with clear node labels and descriptive edge text
- Use subgraphs to group related components
- Apply consistent styling: colors for different component types
- Add notes and annotations for important details
- Test rendering in target environment
- Provide multiple views if a single diagram would be too complex

### Step 4: Validate
- Verify the diagram accurately represents the system or concept
- Confirm labels are readable and self-explanatory
- Check that the diagram renders correctly in Mermaid-compatible tools
- Validate with stakeholders that the diagram communicates the intended message

## Quality Criteria

- [ ] Diagram type matches the communication goal
- [ ] Labels are descriptive and self-explanatory
- [ ] Diagram is not overcrowded (split into multiple if needed)
- [ ] Mermaid syntax is valid and renders correctly
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Diagram spaghetti: too many crossing lines making it unreadable
- Wrong diagram type: using a flowchart when a sequence diagram is needed
- Diagrams without labels or with cryptic abbreviations

## Related Skills

- `system-architecture` — C4 diagrams visualize architecture decisions
- `flow-mapping` — process flows rendered as Mermaid flowcharts
- `database-design` — ER diagrams visualize data models
