<p align="center">
  <img src="https://img.shields.io/badge/JM--ADK-v4.0.0_Workspace-FFD700?style=for-the-badge&labelColor=122562" alt="Version" />
  <img src="https://img.shields.io/badge/Componentes-1036-FFD700?style=for-the-badge&labelColor=122562" alt="1036" />
  <img src="https://img.shields.io/badge/Skills-264_(enriquecidos)-137DC5?style=for-the-badge&labelColor=122562" alt="Skills" />
  <img src="https://img.shields.io/badge/Constitución-v6.0.0-FFD700?style=for-the-badge&labelColor=122562" alt="Constitución" />
</p>

<h1 align="center">JM Agentic Development Kit</h1>

<p align="center">
  <strong>Convierte intención en resultados.</strong><br>
  <em>Describe lo que quieres. El kit analiza, diseña, construye, prueba y despliega.</em>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml"><img src="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml/badge.svg" alt="CI" /></a>
  <a href="landing.html"><img src="https://img.shields.io/badge/Landing-Abrir-FFD700" alt="Landing" /></a>
</p>

---

## Qué es

Un entorno agéntico listo para trabajar. 264 habilidades especializadas, 256 agentes, y un orquestador (Pristino) que compone un equipo de 3 para cada tarea. Tú das la dirección. El kit ejecuta con método.

**No es un chatbot.** Es un sistema gobernado: 18 principios constitucionales (Constitución v6.0.0), 4 puertas de calidad, trazabilidad de cada decisión, y aprendizaje continuo entre sesiones.

## Qué problema resuelve

| Sin JM-ADK | Con JM-ADK |
|------------|-----------|
| La IA adivina qué quieres | La IA pregunta, analiza, valida antes de actuar |
| Resultados inconsistentes | Mismo método siempre: analizar → diseñar → construir → probar → desplegar |
| Un agente generalista hace todo | 264 especialistas, cada uno experto en lo suyo |
| Sin control de calidad | 4 puertas obligatorias (G0→G1→G2→G3) |
| Contexto perdido entre sesiones | Decisiones grabadas, insights extraídos, errores no repetidos |
| Sin trazabilidad de tareas | Workspace automático: cada tarea crea su carpeta con tasklog, changelog, plan |
| Tú gestionas la IA | La IA se gestiona sola bajo Constitución v6.0.0 |

## Qué puedes hacer

| Necesidad | Comando | Resultado | Deploy |
|-----------|---------|-----------|--------|
| Sitio web personal | `/jm-adk:express input="Portfolio"` | HTML/CSS accesible, Lighthouse 98+ | Hostinger ($3/mes) |
| App con login y datos | `/jm-adk:scaffold-firebase` | Firebase Auth + Firestore + Hosting | Firebase (gratis) |
| Analizar una idea de negocio | `/jm-adk:analyze input="Marketplace artesanal"` | Requisitos, modelo de dominio, flujos, factibilidad, costos | — |
| Prospectar clientes en Miami | `/jm-adk:prospect input="AI training Miami"` | Dossier de mercado, empresas target, estrategia de outreach | HTML branded |
| Mejorar tu CV | `/jm-adk:cv` | CV reescrito con lenguaje de impacto | HTML/DOCX branded |
| Propuesta de workshop | `/jm-adk:workshop-proposal` | Agenda, recursos, presupuesto, propuesta visual | HTML/PPTX branded |
| Landing page de SaaS | `/jm-adk:express input="SaaS landing" target=hostinger` | HTML con CTA, SEO, responsive | Hostinger |
| Dashboard admin | `/jm-adk:create-dashboard` | Tablas, gráficos, filtros, CRUD | Firebase |

**Stack**: HTML5, CSS3, JS, Angular 18+, React 19+, Firebase, Hostinger. Ecosistema Google.

---

## No tienes idea de qué es esto?

Si nunca has usado GitHub, Git, o una terminal — esta sección es para ti. No te preocupes, es más fácil de lo que parece.

### Opción A: Descargar como ZIP (fricción cero)

1. Ve a la página del repositorio en GitHub
2. Haz clic en el botón verde **"Code"**
3. Selecciona **"Download ZIP"**
4. Extrae el archivo ZIP en la carpeta donde vas a trabajar
5. Listo — ábrelo con tu IDE favorito

### Opción B: Clonar con Git (recomendado)

Esta opción te permite recibir actualizaciones y colaborar. Necesitas instalar algunas herramientas primero.

#### Paso 1: Instalar Git

| Sistema | Instrucciones |
|---------|--------------|
| **Windows** | Descarga el instalador desde [git-scm.com](https://git-scm.com/download/win). Ejecuta el `.exe` y acepta las opciones por defecto. |
| **Mac** | Abre la Terminal y escribe `xcode-select --install`. Alternativa: si tienes Homebrew, ejecuta `brew install git`. |

Para verificar: abre una terminal y escribe `git --version`. Si ves un número de versión, está instalado.

#### Paso 2: Instalar Node.js

Descarga la versión **LTS** (Long Term Support) desde [nodejs.org](https://nodejs.org). Ejecuta el instalador. Para verificar: `node --version` en la terminal.

#### Paso 3: Instalar Python (opcional)

Solo necesario si quieres usar búsqueda BM25 avanzada. Descarga desde [python.org](https://www.python.org/downloads/) la versión más reciente. Para verificar: `python --version`.

#### Paso 4: Instalar un lector de Markdown

Recomendación: **[Obsidian](https://obsidian.md)** — es gratuito y funciona con grafos de conocimiento. Perfecto para navegar los 264 skills y sus wiklinks interconectados. Descarga desde [obsidian.md](https://obsidian.md) e instala normalmente.

#### Paso 5: Instalar un IDE

| Opción | Descripción | Enlace |
|--------|-------------|--------|
| **VS Code** (gratis) | El más popular. Instala la extensión Antigravity para IA. | [code.visualstudio.com](https://code.visualstudio.com) |
| **Claude Code** | Si tienes acceso, es la experiencia completa con tríada de agentes. | [claude.ai/claude-code](https://claude.ai/claude-code) |
| **Cursor** | IDE con IA integrada. Lee `.cursorrules` automáticamente. | [cursor.com](https://cursor.com) |

#### Paso 6: Instalar GitHub CLI

| Sistema | Comando |
|---------|---------|
| **Mac** | `brew install gh` |
| **Windows** | `winget install --id GitHub.cli` |

Para verificar: `gh --version`.

#### Paso 7: Clonar el repositorio

```bash
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git
cd jm-agentic-development-kit
```

Si usas Claude Code, agrega el plugin:

```bash
claude plugin add ./jm-agentic-development-kit
```

---

## Workspace Automático (v4.0.0)

Cada tarea crea automáticamente su carpeta con trazabilidad completa:

```
workspace/
└── 2026-03-25-landing-page/
    ├── tasklog.md         ← Registro automático de cada acción
    ├── changelog.md       ← Historial de versiones
    ├── plan.md            ← Plan de la tarea
    └── artifacts/         ← Entregables generados
```

### Activar

```
/jm-adk:init
```

Esto crea la configuración (`.jm-adk.json`) y el directorio `workspace/`. Después, cada tarea que describas genera automáticamente su workspace.

### Comandos de workspace

| Comando | Acción |
|---------|--------|
| `/jm-adk:workspace new "descripción"` | Crear workspace manualmente |
| `/jm-adk:workspace status` | Ver workspace activo |
| `/jm-adk:workspace list` | Listar todos |
| `/jm-adk:workspace complete` | Marcar como completado |
| `/jm-adk:workspace archive <id>` | Archivar |

---

## Cómo funciona

### 1. Tú describes

```
"Necesito una app de tareas para equipos pequeños con colaboración en tiempo real."
```

### 2. Pristino compone una tríada

Para cada tarea, el orquestador selecciona 3 agentes:

| Rol | Quién | Qué hace |
|-----|-------|---------|
| **Lead** | El especialista del dominio | Produce el entregable principal |
| **Support** | Un especialista transversal | Revisa seguridad, accesibilidad, edge cases |
| **Guardian** | El guardián de calidad | Valida contra la Constitución y las puertas de calidad |

Ejecutan en secuencia: Lead → Support → Guardian. Como una línea de ensamblaje donde cada estación agrega valor.

### 3. Recibes un proyecto real

Código funcional, probado, accesible, seguro, desplegado en URL en vivo. Con documentación y decisiones trazables.

---

## Anatomía del kit

```
jm-agentic-development-kit/
├── PRISTINO.md                 ← Alma del orquestador (identidad, tríada, reglas)
├── PRISTINO-INDEX.md           ← Registro maestro de los 1,036 componentes
├── CLAUDE.md                   ← Instrucciones para Claude Code
├── GEMINI.md                   ← Instrucciones para Gemini
├── AGENTS.md                   ← Instrucciones para OpenAI Codex
├── .cursorrules                ← Instrucciones para Cursor
├── .windsurfrules              ← Instrucciones para Windsurf
├── .github/copilot-instructions.md ← Instrucciones para VS Code Copilot
├── landing.html                ← Página de onboarding (abre en navegador)
│
├── skills/ (264 × paquete enriquecido)
│   └── {skill}/
│       ├── SKILL.md            ← Archivo maestro
│       ├── agents/             ← 4 sub-agentes (lead, support, guardian, specialist)
│       ├── knowledge/          ← Grafo de conocimiento (Zettelkasten) + body of knowledge
│       ├── prompts/            ← Primary + meta + variaciones
│       └── templates/          ← HTML (brand MetodologIA) + DOCX spec
│
├── agents/ (256)               ← Agentes especializados
├── commands/ (260)             ← Comandos invocables por el usuario
├── prompts/ (256)              ← Templates de prompts reutilizables
├── references/
│   ├── ontology/               ← Constitución v6.0.0, metacognición, integridad, entorno
│   ├── brand/                  ← Design tokens v2.0.0 Neo-Swiss Clean + template HTML
│   └── guardrails/             ← Guidelines/constraints/guardrails JSON (RAG interno)
├── hooks/                      ← 5 hooks (SessionStart, UserPromptSubmit, PreToolUse, PostToolUse, Stop)
├── templates/                  ← 5 scaffolds de proyecto (Firebase, Angular, React, Vanilla, Node)
└── docs/                       ← Guías, ejemplos, catálogo, arquitectura
```

### Cada skill es un paquete completo

No es un archivo suelto. Cada skill contiene:

| Componente | Qué es | Para qué sirve |
|-----------|--------|---------------|
| `SKILL.md` | Archivo maestro | Define el procedimiento: Discover → Analyze → Execute → Validate |
| `agents/` | 4 sub-agentes | Lead (produce), Support (revisa), Guardian (valida), Specialist (profundiza) |
| `knowledge/` | Grafo de conocimiento | Zettelkasten con `[[wikilinks]]` para Obsidian. Body of knowledge con estándares |
| `prompts/` | Prompts de ejecución | Primary (ejecutar), Meta (auto-mejora), Variaciones (quick, expert, audit) |
| `templates/` | Templates de output | HTML branded (MetodologIA), DOCX spec, XLSX donde aplica |

**3,348 archivos** solo en skills/. Cada habilidad está lista para operar de forma autónoma.

---

## Empezar

### Prerrequisitos

- [Claude Code](https://claude.ai/claude-code) instalado (o cualquier IDE compatible — ver sección de compatibilidad)
- Terminal (la app donde tecleas comandos)
- Git

### Instalar (60 segundos)

```bash
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git
claude plugin add ./jm-agentic-development-kit
```

### Primer proyecto (3 minutos)

```bash
/jm-adk:onboarding    # Guiado paso a paso
```

O directo:

```bash
/jm-adk:demo           # 3 demos: portfolio / task manager / análisis de repo
/jm-adk:init           # Setup completo: detecta entorno, genera Constitución, asigna tríada
```

---

## Comandos esenciales

| Categoría | Comando | Qué hace |
|-----------|---------|---------|
| **Empezar** | `onboarding` | Primera experiencia guiada |
| | `demo` | Demo rápida (3 opciones) |
| | `init` | Setup de proyecto con detección de entorno |
| | `menu` | Paleta completa de 260 comandos |
| **Analizar** | `analyze input="..."` | Pipeline de discovery completo |
| | `prospect input="..."` | Prospección de clientes por geografía |
| | `dossier input="..."` | Dossier de investigación de empresa |
| **Construir** | `scaffold-firebase` | Proyecto Firebase desde cero |
| | `create-component name="..."` | Nuevo componente UI |
| | `create-auth` | Flujo de login/signup |
| **Calidad** | `review` | Code review con puertas de calidad |
| | `audit-perf` | Lighthouse performance |
| | `audit-a11y` | Accesibilidad WCAG |
| **Desplegar** | `ship target=firebase` | Deploy a Firebase Hosting |
| | `ship target=hostinger` | Deploy a Hostinger vía SSH+Git |
| **Gobernanza** | `debate topic="..."` | Debate socrático para decisiones difíciles |
| | `validate-chain` | Verificar trazabilidad de la cadena de integridad |
| | `guardrails` | Gestionar reglas de trabajo del usuario |
| | `constitution` | Ver o enmendar la Constitución |

---

## Gobernanza

### Constitución v6.0.0 (18 principios, renumerados 1-18)

| Capa | Principios | Función |
|------|-----------|---------|
| **Foundation** | 1 Think First, 2 Simple First | CÓMO se piensa antes de actuar |
| **Product** | 3 Accesibilidad, 4 SEO, 5 Design System, 6 Brand Voice, 7 Sostenibilidad | QUÉ se construye para el usuario |
| **Engineering** | 8 Seguridad, 9 TDD, 10 BDD Full-Spectrum, 11 Sequential-First (WIP≤3), 12 Performance | CÓMO se construye con rigor |
| **Identity** | 13 Brand Identity, 14 Integridad, 15 Learning Loop, 16 Indexable Repo | QUIÉN es el sistema y cómo evoluciona |
| **Security** | 17 Anti-Corruption Layer | CÓMO se protege de degradación |
| **Evolution** | 18 Continuous Improvement | CÓMO se mejora continuamente |

### Puertas de calidad

| Puerta | Cuándo | Qué bloquea si falla |
|--------|--------|---------------------|
| **G0** | Antes de empezar | Secretos en código, branch sin crear, Constitución no reconocida |
| **G1** | Después de especificar | Requisitos incompletos, criterios de aceptación ausentes |
| **G2** | Después de diseñar | Arquitectura sin documentar, tests sin escribir, presupuesto Lighthouse sin definir |
| **G3** | Antes de desplegar | Tests fallando, Lighthouse < 90, accesibilidad sucia, seguridad comprometida |

### Ejecución secuencial (Principio 11)

```
DEFAULT → Secuencial por ruta crítica

PARALELO → Solo cuando el plan tiene tags [PARALLEL-OK]:
  1. Cero dependencias entre tareas paralelas
  2. Máximo 3 agentes concurrentes (WIP limit)
  3. Forward-only (ninguna tarea espera a otra)

Ante duda → secuencial.
```

### Cadena de integridad

Cada línea de código se traza hacia atrás:

```
Intención → Requisito (RQL) → Plan → Decisión (ADR) → Especificación → Tests → Código
```

Si un eslabón falta, `/jm-adk:validate-chain` lo detecta.

---

## Detección de entorno

Pristino detecta automáticamente dónde corre y se adapta. Usa un **patrón Adapter + Anti-Corruption Layer** para 7 IDEs:

| IDE | Archivo que lee | Modo tríada | Herramientas |
|-----|----------------|-------------|-------------|
| Claude Code | `CLAUDE.md` | Completo (subagentes) | Todas |
| Gemini | `GEMINI.md` | Prompts secuenciales | Limitadas |
| Cursor | `.cursorrules` | Checklist inline | Read/Write/Edit/Bash |
| Windsurf | `.windsurfrules` | Checklist inline | Read/Write/Edit/Bash |
| VS Code Copilot | `.github/copilot-instructions.md` | Sugerencias | Limitadas |
| Codex (OpenAI) | `AGENTS.md` | Prompts secuenciales | Bash/Read/Write |
| Antigravity | `.agent/rules/GEMINI.md` | Completo (Gemini agents) | Todas |

El Anti-Corruption Layer garantiza que cada IDE reciba instrucciones en su formato nativo sin contaminar la ontología central.

---

## Guardrails del usuario

El usuario puede declarar reglas de trabajo que Pristino almacena y enforza:

```bash
/jm-adk:guardrails add="Siempre usar TypeScript"    # → Guideline
/jm-adk:guardrails add="Nunca usar jQuery"           # → Constraint
/jm-adk:guardrails                                    # → Ver reglas activas
```

Pristino **doble-confirma** antes de guardar. Las reglas se cargan en cada sesión como RAG interno. El Guardian las verifica.

---

## Estética de marca

Todo output HTML usa la estética MetodologIA — Design Tokens v2.0.0 **Neo-Swiss Clean**:

| Elemento | Valor |
|----------|-------|
| **Fondo principal** | Navy `#122562` |
| **Acento primario** | Gold `#FFD700` |
| **Acento secundario** | Blue `#137DC5` |
| **Texto oscuro** | Charcoal `#1F2833` |
| **Acento suave** | Lavender `#BBA0CC` |
| **Neutro** | Gray `#808080` |
| **Tipografía títulos** | Poppins |
| **Tipografía cuerpo** | Trebuchet MS |
| **Tipografía notas al pie** | Futura |
| **Tipografía código** | JetBrains Mono |
| **Brand Voice** | v3.0 Minto-First OS |
| **Efectos** | Glassmorphism, grid overlay tipo blueprint, hover con gold glow |
| **Print-ready** | Se imprime correctamente en papel carta |

Tokens en: `references/brand/design-tokens.json`
Template en: `references/brand/html-template.html`

---

## Números

| Componente | Cantidad | Detalle |
|-----------|---------|---------|
| Skills | 264 | Cada uno es un paquete enriquecido (~12 archivos) |
| Agents | 256 | Especialistas de dominio |
| Commands | 260 | Invocables por el usuario |
| Prompts | 256 | Templates reutilizables |
| Sub-agents en skills | 1,056 | 4 por skill (lead, support, guardian, specialist) |
| Knowledge graphs | 264 | Zettelkasten-ready, Obsidian-compatible |
| Output templates | 528+ | HTML brand + DOCX spec por skill |
| Hooks | 5 | SessionStart, UserPromptSubmit, PreToolUse, PostToolUse, Stop |
| IDE files | 7 | Claude, Gemini, Cursor, Windsurf, Copilot, Codex, Antigravity |
| Archivos totales en skills/ | 3,348 | — |
| Prompt variations (quick+deep) | 528 | quick.md + deep.md por skill |
| **Total componentes** | **1,036** | 264 Skills + 256 Agents + 260 Commands + 256 Prompts |

---

## Documentación

| Documento | Para quién | Qué aprenderás |
|----------|-----------|---------------|
| [Getting Started](docs/getting-started.md) | Todos | Instalar y primer proyecto (5 min) |
| [Landing Page](landing.html) | No técnicos | Qué es, para qué sirve, cómo empezar |
| [Ejemplos](docs/examples/) | Todos | E-commerce, task manager, portfolio |
| [Catálogo](docs/catalog.md) | Desarrolladores | Navegar los 264 skills y agents |
| [Arquitectura](docs/architecture-diagram.md) | Desarrolladores | Pipeline, DSVSR, puertas, routing |
| [Constitución](references/ontology/constitution-v6.0.0.md) | Gobernanza | 18 principios completos (renumerados 1-18) |
| [PRISTINO.md](PRISTINO.md) | Avanzados | Alma del orquestador |
| [Contributing](CONTRIBUTING.md) | Contribuidores | Cómo agregar skills y agents |
| [Changelog](CHANGELOG.md) | Todos | Historial de versiones |

---

## Compatibilidad

| Plataforma | Cómo usarlo |
|-----------|-----------|
| **Claude Code** | `claude plugin add ./` (recomendado, tríada completa) |
| **Cursor** | Abrir el proyecto — lee `.cursorrules` automáticamente |
| **VS Code + Copilot** | Lee `.github/copilot-instructions.md` automáticamente |
| **Gemini Code Assist** | Lee `GEMINI.md` automáticamente |
| **OpenAI Codex** | Lee `AGENTS.md` automáticamente |
| **Antigravity Kit** | Copiar `.agent/` a tu proyecto |
| **Cualquier IDE** | Los skills son Markdown — funcionan en cualquier lugar |

---

## Límites y supuestos

| Límite | Detalle | Trade-off |
|--------|---------|-----------|
| Stack Firebase-first | No soporta AWS, Azure, ni servidores custom | Simplicidad > flexibilidad. Firebase cubre el 90% de casos web |
| Hostinger para static | No SSR, no Docker, no runtime server-side | Costo $3/mes > complejidad de infraestructura |
| WIP máximo 3 | Nunca más de 3 agentes concurrentes | Calidad predecible > velocidad máxima |
| Confianza >= 0.95 | El sistema no entrega si no está seguro | Precisión > rapidez. Ante duda: debate socrático |
| Inglés interno | Skills y agents en inglés. Output al usuario bilingüe (ES/EN) | Consistencia del ecosistema > localización interna |

---

## Validación (QA)

El kit fue auditado por 3 agentes QA en paralelo:

| Auditor | Alcance | Issues encontrados | Resueltos |
|---------|---------|-------------------|-----------|
| Skills QA | 264 skills × ~12 archivos | 4 Medium, 6 Low | 4 Medium |
| Agents + Commands QA | 256 agents + 260 commands | 1 High, 1 Low, 3 Info | 1 High |
| Prompts + System QA | 1,026 prompts + 10 archivos de sistema | 1 High, 3 Medium, 2 Low | 1 High, 1 Medium |

**Resultado**: 0 Critical, 0 High sin resolver. Todos los issues HIGH y MEDIUM corregidos. Los LOW son cosméticos y documentados.

---

## Sobre

Creado por **[Javier Montaño](https://linkedin.com/in/montaño-guzman)** — GenAI Champion, +13 años liderando transformación digital en 6 países. Creador de [MetodologIA](https://metodologia.info).

Co-creado con **Claude Code** (Anthropic) y **Pristino Agent** — colaboración humano-IA que produjo 1,036 componentes y 3,348 archivos de skill en una sola sesión. Validado por ciclo de QA con 3 agentes auditores en paralelo.

**Créditos**: MetodologIA · Sovereign Architect · Antigravity Kit (vudovn) · Intent Integrity Kit · Claude Code (Anthropic)

**Agradecimiento especial**: [Katherin Oquendo](https://github.com/KatherinOquendo) — aliada fundamental en la reconstrucción de skills, QA incansable, y la persona que creyó en este proyecto cuando era solo una idea. Sin su apoyo, este kit no existiría.

**Agradecimientos**: Duber López (el review que exigió producir más) · Blockito (el builder que ejecutó)

---

<p align="center">
  <strong>MIT License</strong> — Copyright (c) 2026 JM Labs (Javier Montaño)<br>
  <em>Made with Claude Code and Tons of Love with the Help of Pristino Agent</em>
</p>

---

# English Version

<p align="center">
  <img src="https://img.shields.io/badge/JM--ADK-v4.0.0_Workspace-FFD700?style=for-the-badge&labelColor=122562" alt="Version" />
  <img src="https://img.shields.io/badge/Components-1036-FFD700?style=for-the-badge&labelColor=122562" alt="1036" />
  <img src="https://img.shields.io/badge/Skills-264_(enriched)-137DC5?style=for-the-badge&labelColor=122562" alt="Skills" />
  <img src="https://img.shields.io/badge/Constitution-v6.0.0-FFD700?style=for-the-badge&labelColor=122562" alt="Constitution" />
</p>

<h1 align="center">JM Agentic Development Kit</h1>

<p align="center">
  <strong>Turn intention into results.</strong><br>
  <em>Describe what you want. The kit analyzes, designs, builds, tests, and deploys.</em>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml"><img src="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml/badge.svg" alt="CI" /></a>
  <a href="landing.html"><img src="https://img.shields.io/badge/Landing-Open-FFD700" alt="Landing" /></a>
</p>

---

## What is it

A ready-to-work agentic environment. 264 specialized skills, 256 agents, and an orchestrator (Pristino) that composes a team of 3 for every task. You give the direction. The kit executes with method.

**It's not a chatbot.** It's a governed system: 18 constitutional principles (Constitution v6.0.0), 4 quality gates, traceability of every decision, and continuous learning between sessions.

## What problem does it solve

| Without JM-ADK | With JM-ADK |
|----------------|------------|
| AI guesses what you want | AI asks, analyzes, validates before acting |
| Inconsistent results | Same method every time: analyze → design → build → test → deploy |
| One generalist agent does everything | 264 specialists, each expert in their domain |
| No quality control | 4 mandatory gates (G0→G1→G2→G3) |
| Context lost between sessions | Decisions recorded, insights extracted, errors not repeated |
| No task traceability | Automatic workspace: every task creates its folder with tasklog, changelog, plan |
| You manage the AI | The AI manages itself under Constitution v6.0.0 |

## What you can do

| Need | Command | Result | Deploy |
|------|---------|--------|--------|
| Personal website | `/jm-adk:express input="Portfolio"` | Accessible HTML/CSS, Lighthouse 98+ | Hostinger ($3/mo) |
| App with login and data | `/jm-adk:scaffold-firebase` | Firebase Auth + Firestore + Hosting | Firebase (free) |
| Analyze a business idea | `/jm-adk:analyze input="Artisan marketplace"` | Requirements, domain model, flows, feasibility, costs | — |
| Prospect clients in Miami | `/jm-adk:prospect input="AI training Miami"` | Market dossier, target companies, outreach strategy | Branded HTML |
| Improve your CV | `/jm-adk:cv` | CV rewritten with impact language | Branded HTML/DOCX |
| Workshop proposal | `/jm-adk:workshop-proposal` | Agenda, resources, budget, visual proposal | HTML/PPTX branded |
| SaaS landing page | `/jm-adk:express input="SaaS landing" target=hostinger` | HTML with CTA, SEO, responsive | Hostinger |
| Admin dashboard | `/jm-adk:create-dashboard` | Tables, charts, filters, CRUD | Firebase |

**Stack**: HTML5, CSS3, JS, Angular 18+, React 19+, Firebase, Hostinger. Google ecosystem.

---

## No idea what this is?

If you've never used GitHub, Git, or a terminal — this section is for you. Don't worry, it's easier than it looks.

### Option A: Download as ZIP (zero friction)

1. Go to the repository page on GitHub
2. Click the green **"Code"** button
3. Select **"Download ZIP"**
4. Extract the ZIP file to the folder where you'll work
5. Done — open it with your favorite IDE

### Option B: Clone with Git (recommended)

This option lets you receive updates and collaborate. You need to install a few tools first.

#### Step 1: Install Git

| System | Instructions |
|--------|-------------|
| **Windows** | Download the installer from [git-scm.com](https://git-scm.com/download/win). Run the `.exe` and accept the default options. |
| **Mac** | Open Terminal and type `xcode-select --install`. Alternative: if you have Homebrew, run `brew install git`. |

To verify: open a terminal and type `git --version`. If you see a version number, it's installed.

#### Step 2: Install Node.js

Download the **LTS** (Long Term Support) version from [nodejs.org](https://nodejs.org). Run the installer. To verify: `node --version` in the terminal.

#### Step 3: Install Python (optional)

Only needed if you want to use advanced BM25 search. Download from [python.org](https://www.python.org/downloads/) the latest version. To verify: `python --version`.

#### Step 4: Install a Markdown reader

Recommendation: **[Obsidian](https://obsidian.md)** — it's free and works with knowledge graphs. Perfect for navigating the 264 skills and their interconnected wikilinks. Download from [obsidian.md](https://obsidian.md) and install normally.

#### Step 5: Install an IDE

| Option | Description | Link |
|--------|-------------|------|
| **VS Code** (free) | The most popular. Install the Antigravity extension for AI. | [code.visualstudio.com](https://code.visualstudio.com) |
| **Claude Code** | If you have access, it's the complete experience with agent triad. | [claude.ai/claude-code](https://claude.ai/claude-code) |
| **Cursor** | IDE with built-in AI. Reads `.cursorrules` automatically. | [cursor.com](https://cursor.com) |

#### Step 6: Install GitHub CLI

| System | Command |
|--------|---------|
| **Mac** | `brew install gh` |
| **Windows** | `winget install --id GitHub.cli` |

To verify: `gh --version`.

#### Step 7: Clone the repository

```bash
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git
cd jm-agentic-development-kit
```

If using Claude Code, add the plugin:

```bash
claude plugin add ./jm-agentic-development-kit
```

---

## Automatic Workspace (v4.0.0)

Every task automatically creates its folder with full traceability:

```
workspace/
└── 2026-03-25-landing-page/
    ├── tasklog.md         ← Automatic log of every action
    ├── changelog.md       ← Version history
    ├── plan.md            ← Task plan
    └── artifacts/         ← Generated deliverables
```

### Activate

```
/jm-adk:init
```

This creates the configuration (`.jm-adk.json`) and the `workspace/` directory. After that, every task you describe automatically generates its workspace.

### Workspace commands

| Command | Action |
|---------|--------|
| `/jm-adk:workspace new "description"` | Create workspace manually |
| `/jm-adk:workspace status` | View active workspace |
| `/jm-adk:workspace list` | List all |
| `/jm-adk:workspace complete` | Mark as completed |
| `/jm-adk:workspace archive <id>` | Archive |

---

## How it works

### 1. You describe

```
"I need a task app for small teams with real-time collaboration."
```

### 2. Pristino composes a triad

For every task, the orchestrator selects 3 agents:

| Role | Who | What they do |
|------|-----|-------------|
| **Lead** | The domain specialist | Produces the main deliverable |
| **Support** | A cross-cutting specialist | Reviews security, accessibility, edge cases |
| **Guardian** | The quality guardian | Validates against the Constitution and quality gates |

They execute in sequence: Lead → Support → Guardian. Like an assembly line where each station adds value.

### 3. You receive a real project

Functional, tested, accessible, secure code, deployed to a live URL. With documentation and traceable decisions.

---

## Kit anatomy

```
jm-agentic-development-kit/
├── PRISTINO.md                 ← Orchestrator soul (identity, triad, rules)
├── PRISTINO-INDEX.md           ← Master registry of all 1,036 components
├── CLAUDE.md                   ← Instructions for Claude Code
├── GEMINI.md                   ← Instructions for Gemini
├── AGENTS.md                   ← Instructions for OpenAI Codex
├── .cursorrules                ← Instructions for Cursor
├── .windsurfrules              ← Instructions for Windsurf
├── .github/copilot-instructions.md ← Instructions for VS Code Copilot
├── landing.html                ← Onboarding page (open in browser)
│
├── skills/ (264 × enriched package)
│   └── {skill}/
│       ├── SKILL.md            ← Master file
│       ├── agents/             ← 4 sub-agents (lead, support, guardian, specialist)
│       ├── knowledge/          ← Knowledge graph (Zettelkasten) + body of knowledge
│       ├── prompts/            ← Primary + meta + variations
│       └── templates/          ← HTML (MetodologIA brand) + DOCX spec
│
├── agents/ (256)               ← Specialized agents
├── commands/ (260)             ← User-invocable commands
├── prompts/ (256)              ← Reusable prompt templates
├── references/
│   ├── ontology/               ← Constitution v6.0.0, metacognition, integrity, environment
│   ├── brand/                  ← Design tokens v2.0.0 Neo-Swiss Clean + HTML template
│   └── guardrails/             ← Guidelines/constraints/guardrails JSON (internal RAG)
├── hooks/                      ← 5 hooks (SessionStart, UserPromptSubmit, PreToolUse, PostToolUse, Stop)
├── templates/                  ← 5 project scaffolds (Firebase, Angular, React, Vanilla, Node)
└── docs/                       ← Guides, examples, catalog, architecture
```

### Every skill is a complete package

It's not a loose file. Each skill contains:

| Component | What it is | What it's for |
|-----------|-----------|--------------|
| `SKILL.md` | Master file | Defines the procedure: Discover → Analyze → Execute → Validate |
| `agents/` | 4 sub-agents | Lead (produces), Support (reviews), Guardian (validates), Specialist (deep-dives) |
| `knowledge/` | Knowledge graph | Zettelkasten with `[[wikilinks]]` for Obsidian. Body of knowledge with standards |
| `prompts/` | Execution prompts | Primary (execute), Meta (self-improve), Variations (quick, expert, audit) |
| `templates/` | Output templates | Branded HTML (MetodologIA), DOCX spec, XLSX where applicable |

**3,348 files** in skills/ alone. Every skill is ready to operate autonomously.

---

## Getting started

### Prerequisites

- [Claude Code](https://claude.ai/claude-code) installed (or any compatible IDE — see compatibility section)
- Terminal (the app where you type commands)
- Git

### Install (60 seconds)

```bash
git clone https://github.com/JaviMontano/jm-agentic-development-kit.git
claude plugin add ./jm-agentic-development-kit
```

### First project (3 minutes)

```bash
/jm-adk:onboarding    # Guided step by step
```

Or directly:

```bash
/jm-adk:demo           # 3 demos: portfolio / task manager / repo analysis
/jm-adk:init           # Full setup: detect environment, generate Constitution, assign triad
```

---

## Essential commands

| Category | Command | What it does |
|----------|---------|-------------|
| **Start** | `onboarding` | First guided experience |
| | `demo` | Quick demo (3 options) |
| | `init` | Project setup with environment detection |
| | `menu` | Full palette of 260 commands |
| **Analyze** | `analyze input="..."` | Complete discovery pipeline |
| | `prospect input="..."` | Client prospecting by geography |
| | `dossier input="..."` | Company research dossier |
| **Build** | `scaffold-firebase` | Firebase project from scratch |
| | `create-component name="..."` | New UI component |
| | `create-auth` | Login/signup flow |
| **Quality** | `review` | Code review with quality gates |
| | `audit-perf` | Lighthouse performance |
| | `audit-a11y` | WCAG accessibility |
| **Deploy** | `ship target=firebase` | Deploy to Firebase Hosting |
| | `ship target=hostinger` | Deploy to Hostinger via SSH+Git |
| **Governance** | `debate topic="..."` | Socratic debate for difficult decisions |
| | `validate-chain` | Verify integrity chain traceability |
| | `guardrails` | Manage user work rules |
| | `constitution` | View or amend the Constitution |

---

## Governance

### Constitution v6.0.0 (18 principles, renumbered 1-18)

| Layer | Principles | Purpose |
|-------|-----------|---------|
| **Foundation** | 1 Think First, 2 Simple First | HOW to think before acting |
| **Product** | 3 Accessibility, 4 SEO, 5 Design System, 6 Brand Voice, 7 Sustainability | WHAT is built for the user |
| **Engineering** | 8 Security, 9 TDD, 10 BDD Full-Spectrum, 11 Sequential-First (WIP≤3), 12 Performance | HOW it's built with rigor |
| **Identity** | 13 Brand Identity, 14 Integrity, 15 Learning Loop, 16 Indexable Repo | WHO the system is and how it evolves |
| **Security** | 17 Anti-Corruption Layer | HOW it protects against degradation |
| **Evolution** | 18 Continuous Improvement | HOW it continuously improves |

### Quality gates

| Gate | When | What it blocks on failure |
|------|------|--------------------------|
| **G0** | Before starting | Secrets in code, branch not created, Constitution not recognized |
| **G1** | After specifying | Incomplete requirements, missing acceptance criteria |
| **G2** | After designing | Undocumented architecture, unwritten tests, undefined Lighthouse budget |
| **G3** | Before deploying | Failing tests, Lighthouse < 90, dirty accessibility, compromised security |

### Sequential execution (Principle 11)

```
DEFAULT → Sequential along critical path

PARALLEL → Only when the plan has [PARALLEL-OK] tags:
  1. Zero dependencies between parallel tasks
  2. Maximum 3 concurrent agents (WIP limit)
  3. Forward-only (no task waits for another)

When in doubt → sequential.
```

### Integrity chain

Every line of code traces back:

```
Intention → Requirement (RQL) → Plan → Decision (ADR) → Specification → Tests → Code
```

If a link is missing, `/jm-adk:validate-chain` detects it.

---

## Environment detection

Pristino automatically detects where it runs and adapts. It uses an **Adapter pattern + Anti-Corruption Layer** for 7 IDEs:

| IDE | File it reads | Triad mode | Tools |
|-----|--------------|------------|-------|
| Claude Code | `CLAUDE.md` | Full (sub-agents) | All |
| Gemini | `GEMINI.md` | Sequential prompts | Limited |
| Cursor | `.cursorrules` | Inline checklist | Read/Write/Edit/Bash |
| Windsurf | `.windsurfrules` | Inline checklist | Read/Write/Edit/Bash |
| VS Code Copilot | `.github/copilot-instructions.md` | Suggestions | Limited |
| Codex (OpenAI) | `AGENTS.md` | Sequential prompts | Bash/Read/Write |
| Antigravity | `.agent/rules/GEMINI.md` | Full (Gemini agents) | All |

The Anti-Corruption Layer ensures each IDE receives instructions in its native format without contaminating the central ontology.

---

## User guardrails

Users can declare work rules that Pristino stores and enforces:

```bash
/jm-adk:guardrails add="Always use TypeScript"    # → Guideline
/jm-adk:guardrails add="Never use jQuery"          # → Constraint
/jm-adk:guardrails                                  # → View active rules
```

Pristino **double-confirms** before saving. Rules are loaded in every session as internal RAG. The Guardian verifies them.

---

## Brand aesthetics

All HTML output uses the MetodologIA aesthetic — Design Tokens v2.0.0 **Neo-Swiss Clean**:

| Element | Value |
|---------|-------|
| **Main background** | Navy `#122562` |
| **Primary accent** | Gold `#FFD700` |
| **Secondary accent** | Blue `#137DC5` |
| **Dark text** | Charcoal `#1F2833` |
| **Soft accent** | Lavender `#BBA0CC` |
| **Neutral** | Gray `#808080` |
| **Heading typography** | Poppins |
| **Body typography** | Trebuchet MS |
| **Footnote typography** | Futura |
| **Code typography** | JetBrains Mono |
| **Brand Voice** | v3.0 Minto-First OS |
| **Effects** | Glassmorphism, blueprint grid overlay, hover with gold glow |
| **Print-ready** | Prints correctly on letter paper |

Tokens at: `references/brand/design-tokens.json`
Template at: `references/brand/html-template.html`

---

## Numbers

| Component | Count | Detail |
|-----------|-------|--------|
| Skills | 264 | Each is an enriched package (~12 files) |
| Agents | 256 | Domain specialists |
| Commands | 260 | User-invocable |
| Prompts | 256 | Reusable templates |
| Sub-agents in skills | 1,056 | 4 per skill (lead, support, guardian, specialist) |
| Knowledge graphs | 264 | Zettelkasten-ready, Obsidian-compatible |
| Output templates | 528+ | Branded HTML + DOCX spec per skill |
| Hooks | 5 | SessionStart, UserPromptSubmit, PreToolUse, PostToolUse, Stop |
| IDE files | 7 | Claude, Gemini, Cursor, Windsurf, Copilot, Codex, Antigravity |
| Total files in skills/ | 3,348 | — |
| Prompt variations (quick+deep) | 528 | quick.md + deep.md per skill |
| **Total components** | **1,036** | 264 Skills + 256 Agents + 260 Commands + 256 Prompts |

---

## Documentation

| Document | For whom | What you'll learn |
|----------|----------|------------------|
| [Getting Started](docs/getting-started.md) | Everyone | Install and first project (5 min) |
| [Landing Page](landing.html) | Non-technical | What it is, what it's for, how to start |
| [Examples](docs/examples/) | Everyone | E-commerce, task manager, portfolio |
| [Catalog](docs/catalog.md) | Developers | Browse the 264 skills and agents |
| [Architecture](docs/architecture-diagram.md) | Developers | Pipeline, DSVSR, gates, routing |
| [Constitution](references/ontology/constitution-v6.0.0.md) | Governance | 18 complete principles (renumbered 1-18) |
| [PRISTINO.md](PRISTINO.md) | Advanced | Orchestrator soul |
| [Contributing](CONTRIBUTING.md) | Contributors | How to add skills and agents |
| [Changelog](CHANGELOG.md) | Everyone | Version history |

---

## Compatibility

| Platform | How to use it |
|----------|-------------|
| **Claude Code** | `claude plugin add ./` (recommended, full triad) |
| **Cursor** | Open the project — reads `.cursorrules` automatically |
| **VS Code + Copilot** | Reads `.github/copilot-instructions.md` automatically |
| **Gemini Code Assist** | Reads `GEMINI.md` automatically |
| **OpenAI Codex** | Reads `AGENTS.md` automatically |
| **Antigravity Kit** | Copy `.agent/` to your project |
| **Any IDE** | Skills are Markdown — they work anywhere |

---

## Limits and assumptions

| Limit | Detail | Trade-off |
|-------|--------|-----------|
| Firebase-first stack | Does not support AWS, Azure, or custom servers | Simplicity > flexibility. Firebase covers 90% of web cases |
| Hostinger for static | No SSR, no Docker, no server-side runtime | Cost $3/mo > infrastructure complexity |
| Max WIP 3 | Never more than 3 concurrent agents | Predictable quality > maximum speed |
| Confidence >= 0.95 | The system doesn't deliver if it's not certain | Precision > speed. When in doubt: Socratic debate |
| English internals | Skills and agents in English. User output bilingual (ES/EN) | Ecosystem consistency > internal localization |

---

## Validation (QA)

The kit was audited by 3 QA agents in parallel:

| Auditor | Scope | Issues found | Resolved |
|---------|-------|-------------|----------|
| Skills QA | 264 skills × ~12 files | 4 Medium, 6 Low | 4 Medium |
| Agents + Commands QA | 256 agents + 260 commands | 1 High, 1 Low, 3 Info | 1 High |
| Prompts + System QA | 1,026 prompts + 10 system files | 1 High, 3 Medium, 2 Low | 1 High, 1 Medium |

**Result**: 0 Critical, 0 High unresolved. All HIGH and MEDIUM issues corrected. LOW issues are cosmetic and documented.

---

## About

Created by **[Javier Montano](https://linkedin.com/in/montaño-guzman)** — GenAI Champion, 13+ years leading digital transformation in 6 countries. Creator of [MetodologIA](https://metodologia.info).

Co-created with **Claude Code** (Anthropic) and **Pristino Agent** — human-AI collaboration that produced 1,036 components and 3,348 skill files in a single session. Validated by QA cycle with 3 auditor agents in parallel.

**Credits**: MetodologIA · Sovereign Architect · Antigravity Kit (vudovn) · Intent Integrity Kit · Claude Code (Anthropic)

**Special thanks**: [Katherin Oquendo](https://github.com/KatherinOquendo) — fundamental ally in skill reconstruction, tireless QA, and the person who believed in this project when it was just an idea. Without her support, this kit would not exist.

**Acknowledgments**: Duber Lopez (the review that demanded more) · Blockito (the builder who executed)

---

<p align="center">
  <strong>MIT License</strong> — Copyright (c) 2026 JM Labs (Javier Montano)<br>
  <em>Made with Claude Code and Tons of Love with the Help of Pristino Agent</em>
</p>
