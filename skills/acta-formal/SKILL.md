---
name: acta-formal
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Generates formal meeting records (actas) with legal/corporate format,
  numbered sections, signatures block, and branded HTML output. [EXPLICIT]
  Trigger: "acta formal", "acta de reunion", "formal minutes", "acta corporativa"
status: production
tags: [documents, meetings, formal, corporate, office]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - mcp__workspace-mcp__create_doc
  - mcp__workspace-mcp__modify_doc_text
  - mcp__workspace-mcp__create_drive_file
  - mcp__workspace-mcp__send_gmail_message
---

# Acta Formal

> "Lo que no se documenta, no existe." — Principio de gestion corporativa

## TL;DR

Genera actas formales de reunion con formato legal/corporativo: secciones numeradas, tabla de asistentes, acuerdos con responsables, y bloque de firmas. Salida en markdown y HTML branded. Opcionalmente sube a Drive y envia por email. [EXPLICIT]

## When to Activate

| Signal | Example |
|--------|---------|
| Acta formal | "Redacta el acta formal de la junta" |
| Acta corporativa | "Genera el acta de la reunion de consejo" |
| Formato legal | "Necesito las minutas en formato oficial" |
| Distribucion | "Crea el acta y mandala a los asistentes" |

No activar para notas informales (usar `meeting-notes`) ni para agendas (usar `agenda-builder`).

## S1 — Recopilar Metadata

1. **Datos generales**: fecha, hora inicio/fin, lugar (fisico o virtual), tipo de reunion
2. **Convocante**: nombre y cargo de quien convoca
3. **Asistentes**: nombre, cargo, firma (presente/ausente/justificado)
4. **Quorum**: validar que hay quorum suficiente para tomar acuerdos
5. **Numero de acta**: secuencial o por folio (integrar con `folio-generator` si disponible)

## S2 — Estructurar Acta

Secciones obligatorias (numeradas con romanos):

I. **Datos Generales** — Fecha, hora, lugar, tipo, numero de acta
II. **Lista de Asistencia** — Tabla con nombre, cargo, asistencia, firma
III. **Orden del Dia** — Puntos a tratar (numerados)
IV. **Desarrollo de la Sesion** — Resumen por punto del orden del dia
V. **Acuerdos** — Tabla: acuerdo, responsable, fecha limite, estado
VI. **Asuntos Varios** — Temas no incluidos en orden del dia
VII. **Cierre** — Hora de cierre, siguiente reunion programada
VIII. **Firmas** — Bloque de firmas del presidente y secretario

## S3 — Generar Output

1. Generar version markdown (para workspace)
2. Generar version HTML branded (usando template)
3. Si solicitado: crear Google Doc via `create_doc`
4. Si solicitado: subir a Drive via `create_drive_file`
5. Si solicitado: enviar por email a asistentes via `send_gmail_message`

## S4 — Validar

- [ ] Todas las secciones I-VIII presentes
- [ ] Quorum validado antes de registrar acuerdos
- [ ] Cada acuerdo tiene responsable y fecha limite
- [ ] Numero de acta es unico y secuencial
- [ ] Formato consistente (numeracion, tipografia)
- [ ] Evidence tags aplicados

## Quality Criteria

- [ ] Formato legal/corporativo valido
- [ ] Secciones numeradas con romanos (I-VIII)
- [ ] Tabla de asistentes completa
- [ ] Acuerdos con responsable y deadline
- [ ] Bloque de firmas al final

## Anti-Patterns

- Generar acta sin validar quorum
- Omitir la seccion de acuerdos
- No numerar el acta secuencialmente
- Mezclar formato informal con formato de acta

## Related Skills

- `meeting-notes` — notas informales de reunion
- `follow-up-email` — enviar seguimiento post-reunion
- `folio-generator` — numeracion de documentos
- `google-docs-mcp` — crear documentos en Google Docs

## Usage

- `/acta-formal` — generar acta completa
- "redacta el acta de la reunion de hoy"
- "genera el acta y mandala por email a todos"

## Assumptions & Limits

- Requiere input de la reunion (notas, transcript, o datos) [EXPLICIT]
- Formato latinoamericano corporativo por defecto [EXPLICIT]
- Numeracion secuencial requiere tracking manual o folio-generator [EXPLICIT]
