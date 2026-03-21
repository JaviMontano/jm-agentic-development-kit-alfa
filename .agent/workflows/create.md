---
description: "Create new component or feature with intelligent agent routing"
---

# /create

## Purpose
Create a new component, feature, or module by automatically routing to the most appropriate specialist agent based on the request, then scaffolding, implementing, and testing it within the existing project structure.

## Workflow

### Phase 1: Request Classification
**Agent**: `adk-orchestrator`, `skill-router`
**Skills**: `input-analysis`, `discovery-orchestration`

1. Parse the creation request (component type, framework, feature domain)
2. Search skills catalog for matching capabilities (BM25 skill search)
3. Route to appropriate specialist agent:
   - HTML/CSS layout → `frontend-craftsman`
   - Angular component → `angular-specialist`
   - React component → `react-specialist`
   - Vanilla JS module → `vanilla-js-specialist`
   - Firebase service → `firebase-specialist`
   - Cloud Function → `node-specialist`
   - API endpoint → `api-designer`
4. Load relevant skills and context for the specialist

### Phase 2: Design
**Agent**: `{routed-specialist}`
**Skills**: `component-architecture`, `design-system`, `api-design`

1. Define component interface (inputs, outputs, events)
2. Identify dependencies and integration points
3. Check for existing patterns in the codebase to maintain consistency
4. Define file structure (component, styles, tests, types)
5. Document component API before implementation

### Phase 3: Implement
**Agent**: `{routed-specialist}`
**Skills**: `html-semantic`, `css-architecture`, `vanilla-javascript`, `firebase-auth`, `firestore-modeling`

1. Create component files following project conventions
2. Implement HTML structure with semantic markup
3. Write CSS styles following existing architecture (BEM/utility/custom properties)
4. Add JavaScript behavior (event handlers, state, API calls)
5. Connect to Firebase services if needed (Firestore, Auth, Storage)
6. Ensure progressive enhancement (works without JS where feasible)

### Gate: Implementation Quality
- [ ] Component follows existing project conventions
- [ ] HTML is semantic and accessible (ARIA labels, roles)
- [ ] CSS is responsive across breakpoints
- [ ] No hardcoded values (uses CSS custom properties / config)
- [ ] Evidence tags on any architectural decisions

### Phase 4: Test & Integrate
**Agent**: `quality-engineer`
**Skills**: `unit-testing`, `accessibility-testing`, `cross-browser-testing`

1. Write unit tests for component logic
2. Verify accessibility (keyboard navigation, screen reader, contrast)
3. Test responsive behavior across breakpoints (mobile, tablet, desktop)
4. Integrate component into existing page/route structure
5. Run linting and formatting checks

## Output
- New component/feature files (HTML, CSS, JS/TS)
- Unit tests for the component
- Updated route/page integration (if applicable)
- Component API documentation (inline JSDoc or README section)
