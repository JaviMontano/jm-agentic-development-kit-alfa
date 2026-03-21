---
description: "Improve existing code without degrading quality — refactor, optimize, and modernize"
---

# /evolve

## Purpose
Improve existing code through refactoring, optimization, or modernization while guaranteeing no regression in functionality, performance, or accessibility. Every change must leave the codebase measurably better.

## Workflow

### Phase 1: Baseline Measurement
**Agent**: `quality-guardian`
**Skills**: `performance-testing`, `accessibility-testing`, `code-review`

1. Read and understand the target code (read before write — always)
2. Run current test suite and record pass/fail counts
3. Capture Lighthouse scores (Performance, Accessibility, Best Practices)
4. Measure bundle size and load time
5. Document current code quality metrics (complexity, duplication, lint warnings)
6. Save baseline snapshot for comparison

### Phase 2: Improvement Planning
**Agent**: `architecture-designer`
**Skills**: `component-architecture`, `trade-off-analysis`, `system-architecture`

1. Identify improvement opportunities:
   - Performance bottlenecks (render blocking, large bundles, unnecessary re-renders)
   - Accessibility gaps (missing ARIA, poor contrast, keyboard traps)
   - Code smell elimination (duplication, long functions, deep nesting)
   - Modernization (ES6+, CSS custom properties, Web APIs)
   - Security hardening (input sanitization, CSP, auth improvements)
2. Prioritize by impact-to-effort ratio
3. Define the improvement scope (targeted, not boil-the-ocean)
4. Create a change plan with rollback strategy

### Gate: Change Plan Approval
- [ ] Improvement scope is clearly defined
- [ ] Each change has expected impact documented
- [ ] Rollback strategy exists for each change
- [ ] No change violates Hostinger deployment constraints
- [ ] Changes are independent and can be verified individually

### Phase 3: Execute Improvements
**Agent**: `{relevant-specialist}`
**Skills**: `css-architecture`, `vanilla-javascript`, `build-optimization`, `image-optimization`, `responsive-design`

1. Apply improvements one category at a time (not all at once)
2. After each change, run tests to confirm no regression
3. Use progressive enhancement principles (don't break the baseline)
4. Maintain backward compatibility with existing integrations
5. Update documentation and JSDoc for changed interfaces
6. Add evidence tags for architectural decisions made during refactoring

### Phase 4: Regression Verification
**Agent**: `quality-engineer`
**Skills**: `unit-testing`, `e2e-testing`, `performance-testing`, `visual-regression`

1. Run full test suite — all previous tests must still pass
2. Run Lighthouse audit — scores must be equal or better than baseline
3. Compare bundle size — must not exceed baseline by more than 5%
4. Verify visual regression — no unintended layout changes
5. Test on multiple breakpoints (mobile, tablet, desktop)
6. Confirm all critical user flows still work

### Gate: Evolution Gate
- [ ] All pre-existing tests pass
- [ ] Lighthouse scores are equal or better than baseline
- [ ] Bundle size within 5% of baseline (or smaller)
- [ ] No visual regressions detected
- [ ] New improvements have test coverage
- [ ] Evidence tags present on decisions

## Output
- Baseline vs. After comparison report (metrics, scores, sizes)
- List of improvements applied with impact measurement
- Updated code with improved quality
- New or updated tests covering changes
- Rollback instructions (if any change needs to be reverted)
