---
description: "Search skills by keyword using BM25 ranking over the skills catalog"
---

# /search

## Purpose
Find the most relevant JM-ADK skills for a given query using BM25 text ranking over the skills catalog, helping users and agents discover capabilities before building from scratch.

## Workflow

### Phase 1: Query Processing
**Agent**: `skill-router`
**Skills**: `input-analysis`

1. Receive search query from user (keywords, natural language question, or domain term)
2. Normalize query (lowercase, remove stop words, extract key terms)
3. Expand query with synonyms and related terms from the ontology
4. Determine search intent (find a skill, compare skills, explore a domain)

### Phase 2: BM25 Search
**Agent**: `skill-router`
**Skills**: `discovery-orchestration`

1. Load skills catalog from `.shared/skill-search/data/skills.csv`
2. Execute BM25 ranking against skill names, descriptions, tags, and domains
3. Score and rank results by relevance
4. Filter results by minimum relevance threshold (score > 0.1)
5. Return top 10 results with relevance scores

### Phase 3: Result Presentation
**Agent**: `skill-router`
**Skills**: `discovery-orchestration`

1. Format results as a ranked table:
   | # | Skill | Domain | Score | Description |
2. For each top result, show:
   - Skill name and file path (`skills/{name}/SKILL.md`)
   - Domain classification (frontend, backend, infrastructure, analysis, quality)
   - BM25 relevance score
   - One-line description
3. Suggest related skills that frequently co-occur
4. Offer to load the full SKILL.md for any result

### Phase 4: Skill Loading (Optional)
**Agent**: `{relevant-specialist}`
**Skills**: `{selected-skill}`

1. If user selects a skill, load its full SKILL.md definition
2. Show the skill's procedure, inputs, outputs, and examples
3. Offer to execute the skill or incorporate it into a workflow

## Output
- Ranked list of matching skills (top 10) with relevance scores
- Skill details on demand (SKILL.md contents)
- Related skill suggestions for exploration
