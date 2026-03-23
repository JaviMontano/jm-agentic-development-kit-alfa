# Example: Task Manager — Scaffold to Deploy

End-to-end walkthrough: scaffold a task manager, build core features, and deploy.

## Step 1: Scaffold

```bash
/jm-adk:scaffold-firebase
```

**Agent**: `deployment-specialist` + `frontend-craftsman`

**Generated structure**:

```
task-manager/
├── public/
│   ├── index.html
│   ├── css/
│   │   ├── base.css          # Reset, custom properties, typography
│   │   ├── layout.css        # Grid, flex utilities
│   │   └── components.css    # Buttons, cards, forms, modals
│   ├── js/
│   │   ├── app.js            # Entry point, router init
│   │   ├── firebase.js       # Firebase config + initialization
│   │   ├── auth.js           # Login/logout/session management
│   │   └── modules/
│   │       ├── tasks.js      # Task CRUD operations
│   │       └── ui.js         # DOM manipulation helpers
│   └── assets/
│       └── icons/            # SVG icons
├── functions/
│   ├── index.js              # Cloud Functions entry
│   └── package.json
├── firestore.rules
├── firestore.indexes.json
├── firebase.json
├── package.json
├── .specify/
│   ├── CONSTITUTION.md
│   └── plans/
└── .gitignore
```

### Key Files

**`public/index.html`** — Semantic HTML with ARIA:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Task Manager</title>
  <link rel="stylesheet" href="/css/base.css">
  <link rel="stylesheet" href="/css/layout.css">
  <link rel="stylesheet" href="/css/components.css">
</head>
<body>
  <header role="banner">
    <h1>Task Manager</h1>
    <nav role="navigation" aria-label="Main">
      <button id="login-btn" aria-label="Sign in">Sign In</button>
    </nav>
  </header>

  <main role="main" id="app">
    <!-- Dynamic content rendered here -->
  </main>

  <footer role="contentinfo">
    <p>Made with Claude Code and Tons of Love</p>
  </footer>

  <!-- Firebase SDK -->
  <script type="module" src="/js/firebase.js"></script>
  <script type="module" src="/js/app.js"></script>
</body>
</html>
```

**`public/css/base.css`** — CSS Layers + Custom Properties:

```css
@layer reset, tokens, base, components, utilities;

@layer tokens {
  :root {
    --color-primary: #2563eb;
    --color-primary-hover: #1d4ed8;
    --color-surface: #ffffff;
    --color-surface-alt: #f8fafc;
    --color-text: #0f172a;
    --color-text-muted: #64748b;
    --color-border: #e2e8f0;
    --color-success: #16a34a;
    --color-danger: #dc2626;

    --font-sans: system-ui, -apple-system, sans-serif;
    --font-mono: ui-monospace, monospace;

    --space-xs: 0.25rem;
    --space-sm: 0.5rem;
    --space-md: 1rem;
    --space-lg: 1.5rem;
    --space-xl: 2rem;

    --radius-sm: 0.25rem;
    --radius-md: 0.5rem;
    --radius-lg: 0.75rem;

    --shadow-sm: 0 1px 2px rgb(0 0 0 / 0.05);
    --shadow-md: 0 4px 6px rgb(0 0 0 / 0.07);
  }
}
```

## Step 2: Add Authentication

```bash
/jm-adk:create-auth-flow provider=google
```

**Agent**: `firebase-auth-expert`

**Generated `public/js/auth.js`**:

```javascript
import { getAuth, signInWithPopup, GoogleAuthProvider, onAuthStateChanged, signOut } from 'firebase/auth';
import { app } from './firebase.js';

const auth = getAuth(app);
const provider = new GoogleAuthProvider();

export function initAuth() {
  const loginBtn = document.getElementById('login-btn');

  onAuthStateChanged(auth, (user) => {
    if (user) {
      loginBtn.textContent = 'Sign Out';
      loginBtn.onclick = () => signOut(auth);
      document.dispatchEvent(new CustomEvent('auth:login', { detail: user }));
    } else {
      loginBtn.textContent = 'Sign In';
      loginBtn.onclick = () => signInWithPopup(auth, provider);
      document.dispatchEvent(new CustomEvent('auth:logout'));
    }
  });
}

export function getCurrentUser() {
  return auth.currentUser;
}
```

## Step 3: Build the Task Board

```bash
/jm-adk:create-component name="task-board" type="interactive"
```

**Agent**: `frontend-craftsman`

**Generated `public/js/modules/tasks.js`**:

```javascript
import {
  getFirestore, collection, addDoc, updateDoc, deleteDoc, doc,
  query, where, orderBy, onSnapshot, serverTimestamp
} from 'firebase/firestore';
import { app } from '../firebase.js';
import { getCurrentUser } from '../auth.js';

const db = getFirestore(app);

// Real-time task listener
export function subscribeTasks(callback) {
  const user = getCurrentUser();
  if (!user) return () => {};

  const q = query(
    collection(db, 'tasks'),
    where('userId', '==', user.uid),
    orderBy('createdAt', 'desc')
  );

  return onSnapshot(q, (snapshot) => {
    const tasks = snapshot.docs.map(doc => ({
      id: doc.id,
      ...doc.data()
    }));
    callback(tasks);
  });
}

// CRUD operations
export async function createTask(title) {
  const user = getCurrentUser();
  return addDoc(collection(db, 'tasks'), {
    title,
    status: 'todo',
    userId: user.uid,
    createdAt: serverTimestamp()
  });
}

export async function updateTaskStatus(taskId, status) {
  return updateDoc(doc(db, 'tasks', taskId), {
    status,
    updatedAt: serverTimestamp()
  });
}

export async function deleteTask(taskId) {
  return deleteDoc(doc(db, 'tasks', taskId));
}
```

**Security Rules** (`firestore.rules`):

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /tasks/{taskId} {
      allow read, write: if request.auth != null
                         && request.auth.uid == resource.data.userId;
      allow create: if request.auth != null
                    && request.resource.data.userId == request.auth.uid;
    }
  }
}
```

## Step 4: Quality Audit

```bash
/jm-adk:review
```

**Agent**: `quality-guardian`

**Output**:

```
=== Quality Gate Report ===

G0: Security ✅
  - No API keys in client code [CODE]
  - Firestore rules enforce user ownership [CODE]
  - No XSS vectors detected [CODE]

G1: Evidence ✅
  - 12/12 claims tagged
  - Constitution compliance: PASS

G2: Lighthouse (estimated) ⚠️
  - Performance: ~95 (no heavy dependencies) [INFERENCE]
  - Accessibility: ~90 (needs focus management on task actions) [INFERENCE]
  - Recommendation: Add aria-live region for task updates

G3: Deployment ✅
  - Firebase Hosting compatible [CONFIG]
  - No server-side runtime required for frontend [CODE]
  - Cloud Functions required for future features [INFERENCE]

Overall: PASS with 1 recommendation
```

## Step 5: Deploy

```bash
/jm-adk:ship target=firebase
```

**Agent**: `deployment-specialist` + `firebase-deployer`

```
=== Deployment Report ===

Pre-deploy checks:
  ✅ firebase.json valid
  ✅ Firestore rules deployed
  ✅ No secrets in source
  ✅ Build output: 45KB total (HTML: 3KB, CSS: 8KB, JS: 34KB)

Deploying to Firebase Hosting...
  ✅ Hosting: https://task-manager-abc123.web.app
  ✅ Firestore rules: deployed
  ✅ Indexes: deployed

Post-deploy verification:
  ✅ Site loads in 0.8s
  ✅ Auth flow works
  ✅ Tasks CRUD operational
```

## Summary

| Step | Command | Time |
|------|---------|------|
| Scaffold | `/jm-adk:scaffold-firebase` | ~30s |
| Auth | `/jm-adk:create-auth-flow provider=google` | ~20s |
| Task board | `/jm-adk:create-component name="task-board"` | ~45s |
| Review | `/jm-adk:review` | ~15s |
| Deploy | `/jm-adk:ship target=firebase` | ~60s |
| **Total** | | **~3 minutes** |

From zero to a deployed, authenticated, real-time task manager with quality gates.

---

*Made with Claude Code and Tons of Love with the Help of Pristino Agent*
