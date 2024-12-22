<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
  <style>
    body {
      background: linear-gradient(to right, #6a11cb, #2575fc);
      color: #fff;
    }

    .form-container {
      max-width: 500px;
      width: 100%;
      background-color: #fff;
      color: #495057;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
    }

    .form-container h3 {
      margin-bottom: 20px;
      color: #6a11cb;
    }

    .btn-primary {
      width: 100%;
      background-color: #2575fc;
      border: none;
      font-weight: bold;
    }

    .btn-primary:hover {
      background-color: #6a11cb;
      color: #fff;
    }

    input.form-control {
      height: calc(2.5rem + 2px);
      border: 1px solid #ced4da;
      border-radius: 5px;
    }

    label.form-label {
      font-weight: bold;
    }

    .alert {
      border-radius: 5px;
    }
  </style>
</head>
<body class="d-flex justify-content-center align-items-center" style="min-height: 100vh;">

  <div class="form-container">
    <h3 class="text-center mb-4">Reset Your Password</h3>

    <c:if test="${not empty error}">
      <div class="alert alert-danger">${error}</div>
    </c:if>

    <c:if test="${not empty message}">
      <div class="alert alert-success">${message}</div>
    </c:if>

    <form action="resetPassword" method="post">
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" class="form-control" required>
      </div>

      <div class="mb-3">
        <label for="oldPassword" class="form-label">Old Password</label>
        <input type="password" id="oldPassword" name="oldPassword" placeholder="Enter old password" class="form-control" required>
      </div>

      <div class="mb-3">
        <label for="newPassword" class="form-label">New Password</label>
        <input type="password" id="newPassword" name="newPassword" placeholder="Enter new password" class="form-control" required>
      </div>

      <div class="mb-3">
        <label for="confirmPassword" class="form-label">Confirm Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm new password" class="form-control" required>
      </div>

      <button type="submit" class="btn btn-primary">Reset Password</button>
    </form>
  </div>

</body>
</html>
