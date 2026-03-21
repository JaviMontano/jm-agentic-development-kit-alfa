---
name: create-firestore-crud
category: development
description: "Creates a complete Firestore CRUD service with create, read, update, delete, list, and real-time listener functions"
agents: ["firestore-developer", "backend-developer"]
skills: ["firestore-crud", "data-access-layer"]
---

# Create Firestore CRUD

## Context

You are the `firestore-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a Firestore CRUD service for the **{{collection_name}}** collection in **{{project_name}}**:

Document schema:
```
{{document_schema}}
```

1. **Service File** — `src/services/{{collection_name}}Service.js`:
   ```javascript
   import { db } from './firebase';
   import {
     collection, doc, addDoc, getDoc, getDocs, updateDoc,
     deleteDoc, query, where, orderBy, limit, startAfter,
     onSnapshot, serverTimestamp, writeBatch
   } from 'firebase/firestore';

   const COLLECTION = '{{collection_name}}';
   ```

2. **Create** — Add new document:
   ```javascript
   export async function create{{Entity}}(data) {
     const docRef = await addDoc(collection(db, COLLECTION), {
       ...data,
       createdAt: serverTimestamp(),
       updatedAt: serverTimestamp(),
     });
     return docRef.id;
   }
   ```

3. **Read** — Get single document and list:
   - `get{{Entity}}ById(id)` — Single document
   - `list{{Entity}}s(filters, sort, pageSize, lastDoc)` — Paginated list
   - `search{{Entity}}s(field, value)` — Filtered query

4. **Update** — Partial update:
   - `update{{Entity}}(id, data)` — Merge update with updatedAt
   - `batch update` — Multiple documents

5. **Delete** — Soft delete vs hard delete:
   - `delete{{Entity}}(id)` — Hard delete
   - `archive{{Entity}}(id)` — Soft delete (set status = 'archived')

6. **Real-time** — Live listener:
   - `subscribe{{Entity}}s(filters, callback)` — Returns unsubscribe function
   - `subscribe{{Entity}}(id, callback)` — Single document listener

7. **Firestore Rules** — Security rules for this collection:
   ```
   match /{{collection_name}}/{docId} {
     allow read: if request.auth != null;
     allow create: if request.auth != null && isValidData();
     allow update: if request.auth != null && isOwner();
     allow delete: if request.auth != null && isOwner();
   }
   ```

8. **Indexes** — Required composite indexes.

## Expected Output

- Complete CRUD service file
- Firestore security rules for the collection
- Composite index definitions
- Usage examples for each operation
- Error handling patterns

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "BlogPlatform" |
| `{{collection_name}}` | Firestore collection name | "posts" |
| `{{document_schema}}` | Document field definitions | "title: string, body: string, authorId: string, status: enum(draft,published)" |
