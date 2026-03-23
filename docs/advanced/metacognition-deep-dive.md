# Metacognition Deep Dive

Understanding JM-ADK's reasoning engine: how agents think before they act.

## The DSVSR Protocol

Every complex request passes through the **DECOMPOSE → SOLVE → VERIFY → SYNTHESIZE → REFLECT** cycle. This is not optional — it's enforced by the governance framework.

```
┌─────────────┐
│  DECOMPOSE   │ Break into atomic sub-problems
└──────┬──────┘
       ▼
┌─────────────┐
│    SOLVE     │ Address each with confidence scoring
└──────┬──────┘
       ▼
┌─────────────┐
│   VERIFY     │ 6-dimension validation
└──────┬──────┘
       ▼
┌─────────────┐
│  SYNTHESIZE  │ Combine with weighted confidence
└──────┬──────┘
       ▼
┌─────────────┐     confidence < 0.95
│   REFLECT    │ ────────────────────► Back to SOLVE
└──────┬──────┘
       │ confidence ≥ 0.95
       ▼
   ┌────────┐
   │ OUTPUT │
   └────────┘
```

## Phase 1: DECOMPOSE

**Goal**: Transform a complex request into atomic, solvable sub-problems.

```
Input: "Build a real-time task management app"

Decomposition:
├── P1: Domain model (entities, relationships, constraints)
├── P2: Data architecture (Firestore collections, denormalization)
├── P3: Real-time sync (Firestore onSnapshot listeners)
├── P4: Authentication (Firebase Auth, role-based access)
├── P5: UI components (task board, task card, filters)
├── P6: Deployment target (Firebase Hosting vs Hostinger)
└── P7: Quality gates (Lighthouse, WCAG, security)
```

**Rules**:
- Each sub-problem must be independently solvable
- Dependencies between sub-problems must be explicit
- No sub-problem should require more than one agent to solve

## Phase 2: SOLVE

**Goal**: Address each sub-problem with explicit confidence scoring.

For each sub-problem, the assigned agent produces:

```
Solution: {description}
Confidence: 0.85
Evidence: [CODE] Verified in Firestore documentation
Assumptions:
  - User has Firebase Blaze plan (required for Cloud Functions)
  - Team size < 50 (affects Firestore pricing model)
```

**Confidence Scale**:

| Score | Meaning | Action |
|-------|---------|--------|
| 0.95-1.0 | High confidence — verified with evidence | Proceed |
| 0.80-0.94 | Moderate — logical but unverified | Flag assumptions |
| 0.60-0.79 | Low — significant unknowns | Socratic debate |
| < 0.60 | Insufficient — cannot proceed | WebSearch or ask user |

## Phase 3: VERIFY

**Goal**: Validate each solution across 6 dimensions.

| Dimension | Question | Check |
|-----------|----------|-------|
| **Logic** | Is the reasoning sound? | No logical fallacies |
| **Facts** | Are claims true? | Evidence tags present |
| **Completeness** | Is anything missing? | All edge cases covered |
| **Bias** | Are we favoring a solution unfairly? | Alternatives considered |
| **Technical Viability** | Will this work in our stack? | Hostinger/Firebase compatible |
| **Business Viability** | Does this solve the actual problem? | Requirements traced |

**Verification Output**:

```
Dimension: Technical Viability
Status: PASS
Evidence: [DOC] Firebase onSnapshot supports real-time sync
           for collections up to 1M documents
Note: Performance degrades beyond 500 concurrent listeners
      per client — acceptable for team size < 50
```

## Phase 4: SYNTHESIZE

**Goal**: Combine individual solutions into a coherent whole with weighted confidence.

```
Overall Confidence = Σ(sub-problem confidence × weight) / Σ(weights)

P1: Domain model      — 0.95 × 1.0 = 0.95
P2: Data architecture  — 0.90 × 1.2 = 1.08  (higher weight: foundational)
P3: Real-time sync     — 0.88 × 1.0 = 0.88
P4: Authentication     — 0.95 × 0.8 = 0.76
P5: UI components      — 0.92 × 0.8 = 0.74
P6: Deployment         — 0.98 × 0.6 = 0.59
P7: Quality gates      — 0.95 × 0.6 = 0.57

Overall = (0.95+1.08+0.88+0.76+0.74+0.59+0.57) / (1.0+1.2+1.0+0.8+0.8+0.6+0.6)
        = 5.57 / 6.0
        = 0.928
```

**Synthesis Rules**:
- Foundational decisions (data model, architecture) get higher weight
- Implementation details (UI, deployment) get lower weight
- Any sub-problem below 0.70 triggers a re-solve cycle

## Phase 5: REFLECT

**Goal**: If overall confidence < 0.95, initiate self-correction.

### Socratic Debate

When confidence is insufficient, agents engage in structured self-questioning:

```
Question: "Is Firestore the right choice for real-time sync?"
Evidence FOR: Native real-time listeners, offline support, auto-scaling [DOC]
Evidence AGAINST: 1MB document limit, complex queries cost more [DOC]
Alternative: Realtime Database (simpler, cheaper for small data) [DOC]
Resolution: Firestore — document flexibility outweighs query cost
            for task management use case [INFERENCE]
New Confidence: 0.92 → 0.95
```

### WebSearch Escalation

If Socratic debate doesn't reach 0.95:

```
Search: "Firestore vs Realtime Database performance comparison 2026"
Finding: Firestore recommended for structured data with complex queries [DOC]
New Confidence: 0.95 → 0.97
```

### User Escalation

If WebSearch doesn't resolve:

```
Question to User: "Your task management app requires real-time sync
for team collaboration. Firestore supports this natively, but the
pricing model changes significantly above 50 concurrent users.
Expected team size?"
```

## Evidence Tags

Every claim in the output must be tagged:

| Tag | Meaning | Confidence Impact |
|-----|---------|-------------------|
| `[CODE]` | Verified in source code | +0.10 |
| `[CONFIG]` | Verified in configuration | +0.08 |
| `[DOC]` | Verified in official documentation | +0.08 |
| `[INFERENCE]` | Logical deduction from evidence | +0.03 |
| `[ASSUMPTION]` | Unverified assumption | -0.05 |

## Quality Gates and Metacognition

The quality gates (G0-G3) integrate with the metacognition protocol:

| Gate | Metacognition Check |
|------|-------------------|
| **G0: Security** | VERIFY dimension: no secrets in code, no injection vectors |
| **G1: Evidence** | All claims have tags. No `[ASSUMPTION]` without mitigation plan |
| **G2: Lighthouse** | VERIFY dimension: Performance > 90, Accessibility > 95 |
| **G3: Deployment** | VERIFY dimension: works on target (Hostinger/Firebase) |

## When is Metacognition Triggered?

Not every request needs the full DSVSR cycle:

| Request Type | Metacognition Level |
|-------------|-------------------|
| Simple question | None — direct answer |
| Single file change | Minimal — verify only |
| New feature | Full DSVSR cycle |
| Architecture decision | Full DSVSR + ADR |
| Multi-file refactor | Full DSVSR + Plan file |

The `adk-orchestrator` classifies requests and determines the metacognition level before routing.

## Practical Impact

Without metacognition:
```
User: "Add authentication to my app"
Agent: *immediately writes Firebase Auth code*
Problem: Wrong auth flow for the use case, missing security rules
```

With metacognition:
```
User: "Add authentication to my app"
DECOMPOSE: Auth method? Social? Email? Anonymous? Role-based?
SOLVE: Email + Google social login (confidence: 0.80)
VERIFY: Need to know if admin roles exist (confidence drops: 0.70)
REFLECT: Ask user about role requirements
User: "Just email login, no roles"
SOLVE: Email auth with Firebase Auth SDK (confidence: 0.97)
OUTPUT: Complete implementation with security rules
```

The extra 30 seconds of reasoning prevents hours of rework.

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
