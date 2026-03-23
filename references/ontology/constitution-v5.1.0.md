<!-- Sync Impact Report
Version: 5.1.0 (Workspace + Indexability + Auto-Organization)
Added principles:
  - XVII. Continuous Learning Loop
  - XVIII. Indexable & Self-Organizing Repository
Added sections:
  - Workspace (new top-level section)
  - Session Protocol (new top-level section)
  - Operational Logs (new top-level section)
Modified sections:
  - VII. Secure by Default: added audit trail qualification
  - Quality Standards: added indexability and workspace rules
  - Governance: added workspace, indexability, continuous learning,
    operational logs, session protocol governance
Previous version: 4.1.0 (Socratic Hardening)
Origin: User request for scalable workspace interaction layer,
  estandares/ migration, and repo-wide indexability
Removed sections: None
Follow-up TODOs:
  - Update plan.md with worktree branching strategy
  - Define BDD scenario coverage matrix per principle
  - Downstream specs may need testify re-run for new BDD scope
  - Add README.md to all existing directories lacking one
-->

# Site MetodologIA Constitution

## Work Philosophy

These meta-principles govern HOW all other principles are
applied. They are the permanent operating pattern for every
decision, every line of code, and every artifact produced.

### XIII. Think First, Act Next

No action without understanding. Every task begins with
analysis, decomposition, and explicit reasoning before any
code is written or any change is made.

- **Understand before modifying**: read existing code,
  understand the context, identify the boundaries of change
  BEFORE writing anything
- **Decompose before solving**: break complex problems into
  atomic sub-problems. Address each with explicit reasoning.
  Combine results with awareness of interactions
- **Verify before committing**: logic check, fact check,
  completeness check, bias check. If confidence in the
  approach is low, seek more information — do not proceed
  on assumption
- **Specify before implementing**: requirements (WHAT) must
  exist before plans (HOW), and plans must exist before
  code. Phase separation is non-negotiable:
  Constitution (WHY) > Spec (WHAT) > Plan (HOW) >
  Tasks (WORK) > Tests (PROOF) > Code (SOLUTION)
- **Evidence before assertion**: every claim about behavior,
  performance, or correctness is tagged with its basis:
  `[CODE]` `[CONFIG]` `[DOC]` `[INFERENCE]` `[ASSUMPTION]`
- If more than 30% of claims in a deliverable are tagged
  `[ASSUMPTION]`, the deliverable MUST display a prominent
  warning and trigger clarification before proceeding

**Rationale**: The most expensive code is code that solves
the wrong problem. Think First prevents the waste of
building before understanding.

### XIV. Simple First, Robust Next

Start with the simplest solution that satisfies the
requirement. Add robustness only when the simple version
is proven insufficient through evidence — never
preemptively.

- **Working beats perfect**: a simple, tested, working
  solution today is better than an over-engineered solution
  that takes three times longer to deliver
- **Progressive refinement**: build the minimum viable
  implementation first. Observe its behavior in practice.
  Add complexity only where observed failure or measured
  inadequacy demands it
- **No premature abstraction**: three similar lines of code
  are better than a premature utility function. Abstract
  only when the pattern has repeated enough to prove the
  abstraction is warranted
- **No speculative features**: do not build for hypothetical
  future requirements. Build for the current requirement
  and ensure the design is extensible (Principle XII) so
  future needs can be added when they become real
- **Complexity requires justification**: any solution that
  is more complex than the simplest alternative MUST
  document why the simpler approach was insufficient.
  The burden of proof is on complexity, not simplicity

**Rationale**: Unnecessary complexity is the primary source
of maintenance burden, onboarding friction, and bugs in
long-lived codebases.

## Core Principles

### I. Client-Rendered, Cloud-Backed

The site is a client-rendered application backed by a managed
Backend-as-a-Service (BaaS) provider.

- Pages render entirely in the browser — no SSR framework
- Editable content stored in cloud document store, fetched at runtime
- Static HTML provides shell; cloud provides data
- Degraded mode when backend unreachable — cached/fallback content, never blank
- No custom servers — only managed cloud services

### II. Accessibility-First

Every page must be usable by people with disabilities.

- All interactive elements keyboard-navigable
- Modals use proper ARIA attributes
- Skip-to-content links on every page
- Color contrast meets minimum thresholds
- Images have meaningful alt text
- Admin interfaces also meet accessibility standards

### III. SEO Integrity

Every public page must be discoverable and correctly described.

- Required meta tags: description, robots, canonical, Open Graph, Twitter Card
- Internal/admin pages marked noindex
- Sitemap reflects actual structure
- Dynamic content present in DOM before crawl timeout

### IV. Component Consistency

Shared UI patterns implemented once, reused everywhere.

- Site-wide elements use web components
- Modal behavior uses unified system
- CSS follows token and layering system
- Backend access through centralized service modules
- i18n uses single `data-i18n` attribute contract

### V. Brand Separation

MetodologIA is a distinct brand. No mixing with other brands.

- No references to parent companies in public content
- Visual identity consistently MetodologIA
- Program names match defined catalog exactly

### VI. Content Authority

Editable content has a single source of truth.

- Each content piece lives in exactly one place
- Migration: authority shifts incrementally, never both simultaneously
- Content schema documented and validated
- Bilingual content (ES/EN) stored together
- Admin changes take effect immediately

### VII. Secure by Default

Access control at data layer. Input sanitized at boundary.
Security verified both statically and at runtime.

- Backend security rules enforce least-privilege
- Managed identity provider for auth
- No secrets in client-side code
- Role-based authorization for admin
- Security rules version-controlled and tested
- **Input sanitization default**: strip HTML tags (DOMParser),
  not escape, not allowlist. `<script>` and `<style>` removed
  with content. No external libraries unless rich text justified per XIV
- **Dual-layer verification**: static analysis (grep/scan) +
  runtime inspection (browser evaluation)
- **Audit trail qualification**: audit log entries MUST use
  fully qualified paths (collection, document, field, variant)
  — e.g., `programs/diagnostico.description_es`. Generic field
  names are insufficient for recovery

### VIII. Offline Resilience

Site degrades gracefully when connectivity impaired.

- Client-side caching for intermittent connectivity
- Critical content cached for offline after first visit
- Clear cache invalidation strategy
- Last known good content displayed, never error state

### IX. Test-Driven Development

All production code preceded by tests. Red-green-refactor workflow.

- Tests written BEFORE production code
- ATDD: feature behavior as executable Given/When/Then
- E2E covers critical journeys
- Security rules tested against emulator
- Assertions MUST NOT be modified to pass — fix code instead
- Feature files hash-locked
- Tests run in automation (CI/pre-commit)

### X. Design System Governance

Documented design system with canonical tokens.

- **Aesthetic**: Neo-Swiss Clean
- **Palette**: Navy #122562, Gold #FFD700, Blue #137DC5, Dark #1F2833, Lavender #BBA0CC, Gray #808080
- **Typography**: Poppins (headings), Trebuchet (body), Futura (footnotes)
- Tokens in single source of truth (CSS custom properties)
- Dark/light variants comply with palette and contrast

### XI. Brand Voice Integrity

MetodologIA Brand Voice v3.0 — method-driven, evidence-based.

- **Structure**: Minto pyramid (conclusion first, MECE supports, evidence, CTA)
- **Language**: Spanish (Latin American neutral, "tu" form)
- **Prohibited**: "hack", "truco", "secreto", "resultados instantaneos", "arquitecto", "arquitectura", "transformacion"
- **Preferred**: "metodo", "disenar/diseno", "sistemas", "gobernanza", "(R)Evolucion"

### XII. Code Sustainability

Code written for the next maintainer, not the current author.

- Business-readable naming
- Consistent naming conventions (kebab-case slugs)
- Self-documenting file structure
- README per significant module
- No dead code, no magic numbers
- Extensible without rewrite
- Modules communicate through documented contracts

### XV. BDD Full-Spectrum Quality

BDD scenarios cover every quality angle, not just functional.

- **Coverage angles**: Strategic, Tactical, Operational, Technical, UX, UI, Backend, Middleware, Data, DevSecOps, CI/CD
- Given/When/Then as specification language, written BEFORE code
- Traceability: every scenario → requirement (FR-XXX) → success criterion (SC-XXX) → principle
- **Runner-agnostic**: Playwright for browser, Vitest for code invariants, Firebase Emulator for rules
- **Socratic debate for ambiguity**: resolve before implementation, record in `tests/clarifications.md`

### XVI. Parallel-Ready Workflow

Development structured for parallel execution via isolated branches.

- Branch-per-task isolation
- Worktree-based parallelism
- Atomic, independently mergeable units
- Contract-first integration
- Short-lived branches, no force-pushing

### XVII. Continuous Learning Loop

Every decision, debate, and discovery feeds back into the
system as a reusable insight. The project compounds knowledge.

- **Socratic debate as decision engine**: 2+ options with
  divergent consequences → structured debate → eliminate by
  contradiction → record surviving answer
- **Three outputs per debate**: (1) direct answer, (2) refinements
  to original question, (3) coverage gaps in adjacent territory
- **Insights capture**: extract reusable patterns to
  `insights/<domain>.md` with origin, pattern, rationale,
  trigger conditions, constitutional anchor. Universal patterns
  in `insights/universal.md`
- **Constitution evolution**: recurring ambiguity → amend
  constitution to prevent recurrence
- **Insight consultation before debate**: check `insights/`
  before starting new debate. If prior insight applies, cite it
- **No knowledge loss**: insights never deleted — updated or
  superseded with reference to replacement

**Rationale**: A project that doesn't learn from its own
decisions is condemned to re-debate them. The compounding
effect means the project gets faster and more precise over
time, not slower.

### XVIII. Indexable & Self-Organizing Repository

Every directory MUST be navigable by reading only index files.

- **README per directory**: every directory MUST contain a
  README.md explaining purpose, contents, and relationships
- **Index-driven navigation**: root README links to top-level
  dirs; each dir README links to children. No orphan folders
- **Auto-organization**: new directories immediately get README.
  Files accumulating without structure get organized into
  named subdirectories
- **.gitignore governance**: every exclusion pattern has a
  comment explaining why
- **Workspace separation**: user interaction files in `workspace/`
  (gitignored). Repo contains only source, specs, governance
- **Staleness prevention**: directories >30 days without updates
  flagged for review. Empty dirs removed. Orphans relocated

**Rationale**: A 63+ page site with specs, insights, admin
interfaces, and workspace interactions can quickly become
unnavigable. README-per-directory is the cheapest possible
documentation.

## Workspace

The `workspace/` directory is the user's local interaction
layer. It is **gitignored**.

### Structure

```
workspace/
  README.md
  tasks/
    README.md
    TL-XXX-<slug>/
  estandares/
  YYYY-MM-DD-<slug>/
    README.md
    inputs/
    outputs/
    annexes/
```

### Rules

- Dated folders: `YYYY-MM-DD-<slug>` format
- Tasks bridge: tasklog.md items → `workspace/tasks/TL-XXX-<slug>/`
- Sessions older than 30 days reviewed for cleanup
- Every subfolder has a README

## Session Protocol

Every new working session MUST follow this sequence:

### 1. Context Loading
Load in order: CLAUDE.md → CONSTITUTION.md → insights/README.md → changelog.md → tasklog.md

### 2. State Recovery
Read last 5 changelog entries, all open tasklog items, tentative insights, git status

### 3. Pending Closure
List open tasks with age. Recommend close/continue/archive. Flag stale items (>7 days)

### 4. Next Steps Proposal
Analyze current state. Suggest 2-3 next steps ranked by impact. Include one improvement beyond current task

## Operational Logs

### changelog.md
```markdown
## YYYY-MM-DD
- **[type]**: description — rationale [Principle X, Y]
```
Types: `decision`, `completion`, `amendment`, `insight`, `blocker`, `discovery`

### tasklog.md
```markdown
| ID | Task | Status | Owner | Opened | Notes |
```
Statuses: `open`, `in-progress`, `blocked`, `deferred`
Items >14 days without progress MUST be reviewed.

## Quality Gates

| Gate | When | Criteria |
|------|------|----------|
| **G0** | Pre-flight | Secrets scan, branch created, constitution compliance |
| **G1** | After spec | Spec complete (FR/SC/Given-When-Then), evidence tags, checklist |
| **G2** | After plan | Data model, API contracts, security rules, BDD hash-locked, tokens |
| **G3** | Deploy-ready | All tests pass, Lighthouse >= 90, emulator tests, a11y audit, brand voice scan |

## Quality Standards

- No broken links or missing assets
- No console errors in production
- Mobile and desktop rendering correct
- Dynamic content within 2s on 3G or fallback
- Admin input HTML-stripped before storage
- Security invariants pass static + runtime verification
- Audit log paths fully qualified
- Data-layer behavior tested against Emulator, not browser E2E
- Every directory has README.md
- `.gitignore` has comments per exclusion
- `workspace/` is gitignored
- Directories >30 days without updates flagged
- Both language variants present before publish
- All scenarios have passing automated tests
- Design system tokens enforced
- Brand voice quality gate passed
- Evidence tags on all technical claims

## Development Workflow

### Think Phase
1. Read existing code, understand context
2. Decompose into atomic sub-problems
3. Verify spec/plan/tests exist
4. Identify applicable quality gate

### Act Phase
5. Write tests before code (TDD/ATDD)
6. Implement simplest passing solution
7. Refactor for clarity (red-green-refactor)
8. Verify against all BDD angles (XV)

### Verify Phase
9. Run full test suite
10. Check design token compliance
11. Scan for secrets, red-list terms, naming violations
12. Verify accessibility
13. Confirm quality gate met

### Integration Phase
14. Branch is atomic and mergeable
15. Resolve conflicts — never force-push
16. Run tests after rebase
17. Update sitemap, SEO, README if affected

## Governance

- **Amendments**: require owner approval, version increment, rationale
- **Conflicts**: accessibility, security, brand separation > convenience
- **Work philosophy** (XIII, XIV) governs all other principles
- **Test discipline** non-negotiable (IX)
- **Quality gates** mandatory (G0-G3)
- **Socratic debate** required for ambiguities with divergent consequences
- **Continuous learning** (XVII): debates → insights → amendments → fewer debates
- **Operational logs**: changelog.md + tasklog.md maintained across sessions
- **Session protocol** mandatory: context → recovery → closure → next steps
- **Insights before debate**: consult `insights/` first
- **Indexability** (XVIII): no folder merges without README
- **Workspace** gitignored, governed by its own README

**Version**: 5.1.0 | **Ratified**: 2026-03-22 | **Last Amended**: 2026-03-23
