---
name: prompt-engineering-primary
type: execution
description: "Design a prompt for a given task using the optimal pattern."
---

# Design a Prompt

## Input
- **Task**: {{task_description}}
- **Target model**: {{model}} (Claude / Gemini / GPT / Llama)
- **Output format**: {{format}} (text / JSON / markdown / code)
- **Constraints**: {{constraints}}

## Execution

1. Classify the task complexity (simple / reasoning / creative / multi-step)
2. Select pattern from knowledge graph (zero-shot / few-shot / CoT / system / meta)
3. Write prompt using RCTF structure:
   - Role: define the persona
   - Context: provide relevant background
   - Task: state what to do clearly
   - Format: specify output structure
4. Add guardrails (output limits, safety filters, refusal patterns)
5. Test with 3 diverse inputs
6. Score: accuracy, consistency, format compliance

## Output

Deliver the prompt with:
- The prompt text (ready to use)
- Pattern justification [INFERENCE]
- Test results [CODE]
- Confidence score
