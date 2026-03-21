---
name: implement-print
category: development
description: "Implements print-friendly layouts with @media print styles, PDF generation, and print-specific content adaptation"
agents: ["print-developer", "frontend-developer"]
skills: ["print-styles", "pdf-generation"]
---

# Implement Print Support

## Context

You are the `print-developer` agent in the JM Agentic Development Kit.
Stack: Firebase + HTML/CSS/JS + Angular/React. Deployment: Hostinger or Firebase Hosting.

## Prompt

Implement print support for **{{project_name}}**:

Printable content:
```
{{printable_content}}
```

1. **Print Stylesheet** — `@media print` rules:
   ```css
   @media print {
     /* Hide non-printable elements */
     nav, .sidebar, .no-print, footer { display: none !important; }
     /* Reset backgrounds for ink savings */
     body { background: white !important; color: black !important; }
     /* Ensure links show URLs */
     a[href]::after { content: " (" attr(href) ")"; font-size: 0.8em; }
     /* Page break control */
     .page-break { page-break-before: always; }
     h1, h2, h3 { page-break-after: avoid; }
     table, figure { page-break-inside: avoid; }
     /* Set page margins */
     @page { margin: 2cm; }
     @page :first { margin-top: 3cm; }
   }
   ```

2. **Print Button** — Trigger print:
   ```javascript
   document.getElementById('print-btn').addEventListener('click', () => {
     window.print();
   });
   ```

3. **Print Preview** — Custom preview before printing:
   - Show print layout in a modal
   - Allow content selection (what to include)
   - Page count estimate

4. **PDF Generation** — Server-side or client-side PDF:
   - Client: html2pdf.js or jsPDF
   - Server: Cloud Function with Puppeteer
   ```typescript
   // Cloud Function
   export const generatePDF = functions.https.onCall(async (data) => {
     const browser = await puppeteer.launch();
     const page = await browser.newPage();
     await page.setContent(htmlContent);
     const pdf = await page.pdf({ format: 'A4' });
     // Upload to Firebase Storage, return download URL
   });
   ```

5. **Print-Specific Content** — Content that only appears in print:
   - Header with logo and date
   - Footer with page numbers
   - Watermarks
   - QR code linking to digital version

6. **Table Handling** — Long tables across pages:
   - Repeat thead on each page
   - Avoid orphan rows

## Expected Output

- Print stylesheet (CSS)
- Print button component
- PDF generation Cloud Function
- Print-specific content elements
- Table pagination for print
- Usage guidelines

## Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `{{project_name}}` | Name of the project | "InvoiceApp" |
| `{{printable_content}}` | What needs to be printable | "Invoices, reports, receipts" |
