---
name: cv-enhancement
description: >
  Triggers on "improve my CV", "rewrite resume", "enhance CV", "make my CV better",
  "CV for tech role", "help with resume", "update my curriculum". Transforms CVs and
  resumes into impact-focused documents using PAR framework, ATS optimization, and
  role targeting. Output: improved markdown CV + branded HTML version.
  Argument: current CV text/file + optional target role or industry.
argument-hint: "<CV text or file path> [target role] [target industry] [level: junior|mid|senior|executive]"
model: opus
context: fork
allowed-tools: Read, Write, Edit, Glob, Grep, WebSearch
---

# CV Enhancement — From Duty Descriptions to Impact Stories

> TL;DR: Audit a CV for weaknesses, rewrite with achievement language using the PAR framework, optimize for ATS systems, and deliver a polished markdown + branded HTML version.

**Principio Rector:** Hiring managers read CVs for evidence of impact, not lists of responsibilities. Every bullet must answer: "So what?"

---

## When to Activate

**Activate when:**
- User says "improve my CV", "rewrite resume", "enhance CV", "make my CV better"
- User says "CV for tech role", "help with resume", "update my curriculum"
- User pastes or shares a CV and asks for feedback, improvement, or transformation [EXPLICIT]
- User is applying to a specific role and wants a targeted version [INFERRED]

**Do NOT activate when:**
- User asks for cover letter help (use a writing skill instead)
- User needs LinkedIn profile optimization (different format and character limits)
- User needs a portfolio design (use landing-pages or portfolio-sites skill)

---

## S1 — CV Audit

Before rewriting, diagnose what is weak. Apply a structured rubric. [EXPLICIT]

### 1a. Structure Audit

Check for presence and quality of each section: [EXPLICIT]

| Section | Required | Quality Check |
|---------|---------|--------------|
| Contact info | Yes | Email, LinkedIn, location (city/country), phone optional |
| Professional summary | Recommended | 3-4 lines, role-specific, quantified if possible |
| Work experience | Yes | Reverse chronological, impact-driven bullets |
| Education | Yes | Degree, institution, year (omit GPA unless >3.7 or recent grad) |
| Skills | Yes | Categorized (tech, soft, languages), relevant to target role |
| Projects / portfolio | Role-dependent | Mandatory for tech/design roles |
| Certifications | Optional | Include if relevant and recent (<5 years) |
| Publications / talks | Optional | Include for thought leadership roles |

### 1b. Language Quality Audit

Identify weak language patterns that dilute impact: [EXPLICIT]

**Red Flags — language to eliminate:**
- Responsibility language: "Responsible for...", "In charge of...", "Duties included..."
- Vague adjectives: "excellent communication skills", "strong team player", "passionate about..."
- Passive voice: "Was involved in...", "Participated in...", "Helped with..."
- Buzzword overload: "synergy", "leverage", "paradigm shift", "disruptive"
- First-person pronouns: "I managed...", "My responsibilities..." (drop pronouns entirely)

**Green Flags — language to keep/generate:**
- Strong action verbs: Led, Built, Designed, Reduced, Grew, Launched, Automated, Negotiated
- Quantified outcomes: percentages, dollar amounts, time saved, headcount managed
- Specificity: tool names, stack names, geography, customer segments

### 1c. ATS Readiness Audit

ATS (Applicant Tracking System) systems parse CVs before a human sees them: [EXPLICIT]

- [ ] Uses standard section headers (not creative names like "My Story")
- [ ] No tables, columns, text boxes, or graphics in the main body
- [ ] No header/footer content (often not parsed by ATS)
- [ ] File format: PDF from Word (not designed PDFs) or plain .docx
- [ ] Font: standard fonts (Arial, Calibri, Garamond — no display fonts)
- [ ] Job title keywords match the target role description

---

## S2 — Impact Rewriting

Apply the PAR framework to every work experience bullet. [EXPLICIT]

### 2a. PAR Framework

```
P — Problem / Context: What was the situation or challenge?
A — Action: What did you specifically do? (your contribution, not the team's)
R — Result: What measurably improved? (quantify whenever possible)
```

**PAR Transformation Examples:**

| Before (Duty) | After (PAR-Impact) |
|--------------|-------------------|
| "Managed social media accounts" | "Grew LinkedIn followers from 2K to 18K in 8 months by launching a weekly expert series, driving 340% increase in inbound leads [EXPLICIT]" |
| "Worked on backend API development" | "Engineered REST API handling 50K req/day for fintech product, reducing p95 latency from 800ms to 120ms by implementing Redis caching layer [EXPLICIT]" |
| "Led sales team" | "Led 8-person enterprise sales team to 127% of annual quota ($4.2M ARR), closing 3 Fortune 500 accounts in Q3 2023 [EXPLICIT]" |

### 2b. Metrics Injection Protocol

When user's CV lacks metrics, derive plausible ranges or prompt for them: [INFERRED]

**Proxy Metrics (use when exact numbers unavailable):**
- Team size managed → scope indicator
- Budget managed → business impact proxy
- Project count per year → workload and delivery capacity
- Geography (city / region / country / global) → scale indicator
- Revenue impacted vs. cost center → P&L relevance

**Questions to prompt user for missing metrics:**
- "What % did [metric] change during your time in this role?"
- "How many people did you manage directly vs. indirectly?"
- "What was the budget or revenue you were responsible for?"
- "How much time/money did the improvement save per month/year?"

### 2c. Action Verb Bank by Category

**Leadership:** Led, Directed, Coached, Mentored, Built, Scaled, Reorganized, Championed
**Technical:** Engineered, Architected, Developed, Automated, Migrated, Optimized, Deployed, Integrated
**Analysis:** Analyzed, Evaluated, Modeled, Forecasted, Benchmarked, Diagnosed, Quantified
**Commercial:** Closed, Negotiated, Grew, Expanded, Converted, Retained, Upsold, Acquired
**Operations:** Streamlined, Reduced, Eliminated, Standardized, Implemented, Launched, Delivered
**Communication:** Presented, Facilitated, Published, Authored, Trained, Influenced, Partnered

---

## S3 — ATS Optimization

Ensure the CV passes automated screening before human review. [EXPLICIT]

### 3a. Keyword Strategy

1. Take the target job description (user provides or user names the role)
2. Extract top 15-20 keywords: job titles, skills, tools, certifications, methodologies [EXPLICIT]
3. Map each keyword to the corresponding experience section in the CV [INFERRED]
4. Insert missing high-priority keywords naturally (no keyword stuffing) [EXPLICIT]

**Keyword Categories:**
- Hard skills (programming languages, tools, platforms, certifications)
- Soft skills (leadership, communication — use sparingly, ATS weight is lower)
- Industry terms (SaaS, fintech, agile, HIPAA, GDPR, ISO 27001)
- Role-specific verbs (the same verbs used in the job posting)

### 3b. Format Rules for ATS

| Rule | Rationale |
|------|---------|
| Use `.docx` or clean PDF | Design PDFs often fail ATS parsing |
| No columns/tables for experience | Column parsers split dates from content |
| Spell out acronyms first time | "Machine Learning (ML)" before "ML" alone |
| Include years AND months | Avoids employment gap misinterpretation |
| Use standard date format | "Jan 2022 – Mar 2024" not "2022-2024" |
| No images or icons in body | ATS ignores or errors on visual elements |

### 3c. Keyword Density Check

After rewriting, verify:
- Target job title appears in summary and most recent role
- Top 5 technical skills appear at least twice across the document
- No single skill used so often it reads as stuffed (>5× is risky) [INFERRED]

---

## S4 — Role Targeting

Customize the CV for a specific job posting or industry. [EXPLICIT]

### 4a. Single-Role Targeting

When user provides a specific job posting:
1. Extract role requirements (must-have vs. nice-to-have) [EXPLICIT]
2. Reorder bullets to front-load most relevant experience [INFERRED]
3. Adjust professional summary to mirror the role's language [EXPLICIT]
4. Rename or reframe job titles if truthful and more ATS-friendly [EXPLICIT]
5. Add / surface relevant projects that match the role [INFERRED]

### 4b. Industry-Specific Calibrations

| Industry | Key Adjustments |
|---------|----------------|
| Tech / SaaS | Stack-first, quantified engineering impact, GitHub/portfolio link |
| Finance | Regulatory knowledge, deal size, P&L ownership, CFA/CPA |
| Consulting | Client count, engagement scope, industry verticals, frameworks |
| Healthcare | Certifications, compliance (HIPAA), patient outcomes, EHR systems |
| Startups | Bias-to-action verbs, generalist range, 0-to-1 initiatives |
| Enterprise / Corporate | Scale, governance, stakeholder management, budget size |

### 4c. Career Level Calibrations

| Level | Summary Focus | Bullet Depth |
|-------|-------------|-------------|
| Junior (0-3y) | Skills, education, projects | Task + tool + learning outcome |
| Mid (3-7y) | Results + growth trajectory | PAR with metrics |
| Senior (7-15y) | Leadership + strategy | Business impact + team/org scope |
| Executive (15y+) | Vision + P&L + org transformation | Revenue, company-wide change |

---

## S5 — Output Formats

### 5a. Markdown CV

Clean, portable format for digital submissions: [EXPLICIT]

```markdown
# [Full Name]
[City, Country] · [email] · [LinkedIn URL]

## Professional Summary
[3-4 lines, role-specific, quantified]

## Experience

### [Job Title] — [Company], [City]
*[Month Year] – [Month Year]*
- [PAR bullet with metric]
- [PAR bullet with metric]

## Skills
**Technical:** [list]
**Languages:** [list with proficiency levels]

## Education
**[Degree]** — [Institution], [Year]
```

### 5b. Branded HTML CV

Self-contained HTML file using JM Labs dark design system: [EXPLICIT]

```css
:root {
  --jml-navy:  #122562;
  --jml-gold:  #FFD700;
  --jml-blue:  #137DC5;
  --jml-bg:    #0d1b3e;
  --font-head: 'Poppins', sans-serif;
  --font-body: 'Inter', sans-serif;
}
```

**HTML Structure:**
```html
<div class="jml-doc cv">
  <header class="slide">   <!-- Name, title, contact bar -->
  <section class="bridge"> <!-- Professional summary -->
  <section class="mv">     <!-- Experience timeline -->
  <section class="ml">     <!-- Skills + certifications grid -->
  <footer class="cta">     <!-- Call to action: portfolio link, download button -->
</div>
```

Include `@media print` CSS for clean paper/PDF output. [EXPLICIT]
Include dark/light mode toggle via `.gold` class button. [EXPLICIT]

---

## Trade-off Matrix

| Mode | Time | Output | Best For |
|------|------|--------|---------|
| **Audit only** | 15 min | Score + list of changes | User wants feedback before rewriting |
| **Quick rewrite** | 45 min | Improved markdown CV | Active job seeker, standard role |
| **Full enhancement** | 2h | Markdown + HTML + keyword map | Competitive roles, senior positions |
| **Targeted version** | 1h (after full) | Role-specific variant | Applying to specific job posting |

---

## Assumptions & Limits

- User must provide the CV content (file or pasted text) [EXPLICIT]
- Metrics must be truthful — AI should prompt for data, not fabricate numbers [EXPLICIT]
- ATS optimization is based on public knowledge of major ATS systems (Workday, Greenhouse, Lever, Taleo) [EXPLICIT]
- HTML output is for portfolio/sharing, not ATS submission (submit .docx or clean PDF) [EXPLICIT]
- Career history reframing must be truthful — no role inflation [EXPLICIT]

---

## Edge Cases

| Scenario | Handling |
|----------|---------|
| CV is in Spanish but target role is English | Translate + adapt (idioms, title conventions differ by country) |
| Career gap of >12 months | Acknowledge directly in summary with positive framing (freelance, caregiving, education) |
| User changes career track entirely | Emphasize transferable skills; restructure to skills-first format |
| Academic CV (publications-heavy) | Switch to academic format conventions; do not strip publications section |
| User has only 1 job or is a new grad | Amplify projects, coursework, internships, volunteer work |

---

## Good vs Bad Example

**BAD:**
> "Responsible for managing the development team and ensuring project delivery."

**GOOD:**
> "Led 6-person cross-functional engineering team delivering 3 major product releases in 2023, reducing deployment cycle from 3 weeks to 5 days through CI/CD pipeline implementation (GitHub Actions + Docker) [EXPLICIT]."

---

## Validation Gate

- [ ] CV structure audit completed — all required sections present
- [ ] Red-flag language patterns identified and eliminated
- [ ] Every work experience bullet follows PAR structure
- [ ] At least 70% of bullets contain a quantified metric or measurable outcome
- [ ] ATS formatting rules applied (no columns, standard headers, clean fonts)
- [ ] Top 10 keywords from target role incorporated naturally
- [ ] Professional summary is role-specific and quantified
- [ ] Markdown CV output is clean and portable
- [ ] HTML output uses JM Labs brand tokens correctly
- [ ] Print/PDF CSS included in HTML version

---

## Reference Files

- `knowledge/body-of-knowledge.md` — CV writing methodology and research
- `references/cv-patterns.md` — PAR framework, ATS strategies, industry templates
- `evals/` — Before/after CV examples with scoring rubric

---

## Related Skills

- `landing-pages` — Build a personal brand page to complement the CV
- `b2b-outreach` — Craft outreach messages using CV highlights as credentials
- `executive-pitch` — Translate career story into a compelling 5-minute pitch
