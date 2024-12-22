<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <style>
    .header-content {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 100%;
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      padding: 10px 20px;
      background: linear-gradient(to right, #0d6efd, #6610f2);
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      color: white;
    }

    .logo-img {
      width: 140px;
      height: 70px;
    }

    .header-buttons {
      display: flex;
      gap: 10px;
    }

    .btn-signup {
      border: none;
      background-color: #28a745;
      color: #fff;
      font-weight: bold;
    }

    .btn-signup:hover {
      background-color: #218838;
      color: #fff;
    }

    .btn-signin {
      border: none;
      background-color: #007bff;
      color: #fff;
      font-weight: bold;
    }

    .btn-signin:hover {
      background-color: #0056b3;
      color: #fff;
    }

    .title {
      margin: 0 auto;
      text-align: center;
      font-size: 1.5rem;
      font-weight: bold;
    }

    .main-content {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      font-size: 2rem;
      color: #495057;
    }

    .header-container {
      width: 100%;
    }
  </style>
</head>
<body>
  <header>
    <div class="header-content">
      <div class="ms-3">
        <img src="https://x-workz.in/static/media/Logo.cf195593dc1b3f921369.png" alt="Xworkz" class="logo-img">
      </div>

      <div class="title">xworkz_CommonModule_shamanth</div>

      <div class="header-buttons ms-auto">
        <form action="signup.jsp" method="post" style="display:inline;">
          <button type="submit" class="btn btn-signup">Sign Up</button>
        </form>
        <form action="signin.jsp" method="post" style="display:inline;">
          <button type="submit" class="btn btn-signin">Sign In</button>
        </form>
      </div>
    </div>
  </header>

  <div class="main-content">
    <h1>X-workz Registration</h1>
  </div>
</body>
</html>
