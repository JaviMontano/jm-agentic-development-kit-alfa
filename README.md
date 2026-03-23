<p align="center">
  <img src="https://img.shields.io/badge/JM--ADK-v3.2.0_Tera-D4AF37?style=for-the-badge&labelColor=003366" alt="Version" />
  <img src="https://img.shields.io/badge/Components-1032-D4AF37?style=for-the-badge&labelColor=003366" alt="1024" />
  <img src="https://img.shields.io/badge/Skills-264_(enriched)-137DC5?style=for-the-badge&labelColor=003366" alt="Skills" />
</p>

<h1 align="center">JM Agentic Development Kit</h1>

<p align="center">
  <strong>Convierte intencion en resultados.</strong><br>
  <em>Describe lo que quieres. El kit analiza, disena, construye, prueba y despliega.</em>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="MIT" /></a>
  <a href="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml"><img src="https://github.com/JaviMontano/jm-agentic-development-kit/actions/workflows/validate.yml/badge.svg" alt="CI" /></a>
  <a href="landing.html"><img src="https://img.shields.io/badge/Landing-Open-D4AF37" alt="Landing" /></a>
</p>

---

## Que es

Un entorno agentico listo para trabajar. 256 habilidades especializadas, 256 agentes, y un orquestador (Pristino) que compone un equipo de 3 para cada tarea. Tu das la direccion. El kit ejecuta con metodo.

**No es un chatbot.** Es un sistema gobernado: 18 principios constitucionales, 4 puertas de calidad, trazabilidad de cada decision, y aprendizaje continuo entre sesiones.

## Que problema resuelve

| Sin JM-ADK | Con JM-ADK |
|------------|-----------|
| La IA adivina que quieres | La IA pregunta, analiza, valida antes de actuar |
| Resultados inconsistentes | Mismo metodo siempre: analizar → disenar → construir → probar → desplegar |
| Un agente generalista hace todo | 256 especialistas, cada uno experto en lo suyo |
| Sin control de calidad | 4 puertas obligatorias (G0→G1→G2→G3) |
| Contexto perdido entre sesiones | Decisiones grabadas, insights extraidos, errores no repetidos |
| Tu gestionas la IA | La IA se gestiona sola bajo Constitucion |

## Que puedes hacer

| Necesidad | Comando | Resultado | Deploy |
|-----------|---------|-----------|--------|
| Sitio web personal | `/jm-adk:express input="Portfolio"` | HTML/CSS accesible, Lighthouse 98+ | Hostinger ($3/mes) |
| App con login y datos | `/jm-adk:scaffold-firebase` | Firebase Auth + Firestore + Hosting | Firebase (gratis) |
| Analizar una idea de negocio | `/jm-adk:analyze input="Marketplace artesanal"` | Requisitos, modelo de dominio, flujos, factibilidad, costos | — |
| Prospectar clientes en Miami | `/jm-adk:prospect input="AI training Miami"` | Dossier de mercado, empresas target, estrategia de outreach | HTML branded |
| Mejorar tu CV | `/jm-adk:cv` | CV reescrito con lenguaje de impacto | HTML/DOCX branded |
| Propuesta de workshop | `/jm-adk:workshop-proposal` | Agenda, recursos, presupuesto, propuesta visual | HTML/PPTX branded |
| Landing page de SaaS | `/jm-adk:express input="SaaS landing" target=hostinger` | HTML con CTA, SEO, responsive | Hostinger |
| Dashboard admin | `/jm-adk:create-dashboard` | Tablas, graficos, filtros, CRUD | Firebase |

**Stack**: HTML5, CSS3, JS, Angular 18+, React 19+, Firebase, Hostinger. Ecosistema Google.

---

## Como funciona

### 1. Tu describes

```
"Necesito una app de tareas para equipos pequenos con colaboracion en tiempo real."
```

### 2. Pristino compone una triada

Para cada tarea, el orquestador selecciona 3 agentes:

| Rol | Quien | Que hace |
|-----|-------|---------|
| **Lead** | El especialista del dominio | Produce el entregable principal |
| **Support** | Un especialista transversal | Revisa seguridad, accesibilidad, edge cases |
| **Guardian** | El guardian de calidad | Valida contra la Constitucion y las puertas de calidad |

Ejecutan en secuencia: Lead → Support → Guardian. Como una linea de ensamblaje donde cada estacion agrega valor.

### 3. Recibes un proyecto real

Codigo funcional, probado, accesible, seguro, desplegado en URL en vivo. Con documentacion y decisiones trazables.

---

## Anatomia del kit

```
jm-agentic-development-kit/
├── PRISTINO.md                 ← Alma del orquestador (identidad, triada, reglas)
├── PRISTINO-INDEX.md           ← Registro maestro de los 1032 componentes
├── CLAUDE.md                   ← Instrucciones para Claude Code
├── GEMINI.md                   ← Instrucciones para Gemini
├── AGENTS.md                   ← Instrucciones para OpenAI Codex
├── .cursorrules                ← Instrucciones para Cursor
├── .windsurfrules              ← Instrucciones para Windsurf
├── .github/copilot-instructions.md ← Instrucciones para VS Code Copilot
├── landing.html                ← Pagina de onboarding (abre en navegador)
│
├── skills/ (256 × paquete enriquecido)
│   └── {skill}/
│       ├── SKILL.md            ← Archivo maestro
│       ├── agents/             ← 4 sub-agentes (lead, support, guardian, specialist)
│       ├── knowledge/          ← Grafo de conocimiento (Zettelkasten) + body of knowledge
│       ├── prompts/            ← Primary + meta + variaciones
│       └── templates/          ← HTML (brand MetodologIA) + DOCX spec
│
├── agents/ (256)               ← Agentes especializados
├── commands/ (256)             ← Comandos invocables por el usuario
├── prompts/ (256)              ← Templates de prompts reutilizables
├── references/
│   ├── ontology/               ← Constitucion v5.2.0, metacognicion, integridad, entorno
│   ├── brand/                  ← Design tokens + template HTML (navy + gold + glassmorphism)
│   └── guardrails/             ← Guidelines/constraints/guardrails JSON (RAG interno)
├── hooks/                      ← 5 hooks (SessionStart, UserPromptSubmit, PreToolUse, PostToolUse, Stop)
├── templates/                  ← 5 scaffolds de proyecto (Firebase, Angular, React, Vanilla, Node)
└── docs/                       ← Guias, ejemplos, catalogo, arquitectura
```

### Cada skill es un paquete completo

No es un archivo suelto. Cada skill contiene:

| Componente | Que es | Para que sirve |
|-----------|--------|---------------|
| `SKILL.md` | Archivo maestro | Define el procedimiento: Discover → Analyze → Execute → Validate |
| `agents/` | 4 sub-agentes | Lead (produce), Support (revisa), Guardian (valida), Specialist (profundiza) |
| `knowledge/` | Grafo de conocimiento | Zettelkasten con `[[wikilinks]]` para Obsidian. Body of knowledge con estandares |
| `prompts/` | Prompts de ejecucion | Primary (ejecutar), Meta (auto-mejora), Variaciones (quick, expert, audit) |
| `templates/` | Templates de output | HTML branded (MetodologIA), DOCX spec, XLSX donde aplica |

**3,348 archivos** solo en skills/. Cada habilidad esta lista para operar de forma autonoma.

---

## Empezar

### Prerrequisitos

- [Claude Code](https://claude.ai/claude-code) instalado
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
/jm-adk:demo           # 3 demos: portfolio / task manager / analisis de repo
/jm-adk:init           # Setup completo: detecta entorno, genera Constitucion, asigna triada
```

---

## Comandos esenciales

| Categoria | Comando | Que hace |
|-----------|---------|---------|
| **Empezar** | `onboarding` | Primera experiencia guiada |
| | `demo` | Demo rapida (3 opciones) |
| | `init` | Setup de proyecto con deteccion de entorno |
| | `menu` | Paleta completa de 256 comandos |
| **Analizar** | `analyze input="..."` | Pipeline de discovery completo |
| | `prospect input="..."` | Prospeccion de clientes por geografia |
| | `dossier input="..."` | Dossier de investigacion de empresa |
| **Construir** | `scaffold-firebase` | Proyecto Firebase desde cero |
| | `create-component name="..."` | Nuevo componente UI |
| | `create-auth` | Flujo de login/signup |
| **Calidad** | `review` | Code review con puertas de calidad |
| | `audit-perf` | Lighthouse performance |
| | `audit-a11y` | Accesibilidad WCAG |
| **Desplegar** | `ship target=firebase` | Deploy a Firebase Hosting |
| | `ship target=hostinger` | Deploy a Hostinger via SSH+Git |
| **Gobernanza** | `debate topic="..."` | Debate socratico para decisiones dificiles |
| | `validate-chain` | Verificar trazabilidad de la cadena de integridad |
| | `guardrails` | Gestionar reglas de trabajo del usuario |
| | `constitution` | Ver o enmendar la Constitucion |

---

## Gobernanza

### Constitucion v5.2.0 (18 principios)

| Capa | Principios | Funcion |
|------|-----------|---------|
| **Filosofia** | XIII Think First, XIV Simple First | COMO se piensa antes de actuar |
| **Core** | I-XII (accesibilidad, SEO, seguridad, TDD, design system, brand voice, sostenibilidad) | QUE se construye |
| **Evolucion** | XV BDD Full-Spectrum, XVI Sequential-First (WIP≤3), XVII Learning Loop, XVIII Indexable Repo | COMO se mejora |

### Puertas de calidad

| Puerta | Cuando | Que bloquea si falla |
|--------|--------|---------------------|
| **G0** | Antes de empezar | Secretos en codigo, branch sin crear, Constitucion no reconocida |
| **G1** | Despues de especificar | Requisitos incompletos, criterios de aceptacion ausentes |
| **G2** | Despues de disenar | Arquitectura sin documentar, tests sin escribir, presupuesto Lighthouse sin definir |
| **G3** | Antes de desplegar | Tests fallando, Lighthouse < 90, accesibilidad sucia, seguridad comprometida |

### Ejecucion secuencial (Principio XVI)

```
DEFAULT → Secuencial por ruta critica

PARALELO → Solo cuando el plan tiene tags [PARALLEL-OK]:
  1. Cero dependencias entre tareas paralelas
  2. Maximo 3 agentes concurrentes (WIP limit)
  3. Forward-only (ninguna tarea espera a otra)

Ante duda → secuencial.
```

### Cadena de integridad

Cada linea de codigo se traza hacia atras:

```
Intencion → Requisito (RQL) → Plan → Decision (ADR) → Especificacion → Tests → Codigo
```

Si un eslabon falta, `/jm-adk:validate-chain` lo detecta.

---

## Deteccion de entorno

Pristino detecta automaticamente donde corre y se adapta:

| IDE | Archivo que lee | Modo triada | Herramientas |
|-----|----------------|-------------|-------------|
| Claude Code | `CLAUDE.md` | Completo (subagentes) | Todas |
| Gemini | `GEMINI.md` | Prompts secuenciales | Limitadas |
| Cursor | `.cursorrules` | Checklist inline | Read/Write/Edit/Bash |
| Windsurf | `.windsurfrules` | Checklist inline | Read/Write/Edit/Bash |
| VS Code Copilot | `.github/copilot-instructions.md` | Sugerencias | Limitadas |
| Codex (OpenAI) | `AGENTS.md` | Prompts secuenciales | Bash/Read/Write |
| Antigravity | `.agent/rules/GEMINI.md` | Completo (Gemini agents) | Todas |

---

## Guardrails del usuario

El usuario puede declarar reglas de trabajo que Pristino almacena y enforza:

```bash
/jm-adk:guardrails add="Siempre usar TypeScript"    # → Guideline
/jm-adk:guardrails add="Nunca usar jQuery"           # → Constraint
/jm-adk:guardrails                                    # → Ver reglas activas
```

Pristino **doble-confirma** antes de guardar. Las reglas se cargan en cada sesion como RAG interno. El Guardian las verifica.

---

## Estetica de marca

Todo output HTML usa la estetica MetodologIA:

- **Fondo**: Navy #003366 / #0A122A
- **Acento**: Gold #D4AF37 / #FFD700
- **Tipografia**: Poppins (titulos) + Montserrat (cuerpo) + JetBrains Mono (codigo)
- **Efectos**: Glassmorphism, grid overlay tipo blueprint, hover con gold glow
- **Print-ready**: Se imprime correctamente en papel carta

Tokens en: `references/brand/design-tokens.json`
Template en: `references/brand/html-template.html`

---

## Numeros

| Componente | Cantidad | Detalle |
|-----------|---------|---------|
| Skills | 256 | Cada uno es un paquete enriquecido (~12 archivos) |
| Agents | 256 | Especialistas de dominio |
| Commands | 256 | Invocables por el usuario |
| Prompts | 256 | Templates reutilizables |
| Sub-agents en skills | 1,024 | 4 por skill (lead, support, guardian, specialist) |
| Knowledge graphs | 256 | Zettelkasten-ready, Obsidian-compatible |
| Output templates | 512+ | HTML brand + DOCX spec por skill |
| Hooks | 5 | SessionStart, UserPromptSubmit, PreToolUse, PostToolUse, Stop |
| IDE files | 7 | Claude, Gemini, Cursor, Windsurf, Copilot, Codex, Antigravity |
| Archivos totales en skills/ | 3,348 | — |
| Prompt variations (quick+deep) | 528 | quick.md + deep.md por skill |
| **Total componentes** | **1,032** | 264 Skills + 256 Agents + 256 Commands + 256 Prompts |

---

## Documentacion

| Documento | Para quien | Que aprenderas |
|----------|-----------|---------------|
| [Getting Started](docs/getting-started.md) | Todos | Instalar y primer proyecto (5 min) |
| [Landing Page](landing.html) | No tecnicos | Que es, para que sirve, como empezar |
| [Ejemplos](docs/examples/) | Todos | E-commerce, task manager, portfolio |
| [Catalogo](docs/catalog.md) | Desarrolladores | Navegar los 264 skills y agents |
| [Arquitectura](docs/architecture-diagram.md) | Desarrolladores | Pipeline, DSVSR, puertas, routing |
| [Constitucion](references/ontology/constitution-v5.2.0.md) | Gobernanza | 18 principios completos |
| [PRISTINO.md](PRISTINO.md) | Avanzados | Alma del orquestador |
| [Contributing](CONTRIBUTING.md) | Contribuidores | Como agregar skills y agents |
| [Changelog](CHANGELOG.md) | Todos | Historial de versiones |

---

## Compatibilidad

| Plataforma | Como usarlo |
|-----------|-----------|
| **Claude Code** | `claude plugin add ./` (recomendado, triada completa) |
| **Cursor** | Abrir el proyecto — lee `.cursorrules` automaticamente |
| **VS Code + Copilot** | Lee `.github/copilot-instructions.md` automaticamente |
| **Gemini Code Assist** | Lee `GEMINI.md` automaticamente |
| **OpenAI Codex** | Lee `AGENTS.md` automaticamente |
| **Antigravity Kit** | Copiar `.agent/` a tu proyecto |
| **Cualquier IDE** | Los skills son Markdown — funcionan en cualquier lugar |

---

## Limites y supuestos

| Limite | Detalle | Trade-off |
|--------|---------|-----------|
| Stack Firebase-first | No soporta AWS, Azure, ni servidores custom | Simplicidad > flexibilidad. Firebase cubre el 90% de casos web |
| Hostinger para static | No SSR, no Docker, no runtime server-side | Costo $3/mes > complejidad de infraestructura |
| WIP maximo 3 | Nunca mas de 3 agentes concurrentes | Calidad predecible > velocidad maxima |
| Confianza >= 0.95 | El sistema no entrega si no esta seguro | Precision > rapidez. Ante duda: debate socratico |
| Ingles interno | Skills y agents en ingles. Output al usuario bilingue (ES/EN) | Consistencia del ecosistema > localizacion interna |

---

## Validacion (QA)

El kit fue auditado por 3 agentes QA en paralelo:

| Auditor | Alcance | Issues encontrados | Resueltos |
|---------|---------|-------------------|-----------|
| Skills QA | 264 skills × ~12 archivos | 4 Medium, 6 Low | 4 Medium |
| Agents + Commands QA | 256 agents + 256 commands | 1 High, 1 Low, 3 Info | 1 High |
| Prompts + System QA | 1,026 prompts + 10 archivos de sistema | 1 High, 3 Medium, 2 Low | 1 High, 1 Medium |

**Resultado**: 0 Critical, 0 High sin resolver. Todos los issues HIGH y MEDIUM corregidos. Los LOW son cosmeticos y documentados.

---

## Sobre

Creado por **[Javier Montano](https://linkedin.com/in/montaño-guzman)** — GenAI Champion, +13 anos liderando transformacion digital en 6 paises. Creador de [MetodologIA](https://metodologia.info).

Co-creado con **Claude Code** (Anthropic) y **Pristino Agent** — colaboracion humano-IA que produjo 1,032 componentes y 3,348 archivos de skill en una sola sesion. Validado por ciclo de QA con 3 agentes auditores en paralelo.

**Creditos**: MetodologIA · Sovereign Architect · Antigravity Kit (vudovn) · Intent Integrity Kit · Claude Code (Anthropic)

**Agradecimientos**: Duber Lopez (el review que exigio producir mas) · Blockito (el builder que ejecuto)

---

<p align="center">
  <strong>MIT License</strong> — Copyright (c) 2026 JM Labs (Javier Montaño)<br>
  <em>Made with Claude Code and Tons of Love with the Help of Pristino Agent</em>
</p>
