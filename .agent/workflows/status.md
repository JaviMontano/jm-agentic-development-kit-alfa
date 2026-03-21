---
description: "Show pipeline progress report — current phase, completed gates, and next steps"
---

# /status

## Purpose
Display a comprehensive progress report of the current project pipeline, showing which phases have been completed, which gates have passed, and what comes next — providing full situational awareness.

## Workflow

### Phase 1: Context Scan
**Agent**: `context-manager`
**Skills**: `discovery-orchestration`, `input-analysis`

1. Scan the current working directory for project artifacts
2. Detect which pipeline is active (analyze, develop, ship, or custom)
3. Identify completed deliverables by checking for output files:
   - Analysis artifacts (requirements spec, domain model, flow maps, feasibility report)
   - Development artifacts (architecture doc, scaffold, components, tests)
   - Deployment artifacts (build output, deployment log, verification report)
4. Check git history for recent activity and branch status

### Phase 2: Gate Evaluation
**Agent**: `quality-guardian`
**Skills**: `code-review`, `deployment-checklist`, `performance-testing`

1. Evaluate each quality gate against current state:
   - **G0 (Security)**: Check for exposed secrets, security rule coverage
   - **G1 (Evidence)**: Check for evidence tags, architecture documentation
   - **G2 (Performance)**: Check latest Lighthouse scores if available
   - **G3 (Deployment)**: Check build status, hosting configuration
2. Mark each gate as: PASSED / PENDING / FAILED / NOT APPLICABLE
3. List specific failing checks for any FAILED gate

### Phase 3: Report Generation
**Agent**: `context-manager`
**Skills**: `mermaid-diagramming`

1. Generate progress report with:
   ```
   Project: {name}
   Pipeline: {analyze|develop|ship}
   Current Phase: {phase name}
   Progress: {X/Y phases complete}
   ```
2. Show phase completion status:
   - [x] Completed phases with timestamps
   - [ ] Pending phases with estimated effort
   - [!] Blocked phases with blocker description
3. Show gate status dashboard:
   - G0: {PASS/FAIL/PENDING}
   - G1: {PASS/FAIL/PENDING}
   - G2: {PASS/FAIL/PENDING}
   - G3: {PASS/FAIL/PENDING}
4. List next recommended actions (top 3)
5. Generate Mermaid progress diagram if applicable

## Output
- Pipeline progress report (current phase, completion percentage)
- Gate status dashboard (G0-G3 with details)
- Completed deliverables inventory
- Next actions recommendation (prioritized)
- Blockers and risks (if any)
