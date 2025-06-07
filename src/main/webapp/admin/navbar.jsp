<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Medi Home</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .navbar-custom {
      background-color: #21824f; /* Green color similar to the image */
    }
    .navbar-brand i {
      margin-right: 5px;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-custom navbar-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <i class="bi bi-house-door-fill"></i> Medi Home
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active " href="#">HOME</a>
          </li>
          <li class="nav-item ">
            <a class="nav-link active" href="#">DOCTOR</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#">PATIENT</a>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle btn btn-light text-dark" href="#" id="adminDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Admin
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="adminDropdown">
              <li><a class="dropdown-item" href="#">Profile</a></li>
              <li><a class="dropdown-item" href="#">Settings</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</body>
</html>
