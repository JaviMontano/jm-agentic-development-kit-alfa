---
name: parallel-workflow
author: JM Labs (Javier Montaño)
version: 1.0.0
description: >
  Parallel development using git worktrees, branch-per-task isolation, contract-first
  integration, and atomic mergeable units. Enables multi-agent or multi-developer
  concurrent work without merge conflicts.
  Trigger: "parallel work", "worktree", "concurrent development", "branch strategy", "contract-first"
allowed-tools:
  - Read
  - Glob
  - Grep
  - Bash
---

# Parallel Workflow

> "Parallelism without contracts is just concurrent chaos."

## TL;DR

Structures development for safe parallel execution across independent work streams using git worktrees (Constitution XVI). Each task gets its own branch and worktree. Parallel streams agree on interface contracts BEFORE implementation begins. Branches are atomic, short-lived, and independently mergeable. Designed for multi-agent workflows where human + AI agents work concurrently.

## Procedure

### Step 1: Discover
- Read the plan file to identify all tasks
- Map task dependencies: which tasks are truly independent?
- Identify integration points: where do parallel streams need to agree on interfaces?
- Check current git state: clean working tree, up-to-date with remote

### Step 2: Analyze
- Group tasks into independent work streams (no shared file dependencies)
- For each integration point, define the contract: API signatures, data shapes, event names, component interfaces
- Plan merge order: independent tasks first, integration tasks last
- Assess risk: which parallel streams are most likely to conflict?

### Step 3: Execute
- Create worktrees for independent streams:
  ```bash
  # Create worktree for each independent task
  git worktree add ../task-auth feat/auth
  git worktree add ../task-dashboard feat/dashboard
  git worktree add ../task-api feat/api-contracts
  ```
- Define contracts before parallel work begins:
  ```typescript
  // contracts/user-api.ts — agreed interface
  export interface UserService {
    getUser(id: string): Promise<User>;
    updateUser(id: string, data: Partial<User>): Promise<void>;
  }
  ```
- Each worktree works independently, running its own tests
- Merge sequence: contracts first → independent implementations → integration tests
  ```bash
  # Merge in dependency order
  git checkout main
  git merge feat/api-contracts    # Contracts first
  git merge feat/auth             # Independent impl
  git merge feat/dashboard        # Independent impl
  ```

### Step 4: Validate
- All worktrees merge cleanly into main
- Contract tests pass after integration
- No interface drift between parallel streams
- All quality gates (G0-G3) pass on the merged result
- Clean up worktrees after merge:
  ```bash
  git worktree remove ../task-auth
  git worktree remove ../task-dashboard
  ```

## Quality Criteria

- [ ] Tasks decomposed into independent work streams
- [ ] Interface contracts defined before parallel work begins
- [ ] Git worktrees used for isolation (not just branches)
- [ ] Each branch is atomic and independently mergeable
- [ ] No long-lived feature branches (merge within sprint)
- [ ] Contract tests verify integration points
- [ ] All quality gates pass on merged result
- [ ] Worktrees cleaned up after merge
- [ ] Evidence tags applied to all claims

## Anti-Patterns

| Anti-Pattern | Why It's Bad | Do This Instead |
|-------------|-------------|-----------------|
| Parallel work without contracts | Integration breaks on merge | Define interfaces BEFORE parallel work |
| Long-lived feature branches | Merge hell, context loss | Keep branches short-lived, merge frequently |
| Force-pushing to shared branches | Destroys others' work history | Use merge commits, never force-push |
| Worktrees without cleanup | Disk bloat, stale references | Remove worktrees after merge |
| Assuming no conflicts | Blind optimism | Assess shared file risk before parallelizing |

## Related Skills

- `discovery-orchestration` — Identifies parallel execution opportunities in pipelines
- `api-design` — Defines API contracts for integration points
- `component-architecture` — Defines component interfaces for UI integration
- `github-actions-ci` — CI pipeline that validates merged result
