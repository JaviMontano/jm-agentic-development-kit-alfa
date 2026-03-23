# Creating Custom Agents

How to add specialist agents to JM-ADK.

## Agent Anatomy

Every agent is a single markdown file in `agents/{agent-name}.md`:

### Frontmatter (Required)

```yaml
---
name: my-agent
description: "Short description for routing (shown in agent lists)"
tools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
  - Bash
  - Agent
model: inherit
---
```

| Field | Purpose |
|-------|---------|
| `name` | Kebab-case identifier |
| `description` | One-line summary — used by the orchestrator for routing |
| `tools` | Which Claude Code tools this agent can use |
| `model` | `inherit` (use parent's model), `sonnet`, `opus`, or `haiku` |

### Body Structure

```markdown
# Agent Title

> "Optional quote that captures the agent's philosophy"

## Role

Detailed description of:
- What this agent does
- When it gets activated
- What kind of requests it handles
- Its boundaries (what it does NOT do)

## Skills

| Skill | Purpose |
|-------|---------|
| `skill-a` | Primary skill for X |
| `skill-b` | Used when Y |
| `skill-c` | Fallback for Z |

## Decision Framework

1. **Analyze** — Understand the request, read context
2. **Evaluate** — Choose approach, weigh trade-offs
3. **Act** — Execute using assigned skills
4. **Verify** — Validate output against quality criteria

## Anti-Patterns

- Never do X because...
- Avoid Y when...
- Don't assume Z without...

## Output Standards

- Evidence tags: `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- Format: Markdown with code blocks
- Language: English (technical), Spanish (client-facing)
```

## Step-by-Step: Create an Agent

### 1. Define the Scope

| Question | Answer |
|----------|--------|
| What requests trigger this agent? | e.g., "GraphQL schema design" |
| What 3-5 skills does it use? | e.g., `api-design`, `database-design`, `typescript-patterns` |
| What tools does it need? | e.g., Read, Write, Edit, Glob, Grep |
| What does it NOT do? | e.g., "Does not implement resolvers — hands off to `node-specialist`" |

### 2. Create the File

Write `agents/my-agent.md` following the pattern above.

### 3. Wire It to the Orchestrator

The `adk-orchestrator` routes requests based on agent `description` fields. Make sure your description clearly states what the agent handles:

```yaml
# Good — specific and actionable
description: "GraphQL schema design, type definitions, and query optimization"

# Bad — vague
description: "Handles GraphQL stuff"
```

### 4. Map Skills

Each agent should own 3-5 skills. This creates a clear chain:

```
User Request → Orchestrator → Agent → Skills → Output
```

### 5. Test Routing

```bash
# Ask something that should route to your agent
/jm-adk:auto input="Design a GraphQL schema for user management"

# The orchestrator should pick your agent
```

## Real Example: `payment-specialist` Agent

```yaml
---
name: payment-specialist
description: "Payment integration, Stripe/PayPal setup, checkout flows, subscription billing"
tools:
  - Read
  - Write
  - Edit
  - Glob
  - Grep
  - Bash
model: inherit
---

# Payment Specialist

> "Money is a terrible master but an excellent servant." — P.T. Barnum

## Role

Handles all payment-related development:
- Payment gateway integration (Stripe, PayPal, MercadoPago)
- Checkout flow design and implementation
- Subscription and recurring billing
- Webhook handling for payment events
- PCI compliance considerations for client-side code

**Boundaries**: Does not handle accounting logic, invoicing systems,
or tax calculations beyond basic VAT/sales tax. Hands off to
`node-specialist` for complex backend billing logic.

## Skills

| Skill | Purpose |
|-------|---------|
| `payment-integration` | Gateway setup, SDK config, API keys |
| `form-engineering` | Secure payment forms, card inputs |
| `webhook-handling` | Payment event processing |
| `firebase-auth` | User authentication for purchases |
| `security-architecture` | PCI compliance, token handling |

## Decision Framework

1. **Analyze** — Identify payment provider, billing model (one-time, subscription, usage-based), and compliance requirements
2. **Evaluate** — Select integration pattern (client-side, server-side, hybrid). Prefer client-side tokenization for PCI scope reduction
3. **Act** — Implement using the selected provider's SDK. Always use test mode first
4. **Verify** — Test with provider's test cards. Verify webhook signature validation. Check no raw card data touches our servers

## Anti-Patterns

- Never store raw card numbers — always use tokenization [CODE]
- Never skip webhook signature verification — replay attacks are real [DOC]
- Never use test keys in production — use environment variables [CONFIG]
- Never implement custom encryption for payment data — use provider SDKs [DOC]

## Output Standards

- Evidence tags on all security claims
- Code includes test card numbers in comments for QA
- Webhook handlers include idempotency checks
- All API keys referenced via environment variables, never hardcoded
```

## Agent Design Principles

1. **Specialist, Not Generalist** — Each agent owns a specific domain. Overlap is OK but primary ownership must be clear.
2. **3-5 Skills** — Enough to be useful, few enough to be focused.
3. **Clear Boundaries** — Document what the agent does NOT do. This is as important as what it does.
4. **Handoff Protocol** — When a request exceeds the agent's scope, it should explicitly hand off to another agent (via the orchestrator).
5. **Evidence-First** — Agents must tag all factual claims. No exceptions.

## Agent Hierarchy

```
adk-orchestrator (router)
├── pipeline-conductor (workflow sequencing)
├── skill-router (BM25 matching)
├── quality-guardian (gate enforcement)
├── context-manager (token optimization)
│
├── Discovery Agents (20)
│   ├── requirements-analyst
│   ├── domain-modeler
│   └── ...
│
├── Architecture Agents (20)
│   ├── architecture-designer
│   ├── api-designer
│   └── ...
│
├── Development Agents (35)
│   ├── frontend-craftsman
│   ├── angular-specialist
│   ├── react-specialist
│   ├── firebase-specialist
│   └── ...
│
├── Quality Agents (12)
│   ├── quality-engineer
│   ├── accessibility-auditor
│   └── ...
│
└── Deployment Agents (5)
    ├── deployment-specialist
    └── ...
```

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
