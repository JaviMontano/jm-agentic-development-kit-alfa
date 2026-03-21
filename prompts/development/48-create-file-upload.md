---
name: create-file-upload
category: development
description: "Creates a file upload component with drag-and-drop, preview, progress tracking, and Firebase Storage integration"
agents: ["upload-developer", "frontend-developer"]
skills: ["file-upload", "firebase-storage"]
---

# Create File Upload

## Context

You are the `upload-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Create a file upload component for **{{project_name}}**:

Upload requirements:
```
{{upload_requirements}}
```

1. **Upload Component** — Full-featured upload UI:
   - Drag and drop zone with visual feedback
   - Click to browse fallback
   - File type restriction ({{allowed_types}})
   - Max file size enforcement ({{max_size}})
   - Multiple file support (if needed)
   - Image preview thumbnails
   - Upload progress bar per file
   - Cancel upload button
   - Remove uploaded file button

2. **Firebase Storage Service** — `src/services/storage.js`:
   ```javascript
   import { ref, uploadBytesResumable, getDownloadURL, deleteObject } from 'firebase/storage';

   export function uploadFile(file, path, onProgress) {
     const storageRef = ref(storage, path);
     const uploadTask = uploadBytesResumable(storageRef, file);
     // Monitor progress, handle errors, get download URL
   }
   ```

3. **File Validation** — Before upload:
   - File type (MIME type check)
   - File size limit
   - Image dimensions (if applicable)
   - Virus scan disclaimer

4. **Storage Path Strategy** — Organize files:
   ```
   uploads/{userId}/{collection}/{timestamp}_{filename}
   ```

5. **Firestore Integration** — Save file metadata:
   ```javascript
   {
     name: 'document.pdf',
     url: 'https://firebasestorage.googleapis.com/...',
     type: 'application/pdf',
     size: 1024000,
     uploadedBy: 'userId',
     uploadedAt: serverTimestamp()
   }
   ```

6. **Storage Security Rules** — `storage.rules`:
   ```
   match /uploads/{userId}/{allPaths=**} {
     allow read: if request.auth != null;
     allow write: if request.auth.uid == userId
                  && request.resource.size < {{max_size}}
                  && request.resource.contentType.matches('image/.*|application/pdf');
   }
   ```

7. **Image Processing** — If images:
   - Client-side compression before upload
   - Thumbnail generation (Cloud Function)

## Expected Output

- Upload component code (HTML + CSS + JS)
- Storage service file
- Storage security rules
- Firestore metadata schema
- Cloud Function for image processing (if applicable)
- Usage examples

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "DocumentVault" |
| `{{upload_requirements}}` | What can be uploaded | "Profile photos and PDF documents" |
| `{{allowed_types}}` | Allowed MIME types | "image/jpeg, image/png, application/pdf" |
| `{{max_size}}` | Maximum file size | "5MB" |
