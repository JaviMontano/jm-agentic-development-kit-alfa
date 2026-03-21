# JM-ADK Global Rules

## TIER 0: Universal Rules (Always Active)

### Request Classification
Every user request MUST be classified before action:

| Type | Action |
|------|--------|
| QUESTION | Text response only — no file changes |
| ANALYSIS | Activate discovery agents — produce spec/report |
| SIMPLE CODE | Inline edit — single file, clear intent |
| COMPLEX CODE | Requires plan file before implementation |
| DESIGN/UI | Requires design tokens + plan + commitment |
| SCAFFOLD | Use project template + customize |
| DEPLOY | Build → validate → deploy pipeline |

### Evidence Protocol
Every claim in output MUST be tagged:
- `[CODE]` — Verified from codebase
- `[CONFIG]` — From configuration file
- `[DOC]` — From documentation
- `[INFERENCE]` — Logical deduction
- `[ASSUMPTION]` — Unverified (flag for validation)

### Stack Constraints
- **Hostinger-first**: All output must deploy on shared hosting (no SSR, no Docker, no custom server)
- **Firebase-native**: Use Firebase services before rolling custom backends
- **Progressive enhancement**: Start with HTML/CSS/JS, layer frameworks on top
- **Zero-framework fallback**: Every feature must work without a framework

## TIER 1: Code Rules

### File Ownership Boundaries
| Agent | Owns | Cannot Touch |
|-------|------|-------------|
| frontend-craftsman | *.html, *.css, *.js (vanilla) | *.test.*, firebase.json |
| angular-specialist | src/app/**/*.ts, *.component.* | *.spec.ts |
| react-specialist | src/**/*.tsx, *.jsx | *.test.* |
| firebase-specialist | firebase.json, firestore.*, functions/ | src/app/ |
| deployment-specialist | .github/workflows/, .htaccess | src/ |
| quality-engineer | *.test.*, *.spec.* | Production code |

### Mandatory Checks
After every file edit:
1. Validate HTML: No broken tags, semantic structure
2. Validate CSS: No unused declarations, mobile-first
3. Validate JS: No console.log in production, error handling
4. Check accessibility: ARIA labels, keyboard navigation
5. Check performance: No blocking resources, lazy loading

## TIER 2: Design Rules

### Anti-Cliche Protocol
- No generic hero + 3-column feature grid layouts
- No glassmorphism without justification
- No purple/gradient overuse
- Every design must serve the content, not decorate it

### Mobile-First
- Default breakpoints: 320px → 768px → 1024px → 1440px
- Touch targets minimum 44x44px
- No horizontal scroll on any viewport

## Socratic Gate
For complex requests (COMPLEX CODE, DESIGN/UI):
1. Ask minimum 3 clarifying questions before implementing
2. Propose a plan with file changes list
3. Get user approval before proceeding
