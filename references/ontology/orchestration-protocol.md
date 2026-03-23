# Orchestration Protocol — Master Flowchart

How Pristino processes every request, from raw input to validated output.

```
USER INPUT (may be messy: typos, voice, mixed languages, images)
    │
    ▼
┌─────────────────────┐
│ INPUT TOLERANCE      │ Normalize: strip accents, fuzzy-match,
│                      │ handle phonetic, discard fillers,
│                      │ detect language, extract intent
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ AUTO-PROMPT MATCH    │ Search PRISTINO-INDEX.md
│                      │ Confidence scoring:
│                      │   ≥0.85 → auto-execute
│                      │   0.60-0.84 → offer 3 options
│                      │   <0.60 → ask clarifying question
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ CLASSIFY             │ Trivial → single agent
│                      │ Substantive → triad
│                      │ Critical → committee (rare)
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ COMPOSE TRIAD        │ Select from Composition Matrix:
│                      │ Lead (domain) + Support (cross-cutting)
│                      │ + Guardian (quality)
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ LOAD SKILL CONTEXT   │ primary.md prompt
│                      │ body-of-knowledge.md
│                      │ guardrails/*.json
│                      │ brand/design-tokens.json (if HTML)
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ PHASE 1: THINK FIRST │ Read context, decompose, verify
│ (Constitution XIII)  │ spec/plan/tests exist
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ PHASE 2: EXECUTE     │ Lead produces deliverable
│                      │ Evidence tags on every claim
│                      │ Brand template if HTML output
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ PHASE 3: REVIEW      │ Support checks:
│                      │ - Cross-cutting concern (security, a11y)
│                      │ - Edge cases missed
│                      │ - Evidence completeness
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ PHASE 4: VALIDATE    │ Guardian checks:
│                      │ - Evidence tags complete
│                      │ - Quality gate met (G0-G3)
│                      │ - Constitution respected
│                      │ - Confidence ≥ 0.95
│                      │ - Exceeds expectations (+insight +rec)
└──────────┬──────────┘
           │
       ┌───┴───┐
       │ PASS? │
       └───┬───┘
      YES  │  NO
       │   │   │
       │   │   ▼
       │   │ ┌──────────────┐
       │   │ │ REWORK       │ Guardian returns to Lead
       │   │ │              │ with specific findings
       │   │ └──────┬───────┘
       │   │        │
       │   │        └──→ back to PHASE 2
       │
       ▼
┌─────────────────────┐
│ FORMAT OUTPUT        │ Auto-select format:
│                      │ Code → inline + files
│                      │ Analysis → markdown
│                      │ Report → HTML branded
│                      │ Data → XLSX spec
│                      │ User override respected
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ DELIVER              │ The ask + insight + recommendation
│                      │ + risk flags
│                      │ User sees result, not machinery
└─────────────────────┘
```

## Decision Points

| Point | Condition | Path A | Path B |
|-------|-----------|--------|--------|
| Match confidence | ≥ 0.85 | Auto-execute | Offer options or ask |
| Task complexity | Trivial | Single agent | Triad |
| Guardian validation | Pass | Deliver | Rework loop |
| Confidence after rework | ≥ 0.95 | Deliver | Socratic debate |
| Socratic debate | Resolved | Deliver with rationale | Escalate to user |
| Context window | Exhausted | Checkpoint + continue | Summarize + pause |

## Edge Cases

| Case | Response |
|------|----------|
| User sends empty message | "Parece que el mensaje llego vacio. Intentas de nuevo?" |
| User sends only an image | Describe image, infer intent, confirm before acting |
| User sends URL without context | Fetch URL, summarize content, ask "Que quieres que haga con esto?" |
| User says "undo" | Revert last file change if possible; if not, explain what changed |
| User switches language mid-task | Mirror new language, continue task without interruption |
| User provides contradictory instructions | Flag contradiction, ask which takes priority |
| Task exceeds session context | Checkpoint: summarize progress, save state, invite continuation |
