---
name: flow-mapping
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Visualizes business processes, data flows, and integration diagrams to expose
  bottlenecks, dependencies, and optimization opportunities. Produces clear
  flow diagrams using Mermaid or BPMN notation.
  Trigger: "flow diagram", "data flow", "process flow", "integration diagram"
allowed-tools:
  - Read
  - Write
  - Glob
  - Grep
  - Bash
---

# Flow Mapping

> "If you can't describe what you are doing as a process, you don't know what you're doing." — W. Edwards Deming

## TL;DR

Creates visual representations of business processes, data flows, and system integrations to reveal bottlenecks, redundancies, and optimization opportunities. Use this skill when onboarding to a new domain, analyzing system integrations, or identifying process inefficiencies.

## Procedure

### Step 1: Discover
- Identify the process or flow to map (user journey, data pipeline, integration chain)
- Gather existing documentation, API contracts, and system inventories
- Interview stakeholders to understand the as-is process including exceptions and workarounds

### Step 2: Analyze
- Identify actors, systems, data stores, and decision points
- Trace data transformations and handoffs between systems
- Spot bottlenecks, single points of failure, manual steps, and redundant operations
- Classify flows: happy path, error paths, edge cases

### Step 3: Execute
- Create flow diagrams using Mermaid syntax (flowchart, sequence, or activity)
- Document each step with inputs, outputs, and responsible system/actor
- Annotate integration points with protocols, data formats, and SLAs
- Produce a data flow diagram showing data at rest and in motion

### Step 4: Validate
- Walk through the diagram with stakeholders to confirm accuracy
- Verify all exception paths and error handling are represented
- Check that every integration point has defined contracts and failure modes
- Confirm the diagram is readable without additional explanation

## Quality Criteria

- [ ] All actors, systems, and data stores are identified and labeled
- [ ] Happy path and at least two error/exception paths are documented
- [ ] Integration points specify protocol, format, and error handling
- [ ] Diagrams use consistent notation and are self-explanatory
- [ ] Evidence tags applied to all claims

## Anti-Patterns

- Happy-path-only diagrams that ignore exceptions and failures
- Diagrams so detailed they become unreadable (wrong level of abstraction)
- Missing data transformation steps between systems

## Related Skills

- `business-process-modeling` — formal BPMN modeling of processes
- `mermaid-diagramming` — technical diagram rendering
- `system-architecture` — C4 context and container diagrams
