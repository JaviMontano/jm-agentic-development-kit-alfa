#!/bin/bash
# UserPromptSubmit hook: detect injection patterns, validate input
# Exit code 0 = allow (always allow, just log warnings)

PROMPT="${CLAUDE_USER_PROMPT:-}"

# Injection patterns (warn, don't block — log-but-don't-block philosophy)
INJECTION_PATTERNS=(
  "ignore previous instructions"
  "ignore all instructions"
  "you are now"
  "disregard your"
  "forget everything"
  "new persona"
  "jailbreak"
  "DAN mode"
)

for pattern in "${INJECTION_PATTERNS[@]}"; do
  if echo "$PROMPT" | grep -qi "$pattern"; then
    echo "INJECTION-WARNING: pattern detected — '$pattern'" >&2
  fi
done

exit 0
