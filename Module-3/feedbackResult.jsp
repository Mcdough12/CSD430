<%-- 
  File: feedbackResult.jsp
  Course/Module: CSD-430 Module (your module #)
  Purpose: Receive POSTed form values from feedbackForm.jsp and display them in an HTML table.
  Author: Reed Bunnell
  Date: (enter date)
  Requirements met:
    - Uses scriptlets to hold Java code (request.getParameter / getParameterValues)
    - All HTML tags remain outside scriptlets
    - Displays submitted data in an HTML table
--%>

<%
  // Ensure request encoding for consistent character handling
  request.setCharacterEncoding("UTF-8");

  // Read single-value fields
  String fullName = request.getParameter("fullName");
  String email = request.getParameter("email");
  String visitDate = request.getParameter("visitDate");
  String mealType = request.getParameter("mealType");
  String serviceRating = request.getParameter("serviceRating");
  String foodQuality = request.getParameter("foodQuality");
  String comments = request.getParameter("comments");

  // Read multi-value checkbox field
  String[] orderItems = request.getParameterValues("orderItems");

  // Basic null-handling for optional fields
  if (comments == null || comments.trim().isEmpty()) {
    comments = "(No comments provided)";
  }

  String orderItemsDisplay;
  if (orderItems == null || orderItems.length == 0) {
    orderItemsDisplay = "(No items selected)";
  } else {
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < orderItems.length; i++) {
      sb.append(orderItems[i]);
      if (i < orderItems.length - 1) sb.append(", ");
    }
    orderItemsDisplay = sb.toString();
  }

  // A short overall description for the summary
  String overallDescription =
      "This summary displays the customer's visit details and ratings submitted from the feedback form.";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Feedback Submission Summary</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; }
    .container { max-width: 900px; }
    table { border-collapse: collapse; width: 100%; margin-top: 12px; }
    th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
    th { width: 260px; background: #f4f4f4; }
    .desc { color: #333; margin-top: 6px; }
    .back { margin-top: 14px; display: inline-block; }
  </style>
</head>

<body>
  <div class="container">
    <h1>Feedback Submission Summary</h1>

    <p class="desc"><strong>Overall data description:</strong> <%= overallDescription %></p>
    <p class="desc">
      <strong>Field descriptions:</strong>
      Name and email identify the customer, visit date and meal type describe the visit,
      ratings capture service and food quality, order items capture selections, and comments provide optional detail.
    </p>

    <table>
      <tr>
        <th>Field</th>
        <th>Recorded Value</th>
      </tr>
      <tr>
        <th>Full Name</th>
        <td><%= (fullName == null ? "" : fullName) %></td>
      </tr>
      <tr>
        <th>Email</th>
        <td><%= (email == null ? "" : email) %></td>
      </tr>
      <tr>
        <th>Visit Date</th>
        <td><%= (visitDate == null ? "" : visitDate) %></td>
      </tr>
      <tr>
        <th>Meal Type</th>
        <td><%= (mealType == null ? "" : mealType) %></td>
      </tr>
      <tr>
        <th>Service Rating (1–5)</th>
        <td><%= (serviceRating == null ? "" : serviceRating) %></td>
      </tr>
      <tr>
        <th>Food Quality</th>
        <td><%= (foodQuality == null ? "" : foodQuality) %></td>
      </tr>
      <tr>
        <th>Order Items</th>
        <td><%= orderItemsDisplay %></td>
      </tr>
      <tr>
        <th>Comments</th>
        <td><%= comments %></td>
      </tr>
    </table>

    <a class="back" href="feedbackForm.jsp">← Back to the form</a>
  </div>
</body>
</html>
