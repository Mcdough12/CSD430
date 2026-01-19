<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%
    // Simple Java logic inside JSP (scriptlet) for Module 1 requirements
    LocalDateTime now = LocalDateTime.now();
    DateTimeFormatter fmt = DateTimeFormatter.ofPattern("EEEE, MMMM d, yyyy 'at' h:mm a");
    String formatted = now.format(fmt);

    String name = request.getParameter("name");
    if (name == null || name.trim().isEmpty()) {
        name = "Guest";
    }

    String userAgent = request.getHeader("User-Agent");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Module 1 JSP Demo</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 2rem; }
        .card { border: 1px solid #ddd; border-radius: 12px; padding: 1.25rem; max-width: 720px; }
        code { background: #f5f5f5; padding: 0.1rem 0.3rem; border-radius: 6px; }
    </style>
</head>
<body>
    <div class="card">
        <h1>JSP is working ✅</h1>
        <p>Hello, <strong><%= name %></strong>!</p>
        <p>Server time: <strong><%= formatted %></strong></p>

        <h2>Request Details</h2>
        <ul>
            <li>Context Path: <code><%= request.getContextPath() %></code></li>
            <li>Request URI: <code><%= request.getRequestURI() %></code></li>
            <li>Method: <code><%= request.getMethod() %></code></li>
        </ul>

        <h2>Your Browser (User-Agent)</h2>
        <p style="word-break: break-word;"><%= userAgent %></p>

        <hr />
        <p>Try: <code>?name=Reed</code> at the end of the URL.</p>
    </div>
</body>
</html>
