# Workflow Definitions

## Definicion de Workflows

Cada workflow sigue la estructura:

```yaml
name: workflow-id
description: Que hace el workflow
triggers:
  - "frase que activa el workflow"
  - "otra frase"
steps:
  - name: Nombre del step
    skill: skill-id
    input: descripcion del input
    output: descripcion del output
    gate: true/false  # requiere confirmacion del usuario
    on_error: skip/retry/abort
estimated_time: "X minutos"
```

---

## meeting-complete

```yaml
name: meeting-complete
description: Pipeline completo post-reunion — de notas brutas a follow-ups enviados
triggers:
  - "workflow reunion"
  - "proceso completo de reunion"
  - "minuta y follow-up"
  - "genera todo de la reunion"
steps:
  - name: Generar minuta
    skill: meeting-notes
    input: transcript, notas brutas, o agenda con anotaciones
    output: minuta estructurada (markdown)
    gate: false
    on_error: abort

  - name: Formato acta formal
    skill: acta-formal
    input: minuta del step anterior
    output: acta HTML + markdown con secciones I-VIII
    gate: true  # confirmar formato antes de distribuir
    on_error: skip

  - name: Enviar follow-ups
    skill: follow-up-email
    input: action items extraidos de la minuta
    output: N emails enviados (uno por responsable)
    gate: true  # confirmar antes de enviar
    on_error: skip

  - name: Crear recordatorios
    skill: google-calendar-mcp
    input: deadlines de action items
    output: eventos de calendario creados
    gate: true  # confirmar eventos
    on_error: skip

estimated_time: "5-10 minutos"
```

## sales-daily

```yaml
name: sales-daily
description: Cierre de ventas del dia — registro + stock + reporte
triggers:
  - "cierre del dia"
  - "registrar ventas del dia"
  - "workflow ventas"
steps:
  - name: Registrar transacciones
    skill: sales-tracker
    input: datos de ventas (producto, cantidad, precio, metodo pago)
    output: filas agregadas en Sheets
    gate: false
    on_error: abort

  - name: Actualizar inventario
    skill: inventory-management
    input: productos vendidos (SKU + cantidad)
    output: stock actualizado
    gate: false
    on_error: skip

  - name: Generar resumen
    skill: reporting-templates
    input: datos del dia (totales, KPIs)
    output: reporte diario formateado
    gate: false
    on_error: skip

estimated_time: "3-5 minutos"
```

## client-proposal

```yaml
name: client-proposal
description: Cotizacion completa — propuesta + folio + envio + follow-up
triggers:
  - "cotizacion para cliente"
  - "workflow propuesta"
  - "enviar cotizacion"
steps:
  - name: Redactar propuesta
    skill: proposal-writing
    input: requerimientos del cliente, scope, precio
    output: documento de propuesta
    gate: true  # revisar antes de numerar
    on_error: abort

  - name: Asignar folio
    skill: folio-generator
    input: tipo COT + contenido de propuesta
    output: documento con folio COT-YYYY-NNN
    gate: false
    on_error: retry

  - name: Enviar al cliente
    skill: gmail-mcp
    input: documento con folio + email del cliente
    output: email enviado
    gate: true  # confirmar antes de enviar
    on_error: skip

  - name: Agendar follow-up
    skill: google-calendar-mcp
    input: "Follow-up cotizacion {folio}" en +3 dias
    output: evento de calendario
    gate: false
    on_error: skip

estimated_time: "5-8 minutos"
```

## inventory-restock

```yaml
name: inventory-restock
description: Revision de stock → reporte de items a resurtir → alerta por email
triggers:
  - "revision de inventario"
  - "alerta de stock"
  - "que hay que resurtir"
steps:
  - name: Leer inventario
    skill: inventory-management
    input: spreadsheet de inventario
    output: lista de items con stock actual vs minimo
    gate: false
    on_error: abort

  - name: Identificar bajo stock
    skill: google-sheets-mcp
    input: datos de inventario
    output: lista filtrada de items bajo minimo
    gate: false
    on_error: abort

  - name: Generar reporte
    skill: reporting-templates
    input: items bajo stock
    output: reporte de restock formateado
    gate: false
    on_error: skip

  - name: Enviar alerta
    skill: gmail-mcp
    input: reporte + email del responsable de compras
    output: email enviado
    gate: true  # confirmar envio
    on_error: skip

estimated_time: "3-5 minutos"
```
