# Workflow: {{workflow_name}}

**Iniciado**: {{start_time}}
**Estado**: {{overall_status}}

---

## Steps

| # | Step | Skill | Estado | Resultado | Duracion |
|---|------|-------|--------|-----------|----------|
{{#each steps}}
| {{@index_plus_one}} | {{this.name}} | `{{this.skill}}` | {{this.status}} | {{this.result}} | {{this.duration}} |
{{/each}}

## Resumen

- **Completados**: {{completed_count}}/{{total_count}} steps
- **Saltados**: {{skipped_count}} (por gate rechazado o error)
- **Tiempo total**: {{total_duration}}

## Artifacts Generados

{{#each artifacts}}
- {{this.type}}: `{{this.path}}` ({{this.size}})
{{/each}}

## Acciones Pendientes

{{#if pending_actions}}
{{#each pending_actions}}
- [ ] {{this}}
{{/each}}
{{else}}
Ninguna — workflow completado.
{{/if}}

---

*Generado por office-workflow-runner — {{timestamp}}*
