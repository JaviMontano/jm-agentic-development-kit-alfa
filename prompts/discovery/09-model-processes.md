---
name: model-processes
category: discovery
description: "Models business processes using BPMN notation with swimlanes, decision gates, and automation opportunities"
agents: ["process-modeler", "business-analyst"]
skills: ["bpmn-modeling", "process-optimization"]
---

# Model Processes

## Context

You are the `process-modeler` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Model the following business process for **{{project_name}}**:

```
{{process_description}}
```

1. **Process Inventory** — List all sub-processes involved. For each:
   - Process name
   - Owner / responsible role
   - Trigger (event, schedule, manual)
   - Inputs and outputs

2. **BPMN Diagram (Text)** — Describe the process using BPMN elements:
   - Start/End events
   - Tasks (user tasks, service tasks, script tasks)
   - Gateways (exclusive, parallel, inclusive)
   - Swimlanes by role

3. **Mermaid Sequence Diagram** — Provide a Mermaid diagram showing interactions between actors and systems.

4. **Automation Opportunities** — For each manual step, assess:
   - Can it be automated with Firebase Cloud Functions?
   - Can it be a Firestore trigger?
   - Can it use Firebase Auth triggers?
   - Effort to automate (Low/Medium/High)

5. **KPIs** — Define 3-5 process KPIs (cycle time, error rate, throughput, etc.) and how to measure them using Firestore data.

6. **Bottleneck Analysis** — Identify likely bottlenecks and propose mitigations.

## Expected Output

- Process inventory table
- BPMN description (textual with element types noted)
- Mermaid sequence diagram code block
- Automation opportunity matrix
- KPI definitions
- Bottleneck analysis with mitigations

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "OrderFulfillment" |
| `{{process_description}}` | Narrative of the business process | "When a customer places an order…" |
| `{{roles}}` | Roles involved | "Customer, Sales Rep, Warehouse, Shipping" |
