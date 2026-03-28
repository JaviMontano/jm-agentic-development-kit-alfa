#!/bin/bash
# Generate PRISTINO-INDEX.md from component frontmatter
# Usage: bash scripts/generate-pristino-index.sh

cd "$(dirname "$0")/.." || exit 1

OUT="PRISTINO-INDEX.md"

echo "# Pristino Master Index" > "$OUT"
echo "" >> "$OUT"
echo "<!-- Auto-generated. Run: bash scripts/generate-pristino-index.sh -->" >> "$OUT"

AGENT_COUNT=$(ls agents/*.md | wc -l | tr -d ' ')
SKILL_COUNT=$(ls -d skills/*/ | wc -l | tr -d ' ')
CMD_COUNT=$(ls commands/*.md | wc -l | tr -d ' ')
PROMPT_COUNT=$(find prompts -name '*.md' -not -path '*/.catalog/*' | wc -l | tr -d ' ')

echo "<!-- Counts: ${SKILL_COUNT} Skills | ${AGENT_COUNT} Agents | ${CMD_COUNT} Commands | ${PROMPT_COUNT} Prompts -->" >> "$OUT"
echo "" >> "$OUT"

# Agents
echo "## Agents (${AGENT_COUNT})" >> "$OUT"
echo "" >> "$OUT"
echo "| # | ID | Description |" >> "$OUT"
echo "|---|-----|-------------|" >> "$OUT"
i=1
for f in agents/*.md; do
  name=$(grep '^name:' "$f" | head -1 | sed 's/name: *//;s/"//g')
  desc=$(grep '^description:' "$f" | head -1 | sed 's/description: *//;s/"//g' | cut -c1-80)
  echo "| $i | \`$name\` | $desc |" >> "$OUT"
  i=$((i+1))
done

# Skills
echo "" >> "$OUT"
echo "## Skills (${SKILL_COUNT})" >> "$OUT"
echo "" >> "$OUT"
echo "| # | ID | Description |" >> "$OUT"
echo "|---|-----|-------------|" >> "$OUT"
i=1
for f in skills/*/SKILL.md; do
  name=$(grep '^name:' "$f" | head -1 | sed 's/name: *//;s/"//g')
  desc=$(grep '^description:' "$f" | head -1 | sed 's/description: *//;s/"//g;s/> *//')
  [ -z "$desc" ] && desc="—"
  echo "| $i | \`$name\` | ${desc:0:80} |" >> "$OUT"
  i=$((i+1))
done

# Commands
echo "" >> "$OUT"
echo "## Commands (${CMD_COUNT})" >> "$OUT"
echo "" >> "$OUT"
echo "| # | ID | Description |" >> "$OUT"
echo "|---|-----|-------------|" >> "$OUT"
i=1
for f in commands/*.md; do
  id=$(basename "$f" .md)
  desc=$(grep '^description:' "$f" | head -1 | sed 's/description: *//;s/"//g' | cut -c1-80)
  echo "| $i | \`$id\` | $desc |" >> "$OUT"
  i=$((i+1))
done

# Prompts
echo "" >> "$OUT"
echo "## Prompts (${PROMPT_COUNT})" >> "$OUT"
echo "" >> "$OUT"
echo "| # | ID | Category |" >> "$OUT"
echo "|---|-----|----------|" >> "$OUT"
i=1
for f in $(find prompts -name '*.md' -not -path '*/.catalog/*' | sort); do
  id=$(basename "$f" .md)
  cat=$(echo "$f" | sed 's|prompts/||;s|/.*||')
  echo "| $i | \`$id\` | $cat |" >> "$OUT"
  i=$((i+1))
done

echo ""
echo "Generated: $OUT"
echo "Agents: $AGENT_COUNT | Skills: $SKILL_COUNT | Commands: $CMD_COUNT | Prompts: $PROMPT_COUNT"
