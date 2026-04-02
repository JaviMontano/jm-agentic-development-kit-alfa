# Google Workspace + Gmail MCP Setup Guide

> Pipeline paso a paso para conectar Claude Code con Gmail, Calendar, Drive, Docs, Sheets y Slides.

## Requisitos Previos

- Node.js 18+ instalado
- Cuenta de Google (Gmail)
- Acceso a [Google Cloud Console](https://console.cloud.google.com)

---

## Paso 1: Crear Proyecto en Google Cloud

1. Ve a [Google Cloud Console](https://console.cloud.google.com)
2. Click **"Select a project"** > **"New Project"**
3. Nombre: `jm-adk-workspace` (o el que prefieras)
4. Click **"Create"**

## Paso 2: Habilitar APIs

En tu proyecto, ve a **APIs & Services > Library** y habilita:

| API | Para |
|-----|------|
| Gmail API | Email: leer, enviar, borradores, etiquetas |
| Google Drive API | Archivos, carpetas, busqueda |
| Google Docs API | Crear/editar documentos |
| Google Sheets API | Leer/escribir hojas de calculo |
| Google Slides API | Presentaciones |
| Google Calendar API | Eventos, calendario, Meet |

## Paso 3: Crear Credenciales OAuth 2.0

1. Ve a **APIs & Services > Credentials**
2. Click **"+ Create Credentials"** > **"OAuth client ID"**
3. Si es la primera vez, configura la **OAuth consent screen**:
   - User Type: **External** (o Internal si tienes Google Workspace org)
   - App name: `JM-ADK MCP`
   - Scopes: agregar los scopes de Gmail, Drive, Calendar, Docs, Sheets, Slides
   - Test users: agrega tu email
4. Tipo de aplicacion: **Desktop app**
5. Nombre: `jm-adk-desktop`
6. Click **"Create"**
7. **Descarga el JSON** (boton "Download JSON")

## Paso 4: Ubicar Credenciales

### Para Google Workspace MCP (Drive/Docs/Sheets/Slides/Calendar)

```bash
# Crea directorio de config
mkdir -p ~/.config/google-drive-mcp

# Mueve el archivo descargado
mv ~/Downloads/client_secret_*.json ~/.config/google-drive-mcp/gcp-oauth.keys.json
```

### Para Gmail MCP

```bash
# Crea directorio de config
mkdir -p ~/.gmail-mcp

# Copia las mismas credenciales (o crea unas separadas si prefieres)
cp ~/.config/google-drive-mcp/gcp-oauth.keys.json ~/.gmail-mcp/credentials.json
```

## Paso 5: Configurar Variables de Entorno

Agrega a tu `.bashrc`, `.zshrc` o `.env`:

```bash
# Google Workspace MCP (Drive, Docs, Sheets, Slides, Calendar)
export GOOGLE_WORKSPACE_CREDENTIALS_PATH="$HOME/.config/google-drive-mcp/gcp-oauth.keys.json"

# Gmail MCP
export GMAIL_MCP_CONFIG_DIR="$HOME/.gmail-mcp"
```

Recarga tu shell:
```bash
source ~/.bashrc  # o ~/.zshrc
```

## Paso 6: Autenticar (Primera Vez)

### Gmail MCP - Autenticacion

```bash
# Ejecuta el comando de auth
npx @dev-hitesh-gupta/gmail-mcp-server auth
```

Esto abre tu navegador. Inicia sesion con tu cuenta de Gmail y acepta los permisos. El token se guarda en `~/.gmail-mcp/token.json`.

### Google Workspace MCP - Autenticacion

```bash
# La primera ejecucion abre el navegador automaticamente
npx @piotr-agier/google-drive-mcp
```

Acepta los permisos. El token se guarda en `~/.config/google-drive-mcp/tokens.json`.

## Paso 7: Verificar en Claude Code

```bash
# Desde el directorio del proyecto
cd /path/to/jm-agentic-development-kit-alfa

# Verificar que los MCPs estan configurados
claude mcp list
```

Deberias ver:
```
google-workspace  stdio  @piotr-agier/google-drive-mcp
gmail             stdio  @dev-hitesh-gupta/gmail-mcp-server
```

## Paso 8: Probar

En una sesion de Claude Code:

```
"Lista mis ultimos 5 emails de Gmail"
"Crea un evento en Calendar para manana a las 10am"
"Lista los archivos en mi Drive"
```

---

## Tools Disponibles

### Gmail MCP (19 tools)

| Tool | Descripcion |
|------|-------------|
| `gmail_search` | Buscar emails (sintaxis Gmail) |
| `gmail_get_message` | Leer email completo por ID |
| `gmail_send` | Enviar email (CC/BCC, threading) |
| `gmail_get_thread` | Obtener hilo de conversacion |
| `gmail_get_profile` | Info del perfil |
| `gmail_create_draft` | Crear borrador |
| `gmail_list_drafts` | Listar borradores |
| `gmail_send_draft` | Enviar borrador existente |
| `gmail_delete_draft` | Eliminar borrador |
| `gmail_list_labels` | Listar etiquetas |
| `gmail_create_label` | Crear etiqueta |
| `gmail_delete_label` | Eliminar etiqueta |
| `gmail_trash` | Mover a papelera |
| `gmail_untrash` | Restaurar de papelera |
| `gmail_mark_read` | Marcar como leido |
| `gmail_mark_unread` | Marcar como no leido |
| `gmail_modify_labels` | Modificar etiquetas |
| `gmail_list_attachments` | Listar adjuntos |
| `gmail_get_attachment` | Descargar adjunto (base64) |

### Google Workspace MCP (Drive/Docs/Sheets/Slides/Calendar)

| Categoria | Operaciones |
|-----------|-------------|
| **Drive** | Crear, subir, descargar, mover, copiar, renombrar, eliminar archivos/carpetas |
| **Drive Search** | Busqueda avanzada en Drive |
| **Google Docs** | Insertar/eliminar texto, tablas, imagenes, comentarios |
| **Google Sheets** | Leer/escribir celdas y rangos |
| **Google Slides** | Crear presentaciones |
| **Google Calendar** | CRUD eventos, integracion Google Meet |
| **Shared Drives** | Acceso completo a drives compartidos |
| **Rutas** | Navegacion por path (`/Work/Projects/file.doc`) |

---

## Seguridad

- **NUNCA** commits `credentials.json`, `token.json` o `gcp-oauth.keys.json` al repo
- Los archivos `.gitignore` ya excluyen `*.json` en directorios sensibles
- Usa variables de entorno (`${VAR}`) en `.mcp.json`, nunca rutas hardcodeadas
- Los tokens se renuevan automaticamente; si expiran, re-ejecuta el paso de auth
- Revisa los scopes OAuth: usa el minimo necesario

## Troubleshooting

| Problema | Solucion |
|----------|----------|
| `Error: credentials not found` | Verifica `GOOGLE_WORKSPACE_CREDENTIALS_PATH` y `GMAIL_MCP_CONFIG_DIR` |
| `Error: token expired` | Re-ejecuta el auth del paso 6 |
| `Error: API not enabled` | Habilita la API en Google Cloud Console (paso 2) |
| `Error: access denied` | Agrega tu email como test user en OAuth consent screen |
| MCP no aparece en `claude mcp list` | Verifica que `.mcp.json` esta en la raiz del proyecto |
| `Error: -32600` | Autentica primero antes de usar tools |
