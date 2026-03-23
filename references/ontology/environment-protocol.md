# Environment Detection Protocol

Pristino adapts to the runtime environment by detecting two independent axes:
**IDE** (where it runs) and **Model** (what powers it).

## IDE Detection

The IDE is determined by which instruction file loaded the agent:

| Instruction File | IDE | Detection |
|-----------------|-----|-----------|
| `CLAUDE.md` | claude-code | Claude Code native plugin |
| `GEMINI.md` | gemini | Gemini Code Assist |
| `.cursorrules` | cursor | Cursor IDE |
| `.windsurfrules` | windsurf | Windsurf IDE |
| `.github/copilot-instructions.md` | copilot | VS Code + GitHub Copilot |
| `.agent/rules/GEMINI.md` | antigravity | Antigravity Kit (Gemini) |
| `AGENTS.md` | codex | OpenAI Codex CLI |

## IDE Capability Matrix

| IDE | Triad Mode | Agent Tool | Subagents | Hooks | MCP | Skill Loading |
|-----|-----------|------------|-----------|-------|-----|--------------|
| **claude-code** | Full (parallel subagents) | Yes | Yes | Yes | Yes | SKILL.md via Read |
| **gemini** | Sequential prompts | No | No | No | No | Context injection |
| **cursor** | Checklist | No | No | No | Yes | .cursorrules inline |
| **windsurf** | Checklist | No | No | No | No | .windsurfrules inline |
| **copilot** | Suggestion | No | No | No | No | Instructions inline |
| **antigravity** | Full (Gemini agents) | Yes | Yes | No | No | skills_index.json |
| **codex** | Sequential prompts | No | No | No | No | AGENTS.md inline |

## Triad Adaptation by IDE

### Full Mode (claude-code, antigravity)

The Agent tool is available. Pristino launches 3 subagents sequentially:

```
1. Launch Lead agent (domain specialist)
2. Pass Lead output to Support agent (cross-cutting review)
3. Pass combined output to Guardian agent (quality validation)
4. Synthesize final output
```

### Sequential Prompts Mode (gemini, codex)

No Agent tool. The user drives transitions between triad steps:

```
1. Pristino describes the triad composition
2. Acts as Lead: produces primary deliverable
3. Acts as Support: self-reviews with cross-cutting criteria
4. Acts as Guardian: applies quality gate checklist
5. Outputs final result with all three perspectives applied
```

### Checklist Mode (cursor, windsurf)

No Agent tool. Triad expressed as inline review criteria:

```
1. Model generates code (Lead perspective)
2. Model applies cross-cutting checks from rules file (Support criteria)
3. Model runs quality gate checklist (Guardian validation)
4. All three perspectives applied in a single response
```

### Suggestion Mode (copilot)

Limited context. Triad reduced to quality standards in suggestions:

```
1. Model suggests code (Lead)
2. Suggestions follow accessibility + security rules (Support criteria embedded)
3. Evidence tags recommended in comments (Guardian standard)
```

## Model Tier Detection

The model tier determines how much context can be loaded:

| Tier | Context Window | Load | Best For | Example Models |
|------|---------------|------|----------|---------------|
| **Heavy** | > 100K tokens | Full Constitution + Index + History | Architecture, complex analysis, full triad | Claude Opus, Gemini 2.5 Pro, GPT-4o |
| **Medium** | 32K - 100K | Constitution + active skills | Development, code generation | Claude Sonnet, Gemini Flash, Llama 70B, GPT-4o-mini |
| **Light** | < 32K | Active skill only | Quick edits, routing, lookups | Claude Haiku, Gemma 9B, Mistral 7B |

### Context Budget by Tier

```
Heavy:  Load PRISTINO.md + constitution-v5.2.0.md + PRISTINO-INDEX.md + full history
Medium: Load PRISTINO.md + constitution-v5.2.0.md + relevant skills only
Light:  Load PRISTINO.md summary + active skill only
```

## Model Provider Matrix

| Provider | Models | Function Calling | IDEs |
|----------|--------|-----------------|------|
| **Anthropic** | Opus, Sonnet, Haiku | Yes | Claude Code, Cursor, Windsurf |
| **Google** | Gemini 2.5 Pro, Flash | Yes | Gemini, Antigravity, Cursor |
| **OpenAI** | GPT-4o, GPT-4o-mini, o3, o4 | Yes | Copilot, Cursor, Codex |
| **Groq** | Llama 3.3 70B, Mixtral, Gemma | Yes | Open Claw, Cursor |
| **OpenRouter** | All above + DeepSeek, Qwen | Yes | Open Claw, Cursor |
| **Ollama** | Llama, Mistral, CodeLlama | Partial | Local CLI, Cursor |

## Auto-Priming by Environment

At session start, after bootstrap (PRISTINO.md → Constitution → Index):

1. **Detect IDE** from instruction file
2. **Detect model tier** from available context window
3. **Set triad mode** (full / sequential / checklist / suggestion)
4. **Load skills** appropriate to the tier
5. **Report** environment to user:

```
Environment detected:
  IDE: claude-code | Triad: full | Model tier: heavy
  Tools: Read, Write, Edit, Glob, Grep, Bash, Agent
  Skills loaded: 116 | Agents available: 103
  Ready to orchestrate.
```

## Minimum Requirements

For JM-ADK agents to function, the model MUST support:
- **Function/tool calling** — required for Read, Write, Bash tools
- **System messages** — required for Constitution injection
- **Context >= 8K tokens** — minimum for a single skill + conversation

Models without function calling operate in **advisory mode only** — they suggest but do not execute.
