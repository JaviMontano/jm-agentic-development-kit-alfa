---
name: office-workflow-runner
author: JM Labs (Javier Montano)
version: 1.0.0
description: >
  Orchestrates multi-skill office workflows — chains meeting-notes → follow-up → calendar,
  inventory → sales → reports, and other common office pipelines. [EXPLICIT]
  Trigger: "workflow", "pipeline", "automatizar", "cadena completa", "proceso oficina"
status: production
tags: [orchestration, workflow, automation, office, pipeline]
mcp-server: workspace-mcp
allowed-tools:
  - Read
  - Write
  - Bash
  - Glob
  - Grep
  - mcp__workspace-mcp__send_gmail_message
  - mcp__workspace-mcp__draft_gmail_message
  - mcp__workspace-mcp__manage_event
  - mcp__workspace-mcp__create_doc
  - mcp__workspace-mcp__create_spreadsheet
  - mcp__workspace-mcp__modify_sheet_values
  - mcp__workspace-mcp__create_drive_file
  - mcp__workspace-mcp__search_drive_files
---

# Office Workflow Runner

> "Automation is not about replacing humans — it's about removing friction." — Unknown

## TL;DR

Orquesta workflows de oficina multi-step, encadenando skills en secuencia con paso de datos entre ellos. Cada workflow tiene steps definidos, gates de confirmacion, y manejo de errores. El orquestador no ejecuta tareas — las delega a skills especializados y gestiona el pipeline. [EXPLICIT]

## When to Activate

| Signal | Example |
|--------|---------|
| Workflow explicito | "Ejecuta el workflow completo de reunion" |
| Cadena de tareas | "Genera la minuta, manda los follow-ups, y agenda los recordatorios" |
| Automatizacion | "Automatiza el proceso de ventas del dia" |
| Pipeline | "Corre el pipeline de inventario → reporte" |

## Workflows Disponibles

### 1. meeting-complete

**Trigger**: "workflow reunion", "proceso completo de reunion", "minuta completa"

```
Input: transcript/notas de reunion
  → Step 1: meeting-notes (generar minuta)
  → Step 2: acta-formal (formato oficial)  [GATE: confirmar con usuario]
  → Step 3: follow-up-email (extraer action items, enviar emails individuales)  [GATE: confirmar envio]
  → Step 4: google-calendar-mcp (crear eventos para deadlines)  [GATE: confirmar eventos]
Output: minuta + acta + emails enviados + eventos creados
```

### 2. sales-daily

**Trigger**: "registrar ventas del dia", "workflow ventas", "cierre del dia"

```
Input: datos de ventas del dia
  → Step 1: sales-tracker (registrar transacciones en Sheets)
  → Step 2: inventory-management (actualizar stock si aplica)
  → Step 3: reporting-templates (generar resumen diario)
Output: transacciones registradas + stock actualizado + reporte
```

### 3. client-proposal

**Trigger**: "workflow cotizacion", "propuesta para cliente", "enviar cotizacion"

```
Input: requerimientos del cliente
  → Step 1: proposal-writing (redactar propuesta)
  → Step 2: folio-generator (asignar folio COT-YYYY-NNN)
  → Step 3: gmail-mcp (enviar al cliente)  [GATE: confirmar envio]
  → Step 4: google-calendar-mcp (agendar follow-up en 3 dias)
Output: propuesta con folio + email enviado + recordatorio agendado
```

### 4. inventory-restock

**Trigger**: "workflow inventario", "revision de stock", "alerta de inventario"

```
Input: trigger manual o alerta de stock bajo
  → Step 1: inventory-management (leer stock actual)
  → Step 2: google-sheets-mcp (identificar items bajo stock minimo)
  → Step 3: reporting-templates (generar reporte de restock)
  → Step 4: gmail-mcp (enviar reporte a responsable de compras)  [GATE: confirmar envio]
Output: reporte de items a resurtir + email enviado
```

## Orchestration Protocol

### Ejecucion

1. **Identify workflow**: Match user intent to workflow definition
2. **Validate inputs**: Ensure required data is available
3. **Execute steps**: Sequential by default, parallel only if marked `[PARALLEL-OK]`
4. **Gate checks**: Before destructive actions (email, calendar), confirm with user
5. **Pass outputs**: Each step's output becomes next step's input
6. **Log progress**: Each step logged in workspace tasklog
7. **Handle errors**: If step fails, log partial results, alert user, offer retry

### Gates de Confirmacion

| Action | Gate Required | Reason |
|--------|--------------|--------|
| Enviar email | Si | Irreversible |
| Crear evento calendario | Si | Visible a otros |
| Subir a Drive | No | Reversible |
| Generar documento | No | Local/reversible |
| Actualizar Sheets | No | Reversible |

### Manejo de Errores

| Error | Accion |
|-------|--------|
| MCP tool falla | Reintentar 1 vez, luego saltar step y alertar |
| Skill no encontrado | Usar skill mas cercano o alertar |
| Input insuficiente | Pedir datos faltantes al usuario |
| Gate rechazado por usuario | Saltar step, continuar con siguientes |
| Error medio-pipeline | Guardar progreso parcial, reportar lo completado |

## Quality Criteria

- [ ] Workflow identificado correctamente por intent
- [ ] Cada step ejecutado en orden
- [ ] Gates de confirmacion respetados
- [ ] Errores manejados sin perder progreso
- [ ] Tasklog actualizado con cada step

## Anti-Patterns

- Ejecutar workflows sin confirmar acciones destructivas
- Saltar steps sin notificar al usuario
- No guardar progreso parcial ante errores
- Ejecutar steps en paralelo que tienen dependencias

## Related Skills

- `meeting-notes` — generacion de minutas
- `acta-formal` — actas formales
- `follow-up-email` — emails de seguimiento
- `folio-generator` — numeracion de documentos
- `sales-tracker` — registro de ventas
- `inventory-management` — gestion de inventario
- `google-calendar-mcp` — eventos de calendario
- `gmail-mcp` — envio de emails

## Usage

- `/office-workflow-runner` — seleccionar y ejecutar workflow
- "ejecuta el workflow de reunion con estas notas"
- "corre el pipeline de ventas del dia"
- "automatiza la cotizacion para el cliente X"
