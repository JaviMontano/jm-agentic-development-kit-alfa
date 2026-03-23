#!/bin/bash
# PreToolUse hook: block dangerous commands before execution
# Exit code 2 = block the tool call
# Exit code 0 = allow

TOOL_NAME="${CLAUDE_TOOL_NAME:-}"
TOOL_INPUT="${CLAUDE_TOOL_INPUT:-}"

# Only check Bash tool calls
if [ "$TOOL_NAME" != "Bash" ]; then
  exit 0
fi

# Dangerous patterns (block with exit 2)
DANGEROUS_PATTERNS=(
  "rm -rf /"
  "rm -rf ~"
  "rm -rf \."
  "git reset --hard"
  "git push --force"
  "git push -f"
  "git clean -fd"
  "> /dev/sda"
  "mkfs\."
  "dd if="
  ":(){:|:&};:"
)

for pattern in "${DANGEROUS_PATTERNS[@]}"; do
  if echo "$TOOL_INPUT" | grep -qi "$pattern"; then
    echo "BLOCKED: dangerous command detected — '$pattern'" >&2
    exit 2
  fi
done

# Sensitive file access (warn but allow)
SENSITIVE_PATTERNS=("\.env" "credentials" "secret" "\.pem" "\.key")
for pattern in "${SENSITIVE_PATTERNS[@]}"; do
  if echo "$TOOL_INPUT" | grep -qi "$pattern"; then
    echo "WARNING: accessing sensitive file pattern — '$pattern'" >&2
  fi
done

exit 0
