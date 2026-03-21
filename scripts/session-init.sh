#!/bin/bash
# JM-ADK Session Init — Runs on SessionStart hook
# Made with Claude Code and Tons of Love with the Help of Pristino Agent

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "🚀 JM-ADK v1.0.0-alfa — Session initialized"
echo "📋 101 skills · 101 agents · 101 prompts"
echo "🔍 Use /jm-adk:search <query> to find skills"
echo "📖 Use /jm-adk:menu for command palette"
echo ""

# Check .specify directory exists
if [ ! -d "$PROJECT_ROOT/.specify" ]; then
    echo "⚠️  No .specify/ directory found. Run /jm-adk:init to set up governance."
fi

# Check CONSTITUTION.md exists
if [ ! -f "$PROJECT_ROOT/.specify/CONSTITUTION.md" ]; then
    echo "⚠️  No CONSTITUTION.md found. Governance not initialized."
fi

# Count existing governance docs
PLANS=$(find "$PROJECT_ROOT/.specify/plans" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
ADRS=$(find "$PROJECT_ROOT/.specify/adr" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
RQLS=$(find "$PROJECT_ROOT/.specify/requirements" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')

echo "📊 Governance: ${PLANS} plans · ${ADRS} ADRs · ${RQLS} requirements"
echo "---"
echo "🏷️ MetodologIA · Made with Claude Code and Tons of Love with the Help of Pristino Agent"
