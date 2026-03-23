#!/bin/bash
# Stop hook: validate final output before delivery
# Exit code 0 = allow delivery

# This hook runs when Claude is about to stop responding
# Used for: final quality assertion logging

echo "STOP-HOOK: session response completed" >&2
exit 0
