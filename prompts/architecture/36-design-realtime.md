---
name: design-realtime
category: architecture
description: "Designs real-time data synchronization architecture using Firestore listeners, presence systems, and conflict resolution"
agents: ["realtime-architect", "firebase-specialist"]
skills: ["realtime-sync", "firestore-listeners"]
---

# Design Real-time Architecture

## Context

You are the `realtime-architect` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Design the real-time architecture for **{{project_name}}**:

Real-time features needed:
```
{{realtime_features}}
```

1. **Listener Architecture** — For each real-time feature:
   - Firestore path to listen on (document vs. collection)
   - Query constraints (where, orderBy, limit)
   - Listener lifecycle (when to subscribe/unsubscribe)
   - Data transformation on snapshot

2. **Presence System** — Online/offline user tracking:
   - Firebase Realtime Database for presence (`.info/connected`)
   - Sync presence to Firestore for queries
   - Last-seen timestamp
   - Typing indicators (if chat)

3. **Optimistic Updates** — For user actions:
   - Immediate local state update
   - Firestore write in background
   - Rollback on failure
   - Conflict detection

4. **Conflict Resolution** — When multiple users edit simultaneously:
   - Last-write-wins vs. merge strategy
   - Field-level vs. document-level locking
   - User notification of conflicts
   - Cloud Function-based resolution

5. **Performance Management** — Prevent listener overload:
   - Maximum concurrent listeners
   - Pagination for large collections
   - Snapshot listener vs. poll strategy per feature
   - Cost implications (reads per listener)

6. **Offline Behavior** — When connectivity is lost:
   - Firestore offline persistence behavior
   - Queue management for pending writes
   - UI indicators for sync status
   - Reconnection handling

7. **Testing** — Test real-time features:
   - Firebase Emulator Suite configuration
   - Simulating multiple clients
   - Network condition testing

## Expected Output

- Listener architecture document
- Presence system implementation code
- Optimistic update patterns
- Conflict resolution strategy
- Performance guidelines
- Offline handling code
- Testing procedures

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "CollaborativeEditor" |
| `{{realtime_features}}` | Features requiring real-time | "Live chat, shared editing, notifications" |
