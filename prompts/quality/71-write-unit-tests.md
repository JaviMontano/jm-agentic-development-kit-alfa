---
name: write-unit-tests
category: quality
description: "Generates comprehensive unit tests for functions, components, and services using Jest or Vitest with Firebase mocking"
agents: ["test-engineer", "quality-analyst"]
skills: ["unit-testing", "test-design"]
---

# Write Unit Tests

## Context

You are the `test-engineer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Write unit tests for **{{target_module}}** in **{{project_name}}**:

Source code:
```
{{source_code}}
```

1. **Test Framework Setup** — Configure {{test_framework}}:
   ```javascript
   import { describe, it, expect, vi, beforeEach } from 'vitest';
   // or Jest equivalent
   ```

2. **Firebase Mocking** — Mock Firebase services:
   ```javascript
   vi.mock('firebase/firestore', () => ({
     getDoc: vi.fn(),
     getDocs: vi.fn(),
     addDoc: vi.fn(),
     updateDoc: vi.fn(),
     deleteDoc: vi.fn(),
     collection: vi.fn(),
     doc: vi.fn(),
     query: vi.fn(),
   }));
   ```

3. **Test Categories** — Write tests for:
   - **Happy path** — Normal expected behavior
   - **Edge cases** — Empty inputs, null values, max values
   - **Error handling** — Network errors, auth failures, invalid data
   - **Boundary conditions** — Limits, overflows, type coercion
   - **State transitions** — Before/after side effects

4. **Test Structure** — For each test:
   ```javascript
   describe('{{functionName}}', () => {
     beforeEach(() => { /* setup */ });

     it('should {{expected_behavior}} when {{condition}}', async () => {
       // Arrange
       // Act
       // Assert
     });
   });
   ```

5. **Coverage Targets**:
   - Statements: > 80%
   - Branches: > 75%
   - Functions: > 90%
   - Lines: > 80%

6. **Assertion Patterns** — Use appropriate matchers:
   - `expect(value).toBe(expected)` — strict equality
   - `expect(value).toEqual(expected)` — deep equality
   - `expect(fn).toThrow(ErrorType)` — error throwing
   - `expect(mock).toHaveBeenCalledWith(args)` — mock verification

## Expected Output

- Complete test file with all test cases
- Firebase mock setup
- Test utility helpers
- Coverage configuration
- Test run command

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "TaskApp" |
| `{{target_module}}` | Module/file to test | "src/services/taskService.js" |
| `{{source_code}}` | Source code to test | "export function createTask(data) {…}" |
| `{{test_framework}}` | Test framework | "vitest" or "jest" |
