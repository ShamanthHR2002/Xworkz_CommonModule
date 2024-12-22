<%@ page isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <style>
    .form-container {
      max-width: 600px;
      margin: 50px auto;
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .form-label {
      font-weight: bold;
    }

    span.error-message {
      color: red;
      font-size: 0.9rem;
    }

    .header-buttons {
      position: absolute;
      top: 15px;
      right: 15px;
    }
  </style>
</head>
<body class="bg-light">

  <header class="d-flex justify-content-center py-3 mb-4 bg-primary text-white position-relative">
    <h1>Course Registration</h1>
    <div class="header-buttons">
      <a href="index.jsp" class="btn btn-light me-2">Home</a>
      <a href="signin.jsp" class="btn btn-light">Sign In</a>
    </div>
  </header>

  <div class="container form-container">
    <form action="signupact" method="post">
      <h3 class="text-center mb-4">Fill Your Details</h3>

      <div class="mb-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" id="name" name="Name" class="form-control" placeholder="Enter your name" required onchange="validateField('name', 'Name')" />
        <span id="displayName" class="error-message"></span>
      </div>

      <div class="mb-3">
        <label for="email" class="form-label">Email:</label>
        <input type="text" id="email" name="email" class="form-control" placeholder="Enter your email" required onchange="validateField('email', 'Email')" />
        <span id="displayemail" class="error-message"></span>
      </div>

      <div class="mb-3">
        <label for="phoneNumber" class="form-label">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" class="form-control" placeholder="Enter your phone number" required onchange="validateField('phoneNumber', 'PhoneNumber')" />
        <span id="displayphoneNumber" class="error-message"></span>
      </div>

      <div class="mb-3">
        <label for="alternateemail" class="form-label">Alternate Email:</label>
        <input type="text" id="alternateemail" name="alternateemail" class="form-control" placeholder="Enter your alternate email" required onchange="validateField('alternateemail', 'AlternateEmail')" />
        <span id="displayalternateemail" class="error-message"></span>
      </div>

      <div class="mb-3">
        <label for="alternatephone" class="form-label">Alternate Phone:</label>
        <input type="text" id="alternatephone" name="alternatephone" class="form-control" placeholder="Enter your alternate phone" required onchange="validateField('alternatephone', 'AlternatePhone')" />
        <span id="displayalternatephone" class="error-message"></span>
      </div>

      <div class="mb-3">
        <label for="location" class="form-label">Location:</label>
        <input type="text" id="location" name="location" class="form-control" placeholder="Enter your location" required />
      </div>

      <button type="submit" class="btn btn-primary w-100">Submit</button>
    </form>
  </div>

  <script>
    function validateField(fieldId, fieldName) {
      const fieldValue = document.getElementById(fieldId).value;

      const xhttp = new XMLHttpRequest();
      xhttp.open("GET", `http://localhost:8080/Xworkz_CommonModule_Shamanth/${fieldName}/${fieldValue}`, true);
      xhttp.send();

      xhttp.onload = function () {
        document.getElementById(`display${fieldName}`).innerText = this.responseText;
      };
    }
  </script>

</body>
</html>
