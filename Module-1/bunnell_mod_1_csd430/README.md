# CSD-430 Module 1 – JSP Setup Verification (Template)

**Student:** Reed Bunnell  
**Course:** CSD-430  
**Module:** 1  
**Date:** January 19, 2026

## What’s Included
- `jsp_app/index.jsp` – Simple JSP page with Java code + HTML (meets the “Java + JSP + HTML” requirement).
- `screenshots/` – Put your captured screenshots here.
- `documentation/` – Word document template to paste your screenshots into.

## Quick Run (Eclipse + Tomcat)
1. In Eclipse: **File → New → Dynamic Web Project**
2. Target runtime: **Apache Tomcat (Jakarta Tomcat)**
3. Copy `index.jsp` into your project’s `WebContent` (or `src/main/webapp`) folder.
4. Right‑click project → **Run As → Run on Server**
5. Open the page, e.g.:
   - `http://localhost:8080/<YourProjectName>/index.jsp`
   - Try `?name=Reed`

## Screenshot Checklist
- Java installed (e.g., `java -version` output, JAVA_HOME)
- Tomcat installed/configured (server in Eclipse, running status, or Tomcat version page)
- IDE installed/configured (Eclipse “About” or workspace + server config)
- JSP functioning in browser (the rendered page showing “JSP is working ✅”)
