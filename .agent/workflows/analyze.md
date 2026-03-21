---
description: "Full MAO-style analysis pipeline: requirements, flows, scenarios, feasibility, and specification"
---

# /analyze

## Purpose
Execute a complete discovery and analysis cycle following MAO methodology — from raw requirements through validated specification, ensuring every claim is evidence-tagged and every decision is traceable.

## Workflow

### Phase 1: Requirements Engineering
**Agent**: `requirements-analyst`
**Skills**: `requirements-engineering`, `input-analysis`, `user-research`

1. Gather raw input from user (problem statement, goals, constraints)
2. Extract user stories with acceptance criteria in Given/When/Then format
3. Identify business rules, domain terms, and non-functional requirements
4. Classify requirements by priority (MoSCoW) and complexity (T-shirt sizing)
5. Produce Requirements Specification document with evidence tags

### Gate: Requirements Completeness
- [ ] All user stories have acceptance criteria
- [ ] Business rules are explicit and non-contradictory
- [ ] Non-functional requirements defined (performance, accessibility, security)
- [ ] Evidence tags present on every claim `[DOC]` `[INFERENCE]` `[ASSUMPTION]`

### Phase 2: Stakeholder & Domain Mapping
**Agent**: `stakeholder-mapper`, `domain-modeler`
**Skills**: `stakeholder-mapping`, `domain-driven-design`, `business-process-modeling`

1. Build stakeholder influence/interest matrix
2. Define bounded contexts and aggregates (DDD lightweight)
3. Identify domain events and integration points
4. Map data ownership and flow boundaries
5. Produce Domain Model document with Mermaid diagrams

### Phase 3: Flow Mapping
**Agent**: `flow-mapper`
**Skills**: `flow-mapping`, `mermaid-diagramming`, `event-architecture`

1. Map primary business process flows (happy path)
2. Map alternative and exception flows
3. Define data flows between system components
4. Identify integration touchpoints (Firebase, APIs, third-party)
5. Generate Mermaid sequence and flowchart diagrams

### Gate: Flow Completeness
- [ ] All user stories have at least one mapped flow
- [ ] Exception paths are documented
- [ ] Data flow boundaries match domain model
- [ ] Diagrams render correctly in Mermaid

### Phase 4: Scenario Analysis
**Agent**: `scenario-evaluator`
**Skills**: `scenario-analysis`, `trade-off-analysis`, `risk-assessment`

1. Generate 3-5 implementation scenarios using Tree-of-Thought
2. Score each scenario on feasibility, cost, risk, and time-to-market
3. Evaluate trade-offs (Firebase-only vs hybrid, vanilla JS vs framework)
4. Recommend top scenario with justification
5. Document rejected alternatives with reasoning

### Phase 5: Feasibility Validation
**Agent**: `feasibility-validator`
**Skills**: `feasibility-validation`, `cost-estimation`, `compliance-assessment`

1. Validate technical feasibility against JM-ADK stack (Firebase, Hostinger, HTML/CSS/JS)
2. Confirm Hostinger deployment compatibility (no SSR, no Docker)
3. Estimate effort in FTE-months (never prices)
4. Identify blockers and mitigations
5. Produce Feasibility Report

### Gate: Analysis Gate (G1)
- [ ] Requirements spec complete with evidence tags
- [ ] Domain model validated
- [ ] Flows mapped with Mermaid diagrams
- [ ] Top scenario selected with trade-off analysis
- [ ] Feasibility confirmed for target stack
- [ ] No unresolved blockers

### Phase 6: Specification
**Agent**: `technical-writer`
**Skills**: `system-architecture`, `infrastructure-design`, `product-roadmapping`

1. Consolidate all analysis artifacts into a unified specification
2. Define system architecture (components, services, data stores)
3. Write Architecture Decision Records (ADRs) for key choices
4. Create implementation roadmap with milestones
5. Produce final Analysis Specification document

## Output
- Requirements Specification (user stories, business rules, NFRs)
- Domain Model (bounded contexts, aggregates, Mermaid diagrams)
- Flow Maps (business process, data flow, sequence diagrams)
- Scenario Analysis (scored alternatives, recommendation)
- Feasibility Report (stack compatibility, effort estimate, risks)
- Analysis Specification (architecture, ADRs, roadmap)
