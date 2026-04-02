#!/usr/bin/env bash
# next-folio-number.sh — Auto-increment folio numbers
# Usage: next-folio-number.sh <PREFIX> [tracker_file]
# Output: PREFIX-YYYY-NNN
# Example: ./next-folio-number.sh COT → COT-2026-043

set -euo pipefail

PREFIX="${1:-DOC}"
TRACKER="${2:-.folio-tracker.json}"
YEAR=$(date +%Y)

# Validate prefix (3 uppercase letters)
if ! echo "$PREFIX" | grep -qE '^[A-Z]{3}$'; then
  echo "ERROR: Prefix must be 3 uppercase letters (got: $PREFIX)" >&2
  exit 1
fi

# Create tracker if it doesn't exist
if [ ! -f "$TRACKER" ]; then
  cat > "$TRACKER" << 'INIT'
{
  "folios": {},
  "last_updated": ""
}
INIT
fi

# Read current number for this prefix+year
CURRENT=$(grep -o "\"$PREFIX\"[^}]*\"$YEAR\":[[:space:]]*[0-9]*" "$TRACKER" 2>/dev/null | grep -o '[0-9]*$' || echo "0")

# Increment
NEXT=$((CURRENT + 1))

# Format with zero-padding (3 digits)
FORMATTED=$(printf "%03d" "$NEXT")

# Update tracker
NOW_ISO=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

if grep -q "\"$PREFIX\"" "$TRACKER" 2>/dev/null; then
  if grep -q "\"$YEAR\"" "$TRACKER" 2>/dev/null; then
    # Update existing year counter
    sed "s/\"$PREFIX\"[^}]*\"$YEAR\":[[:space:]]*[0-9]*/\"$PREFIX\": { \"$YEAR\": $NEXT/" "$TRACKER" > "$TRACKER.tmp" && mv "$TRACKER.tmp" "$TRACKER"
  fi
else
  # Add new prefix entry (simple append before closing brace of folios)
  sed "s/\"folios\": {/\"folios\": { \"$PREFIX\": { \"$YEAR\": $NEXT },/" "$TRACKER" > "$TRACKER.tmp" && mv "$TRACKER.tmp" "$TRACKER"
fi

# Update timestamp
sed "s/\"last_updated\": \"[^\"]*\"/\"last_updated\": \"$NOW_ISO\"/" "$TRACKER" > "$TRACKER.tmp" && mv "$TRACKER.tmp" "$TRACKER"

# Output the folio ID
echo "$PREFIX-$YEAR-$FORMATTED"
