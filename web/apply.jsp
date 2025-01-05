<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply for Job</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        .navbar-brand {
            font-weight: bold;
        }
        .navbar-nav .nav-item .nav-link {
            font-size: 16px;
        }
        footer {
            background-color: #343a40;
        }
        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Ethiopia Job Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                    <li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Application Form -->
    <div class="container">
        <h2 class="text-center mb-4">Apply for Job</h2>
        <form action="ApplyServlet" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="jobId" class="form-label">Job ID</label>
                <input type="text" class="form-control" id="jobId" name="jobId" readonly value="${param.jobId}">
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Your Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="cvFile" class="form-label">Upload CV</label>
                <input type="file" class="form-control" id="cvFile" name="cvFile" accept=".pdf,.doc,.docx" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit Application</button>
        </form>
    </div>

    <!-- Footer -->
    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2025 Ethiopia Job Portal | All Rights Reserved</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
