---
description: "Debug and fix issues with root cause analysis — from symptom to verified fix"
---

# /repair

## Purpose
Systematically diagnose and fix bugs, errors, or unexpected behavior using root cause analysis. Every fix must address the underlying cause, not just the symptom, and include a regression test.

## Workflow

### Phase 1: Symptom Collection
**Agent**: `adk-orchestrator`
**Skills**: `input-analysis`, `code-review`

1. Gather bug report details (what happens, what should happen, steps to reproduce)
2. Identify the affected component, page, or feature
3. Collect error messages, console output, and network responses
4. Determine environment (browser, device, hosting target, Firebase project)
5. Classify severity (critical/high/medium/low) and impact scope

### Phase 2: Diagnosis
**Agent**: `{relevant-specialist}`
**Skills**: `code-review`, `security-testing`, `performance-testing`

1. Reproduce the issue in development environment
2. Isolate the failing component or function
3. Trace execution flow from trigger to failure point
4. Check for common causes:
   - Firebase: Security rules blocking, missing indexes, quota exceeded
   - Frontend: CSS specificity conflicts, JS runtime errors, async timing
   - Deployment: Missing files, incorrect paths, CORS misconfiguration
   - Auth: Token expiration, permission mismatch, session handling
5. Identify root cause with evidence `[CODE]` or `[CONFIG]` tag

### Gate: Root Cause Identified
- [ ] Issue is reproducible (or documented as intermittent with conditions)
- [ ] Root cause identified with evidence tag
- [ ] Affected scope mapped (what else could this cause impact)
- [ ] Fix approach defined before implementation

### Phase 3: Fix Implementation
**Agent**: `{relevant-specialist}`
**Skills**: `vanilla-javascript`, `css-architecture`, `firestore-security-rules`, `firebase-auth`, `cloud-functions`

1. Implement the minimal fix that addresses root cause (not a workaround)
2. Follow existing code conventions and patterns
3. Add defensive coding where appropriate (null checks, fallbacks, validation)
4. Update error handling to prevent silent failures
5. Add inline comments explaining the fix and why it was needed
6. Tag the fix with evidence: `[CODE]` for code-level, `[CONFIG]` for configuration

### Phase 4: Verification
**Agent**: `quality-engineer`
**Skills**: `unit-testing`, `e2e-testing`, `cross-browser-testing`

1. Write a regression test that would have caught this bug
2. Verify the fix resolves the reported symptom
3. Run full test suite to confirm no regressions
4. Test edge cases related to the fix
5. Verify on the target deployment environment (Hostinger or Firebase Hosting)
6. Check related components for similar vulnerabilities

### Gate: Fix Verification
- [ ] Original issue no longer reproduces
- [ ] Regression test written and passing
- [ ] Full test suite passes (no regressions)
- [ ] Fix works on target deployment environment
- [ ] Related components checked for similar issues

## Output
- Root Cause Analysis report (symptom, diagnosis, root cause with evidence)
- Fix implementation (minimal, targeted code changes)
- Regression test (prevents recurrence)
- Post-fix verification results
- Lessons learned note (what to watch for in future)
