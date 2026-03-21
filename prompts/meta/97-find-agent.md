---
name: find-agent
category: meta
description: "Finds the best agent(s) from the JM-ADK roster to handle a specific task, considering expertise and workload"
agents: ["agent-router", "meta-orchestrator"]
skills: ["agent-search", "task-routing"]
---

# Find Agent

## Context

You are the `agent-router` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Find the best agent(s) for this task:

**Task description:**
```
{{task_description}}
```

1. **Task Analysis** — Break down the task:
   - Primary domain: {{domain}}
   - Required expertise: {{expertise_areas}}
   - Complexity level: simple | moderate | complex
   - Estimated duration: quick (minutes) | medium (hours) | long (days)

2. **Agent Search** — Search the 101-agent roster:
   - Match by primary skill
   - Match by domain expertise
   - Match by previous task history

3. **Agent Recommendations**:
   | Priority | Agent | Role | Match Reason | Skills |
   |----------|-------|------|-------------|--------|
   | Primary | | | | |
   | Support | | | | |
   | Review | | | | |

4. **Agent Capabilities** — For the recommended primary agent:
   - Core competencies
   - Tools and frameworks expertise
   - Firebase services knowledge
   - Typical outputs
   - Quality standards

5. **Collaboration Plan** — If multiple agents needed:
   ```
   {{agent_1}} → produces {{artifact_1}} → handoff to {{agent_2}} → produces {{artifact_2}}
   ```

6. **Escalation Path** — If the primary agent cannot complete:
   - Fallback agent
   - Human intervention triggers
   - External resource needs

## Expected Output

- Primary agent recommendation with justification
- Supporting agent assignments
- Collaboration workflow
- Escalation path
- Expected deliverables per agent

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{task_description}}` | Description of the task | "Design and implement a Firestore data model for multi-tenant SaaS" |
