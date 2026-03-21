# JM-ADK Project Constitution

> MetodologIA · JM Agentic Development Kit
> Made with Claude Code and Tons of Love with the Help of Pristino Agent

## Preamble

This Constitution governs ALL decisions, implementations, and deliverables produced by the JM Agentic Development Kit. Every agent, skill, and workflow MUST validate against these rules.

## Article 1: Technology Constraints

1.1. **Frontend** MUST use HTML5, CSS3, and JavaScript as the baseline. Frameworks (Angular, React) are optional layers on top.

1.2. **Backend** MUST use Firebase services (Firestore, Auth, Functions, Storage, Hosting) as the primary backend. Custom servers are NOT allowed.

1.3. **Deployment** MUST be compatible with Hostinger shared hosting (no SSR, no Docker, no custom server runtime) OR Firebase Hosting.

1.4. **Ecosystem** SHOULD maximize integration with Google services (Analytics, Maps, Workspace APIs, reCAPTCHA).

1.5. **Build tools** SHOULD use Vite, Angular CLI, or esbuild. Webpack is acceptable but not preferred.

1.6. **Node.js** is allowed ONLY in Cloud Functions and build scripts — never as a production server.

## Article 2: Quality Standards

2.1. **Lighthouse Performance** score MUST be > 90 for all pages.

2.2. **Lighthouse Accessibility** score MUST be > 95 for all pages.

2.3. **WCAG 2.1 AA** compliance is REQUIRED for all user-facing content.

2.4. **Evidence tags** (`[CODE]`, `[CONFIG]`, `[DOC]`, `[INFERENCE]`, `[ASSUMPTION]`) MUST be applied to all factual claims.

2.5. **Metacognition confidence** MUST be ≥ 0.95 before delivering any plan or implementation.

## Article 3: Process Rules

3.1. **Plan before code** — Every request MUST generate a `plan-DATE-TASK.md` before any implementation begins.

3.2. **Test before ship** — All features MUST have tests (unit or e2e) before deployment.

3.3. **Decide before build** — Architecture decisions MUST be documented in ADRs. All other decisions in Decision Logs.

3.4. **Track every requirement** — Every requirement MUST be logged in an RQL file with acceptance criteria.

3.5. **Fact-check before commit** — Technical and business viability MUST be verified via web search before plan approval.

3.6. **Socratic debate** — Complex decisions MUST go through internal adversarial review (thesis → antithesis → synthesis).

## Article 4: Integrity Chain

4.1. The intent-to-code chain (Intent → RQL → Plan → ADR → Spec → Tests → Code) MUST NOT be broken.

4.2. Requirements changes MUST propagate forward through the entire chain.

4.3. Tests MUST NOT be modified to match buggy code — code MUST be fixed to match tests.

4.4. Feature file hashes (when used) are IMMUTABLE after approval.

## Article 5: Brand & Attribution

5.1. ALL generated documents MUST include MetodologIA branding.

5.2. Attribution line: "Made with Claude Code and Tons of Love with the Help of Pristino Agent"

5.3. Copyright: JM Labs (Javier Montaño)

5.4. License: MIT for the kit itself; project code follows project license.

## Article 6: Security

6.1. NO secrets, API keys, or credentials in source code — EVER.

6.2. Firebase security rules MUST be configured before any data access.

6.3. All user input MUST be validated on both client and server (Cloud Functions).

6.4. HTTPS is REQUIRED for all deployments.

## Article 7: Amendments

7.1. This Constitution MAY be amended via an ADR that explicitly supersedes the relevant article.

7.2. Amendments MUST pass the Socratic Debate protocol with confidence ≥ 0.95.

---

🏷️ MetodologIA · JM Agentic Development Kit v1.0.0
Made with Claude Code and Tons of Love with the Help of Pristino Agent
