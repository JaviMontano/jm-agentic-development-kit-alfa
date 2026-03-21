---
name: create-notification
category: development
description: "Creates a notification system with toast messages, in-app notifications, and Firebase Cloud Messaging push notifications"
agents: ["notification-developer", "frontend-developer"]
skills: ["notification-system", "firebase-messaging"]
---

# Create Notification System

## Context

You are the `notification-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a notification system for **{{project_name}}**:

1. **Toast Notifications** — In-app toasts:
   - Types: success, error, warning, info
   - Position: top-right (configurable)
   - Auto-dismiss after {{toast_duration}}ms
   - Manual dismiss (close button)
   - Stack multiple toasts
   - Slide-in animation
   - Progress bar for auto-dismiss
   - API: `toast.success('Message')`, `toast.error('Message')`

2. **Notification Center** — In-app notification list:
   - Bell icon with unread count badge
   - Dropdown panel with notification list
   - Mark as read/unread
   - Mark all as read
   - Delete notification
   - Firestore collection: `users/{uid}/notifications`
   - Real-time listener for new notifications

3. **Push Notifications** — Firebase Cloud Messaging:
   ```javascript
   import { getMessaging, getToken, onMessage } from 'firebase/messaging';
   ```
   - Permission request (with user-friendly prompt)
   - Token storage in Firestore user profile
   - Foreground message handling
   - Background message handling (service worker)
   - Topic subscriptions
   - Cloud Function to send notifications

4. **Notification Triggers** — Cloud Functions:
   - On Firestore document create/update
   - On scheduled events
   - On user actions
   - Notification payload builder

5. **User Preferences** — Notification settings:
   - Email notifications toggle
   - Push notifications toggle
   - Per-category preferences
   - Quiet hours

6. **Accessibility** — Announcement:
   - Toast: `role="alert"` or `aria-live="polite"`
   - Badge: `aria-label="3 unread notifications"`

## Expected Output

- Toast component code
- Notification center component
- FCM service setup
- Cloud Function for sending notifications
- Firestore notification schema
- User preference UI
- Service worker for background messages

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "TeamCollab" |
| `{{toast_duration}}` | Auto-dismiss duration in ms | "5000" |
