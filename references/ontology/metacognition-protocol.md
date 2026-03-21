# JM-ADK Metacognition Protocol

> "Think about how you think before you act."

## Confidence Threshold

**Minimum global confidence: 0.95**

No response, plan, or implementation may be delivered with confidence below 0.95.
If confidence < 0.95, the agent MUST trigger the Reflection Loop.

## Mandatory Reasoning Flow

### For EVERY complex request, execute this protocol:

### 1. DECOMPOSE (Descomponer)

Divide the problem into atomic sub-problems:
- What are the independent components?
- What dependencies exist between them?
- What is the logical resolution order?
- What information from the conversation history applies?

**Output**: Numbered list of sub-problems with dependency graph.

### 2. SOLVE (Resolver)

Address each sub-problem with EXPLICIT CONFIDENCE:
- Assign confidence level (0.0 - 1.0) to each partial answer
- Justify the confidence level briefly
- Identify what additional information would increase confidence
- For confidence < 0.8: trigger WebSearch for fact-checking

**Output**: Solution per sub-problem with confidence score.

### 3. VERIFY (Verificar)

For each partial solution, validate:
- [ ] **LOGIC**: Is the reasoning coherent? No circular arguments?
- [ ] **FACTS**: Are assertions verifiable? Checked against web sources?
- [ ] **COMPLETENESS**: Have all aspects been considered?
- [ ] **BIAS**: Are cognitive biases influencing the answer?
- [ ] **TECHNICAL VIABILITY**: Can this actually be built with Firebase + HTML/CSS/JS?
- [ ] **BUSINESS VIABILITY**: Does this make business sense?

**Output**: Verification checklist with pass/fail per criterion.

### 4. SYNTHESIZE (Sintetizar)

Combine partial solutions using WEIGHTED CONFIDENCE:
- Higher weight to high-confidence sub-answers
- Identify residual uncertainty points
- Clearly mark what is CERTAINTY vs HYPOTHESIS
- Apply evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`

**Output**: Integrated answer with global confidence score.

### 5. REFLECT (Reflexionar)

```
IF global_confidence < 0.95:
    - Identify the MAIN WEAKNESS in the reasoning
    - Trigger Socratic Debate (internal adversarial review)
    - Propose what information would resolve uncertainty
    - Re-run SOLVE with additional WebSearch
    - If still < 0.95: WARN user with explicit uncertainty disclosure
```

**Output**: Reasoning metadata block.

## Socratic Debate Protocol

Before finalizing any plan or architecture decision:

1. **Thesis**: State the proposed approach clearly
2. **Antithesis**: Argue AGAINST the proposal — what could go wrong?
3. **Counter-evidence**: Search for real-world failures of similar approaches
4. **Synthesis**: Reconcile thesis and antithesis into a stronger position
5. **Confidence Update**: Recalculate confidence after debate

The debate must consider:
- Technical feasibility (can Firebase handle this?)
- Hostinger constraints (no SSR, no Docker, shared hosting limits)
- Business viability (does the cost/benefit make sense?)
- Time-to-market (is this the fastest path to value?)

## Fact-Checking Protocol

For EVERY plan and architecture decision:

1. **WebSearch** for similar implementations and their outcomes
2. **Verify** Firebase quotas and limits apply to the use case
3. **Verify** Hostinger supports the deployment strategy
4. **Check** if proposed libraries/tools are actively maintained
5. **Validate** pricing assumptions for third-party services

## Reasoning Metadata (Required at end of complex responses)

```
---
📊 REASONING METADATA:
• Global confidence: [0.0-1.0]
• Sub-problem confidences: [list]
• Sources consulted: [web searches, docs, code]
• Weaknesses identified: [if any]
• Socratic debate: [conducted/skipped]
• Reasoning mode: [exploratory | analytical | executive]
• Evidence tags applied: [yes/no]
---
```

## For Simple Questions

Skip the full protocol but maintain:
- Clarity and precision
- Implicit confidence level
- Relevant caveats
- Evidence tags on any factual claim

## Integration with Agents

Every agent in JM-ADK MUST:
1. Read this protocol at session start
2. Apply DECOMPOSE→SOLVE→VERIFY→SYNTHESIZE→REFLECT to complex tasks
3. Never deliver a response with global confidence < 0.95
4. Include reasoning metadata on complex responses
5. Trigger WebSearch when facts need verification
