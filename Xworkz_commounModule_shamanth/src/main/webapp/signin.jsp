<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <style>
    body {
      background: linear-gradient(to right, #4facfe, #00f2fe);
      color: #fff;
    }

    .header-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 100%;
      background: rgba(255, 255, 255, 0.2);
      padding: 15px 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .logo-img {
      width: 140px;
      height: 70px;
    }

    .header-buttons {
      display: flex;
      gap: 10px;
    }

    h1 {
      text-align: center;
      flex: 1;
      margin: 0;
      font-size: 1.8rem;
      font-weight: bold;
      color: #fff;
    }

    .form-container {
      max-width: 600px;
      margin: 50px auto;
      background: #fff;
      color: #495057;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2);
    }

    .btn-primary {
      background-color: #007bff;
      border: none;
      font-weight: bold;
    }

    .btn-primary:hover {
      background-color: #0056b3;
    }

    .reset-link a {
      color: #007bff;
    }

    .reset-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <header class="d-flex justify-content-center py-3 mb-4">
    <div class="header-content">
      <div>
        <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="Xworkz" class="logo-img">
      </div>

      <h1>Course Registration</h1>

      <div class="header-buttons">
        <form action="signup.jsp" method="post" style="display:inline;">
          <button type="submit" class="btn btn-primary">Sign Up</button>
        </form>
        <form action="signin.jsp" method="post" style="display:inline;">
          <button type="submit" class="btn btn-primary">Sign In</button>
        </form>
      </div>
    </div>
  </header>

  <div class="container form-container">
    <h3 class="text-center mb-4">Sign In with your Details</h3>

    <form action="signinact" method="post">
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" id="email" name="email" required class="form-control">
      </div>

      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" id="password" name="password" required class="form-control">
      </div>

      <button type="submit" class="btn btn-primary w-100">Sign In</button>
    </form>

    <div class="reset-link text-center mt-3">
      <a href="resetpassword.jsp" class="btn btn-link">Reset your Password</a>
    </div>
  </div>

</body>
</html>
