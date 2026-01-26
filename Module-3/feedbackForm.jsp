<%-- 
  File: feedbackForm.jsp
  Course/Module: CSD-430 Module (your module #)
  Purpose: Collect restaurant experience feedback using multiple input types.
  Author: Reed Bunnell
  Date: (enter date)
  Notes:
    - Submits to feedbackResult.jsp via POST
    - Uses at least 5 fields and multiple input types
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Restaurant Experience Feedback Form</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 24px; }
    .container { max-width: 900px; }
    fieldset { margin-bottom: 16px; padding: 14px; }
    label { display: inline-block; min-width: 180px; margin: 6px 0; vertical-align: top; }
    input[type="text"], input[type="email"], input[type="date"], select, textarea {
      width: 360px; padding: 6px;
    }
    textarea { height: 100px; }
    .hint { color: #444; font-size: 0.95em; margin: 6px 0 0 0; }
    .btns { margin-top: 12px; }
    button { padding: 10px 14px; }
  </style>
</head>

<body>
  <div class="container">
    <h1>Restaurant Experience Feedback</h1>

    <p>
      Please complete this form to help us improve our food and service.
      Fields marked <strong>*</strong> are required.
    </p>

    <p class="hint">
      <strong>Data description:</strong> This form collects customer info, visit details, ratings, and optional comments.
      Your responses are displayed on the next page in a summary table.
    </p>

    <form action="feedbackResult.jsp" method="post" accept-charset="UTF-8">
      <fieldset>
        <legend>Customer Details</legend>

        <div>
          <label for="fullName">Full Name *</label>
          <input type="text" id="fullName" name="fullName" required maxlength="60">
        </div>

        <div>
          <label for="email">Email *</label>
          <input type="email" id="email" name="email" required maxlength="80">
        </div>
      </fieldset>

      <fieldset>
        <legend>Visit Information</legend>

        <div>
          <label for="visitDate">Visit Date *</label>
          <input type="date" id="visitDate" name="visitDate" required>
        </div>

        <div>
          <label for="mealType">Meal Type *</label>
          <select id="mealType" name="mealType" required>
            <option value="">-- Select one --</option>
            <option value="Breakfast">Breakfast</option>
            <option value="Lunch">Lunch</option>
            <option value="Dinner">Dinner</option>
            <option value="Late Night">Late Night</option>
          </select>
        </div>
      </fieldset>

      <fieldset>
        <legend>Ratings & Preferences</legend>

        <div>
          <label>Service Rating *</label>
          <label><input type="radio" name="serviceRating" value="1" required> 1</label>
          <label><input type="radio" name="serviceRating" value="2"> 2</label>
          <label><input type="radio" name="serviceRating" value="3"> 3</label>
          <label><input type="radio" name="serviceRating" value="4"> 4</label>
          <label><input type="radio" name="serviceRating" value="5"> 5</label>
          <div class="hint">1 = Poor, 5 = Excellent</div>
        </div>

        <div style="margin-top:10px;">
          <label>Food Quality *</label>
          <select name="foodQuality" required>
            <option value="">-- Select one --</option>
            <option value="Poor">Poor</option>
            <option value="Fair">Fair</option>
            <option value="Good">Good</option>
            <option value="Great">Great</option>
            <option value="Excellent">Excellent</option>
          </select>
        </div>

        <div style="margin-top:10px;">
          <label>What did you order? (choose any)</label>
          <label><input type="checkbox" name="orderItems" value="Appetizer"> Appetizer</label>
          <label><input type="checkbox" name="orderItems" value="Entree"> Entree</label>
          <label><input type="checkbox" name="orderItems" value="Dessert"> Dessert</label>
          <label><input type="checkbox" name="orderItems" value="Drinks"> Drinks</label>
          <div class="hint">Checkboxes allow multiple selections.</div>
        </div>
      </fieldset>

      <fieldset>
        <legend>Additional Comments</legend>

        <div>
          <label for="comments">Comments / Suggestions</label>
          <textarea id="comments" name="comments" maxlength="500"
            placeholder="Tell us what went well and what we can improve..."></textarea>
          <div class="hint">Optional. Max 500 characters.</div>
        </div>
      </fieldset>

      <div class="btns">
        <button type="submit">Submit Feedback</button>
        <button type="reset">Reset Form</button>
      </div>
    </form>
  </div>
</body>
</html>
