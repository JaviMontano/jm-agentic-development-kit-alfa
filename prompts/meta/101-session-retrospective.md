---
name: session-retrospective
category: meta
description: "Conducts a retrospective analysis of a development session documenting decisions, learnings, and action items"
agents: ["retrospective-facilitator", "meta-orchestrator"]
skills: ["retrospective-analysis", "continuous-improvement"]
---

# Session Retrospective

## Context

You are the `retrospective-facilitator` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Conduct a retrospective for the session on **{{project_name}}**:

Session context:
```
{{session_summary}}
```

1. **Session Summary**:
   - Date: {{session_date}}
   - Duration: {{duration}}
   - Goals set: [list]
   - Goals achieved: [list]
   - Goals not achieved: [list with reasons]

2. **What Went Well** — Celebrate successes:
   - Technical wins
   - Process improvements
   - Collaboration highlights
   - Tools that worked well

3. **What Could Be Improved** — Identify friction:
   - Technical challenges encountered
   - Process bottlenecks
   - Tool limitations
   - Knowledge gaps
   - Time estimation accuracy

4. **Key Decisions Made**:
   | Decision | Rationale | Confidence | Revisit? |
   |----------|-----------|------------|----------|
   - Architecture decisions
   - Technology choices
   - Trade-offs accepted

5. **Learnings** — New knowledge gained:
   - Firebase patterns discovered
   - Performance insights
   - Accessibility learnings
   - Security awareness

6. **Action Items** — Concrete next steps:
   | ID | Action | Owner | Priority | Due |
   |----|--------|-------|----------|-----|
   - Immediate actions (before next session)
   - Short-term actions (this sprint)
   - Long-term actions (backlog)

7. **Prompt Effectiveness** — Which JM-ADK prompts were used and their quality:
   | Prompt | Used | Quality | Improvement Suggestion |
   |--------|------|---------|----------------------|

8. **Technical Debt** — Debt incurred during the session:
   - What shortcuts were taken
   - Why (time pressure, complexity, etc.)
   - Plan to address

9. **Metrics**:
   - Lines of code written/modified
   - Tests added
   - Issues resolved
   - Firebase operations used

10. **Next Session Plan** — What to tackle next:
    - Priority items
    - Required preparation
    - Tools/resources needed

## Expected Output

- Session retrospective document
- Action items list with owners
- Decision log entries
- Technical debt register update
- Next session preparation checklist
- Lessons learned for future sessions

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "ActiveProject" |
| `{{session_summary}}` | What was done in this session | "Implemented auth flow, designed database…" |
| `{{session_date}}` | Date of the session | "2026-03-21" |
| `{{duration}}` | Session duration | "4 hours" |
