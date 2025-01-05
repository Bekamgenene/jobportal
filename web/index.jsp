<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job and Internship Portal - Ethiopia</title>
    <!-- Add Bootstrap CSS link for responsive design -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
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
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="hero bg-primary text-white text-center py-5">
        <div class="container">
            <h1 class="display-3">Welcome to Ethiopian's Job and Internship Portal</h1>
            <p class="lead">Find the latest job and internship opportunities in Ethiopia</p>
            <a href="register.jsp" class="btn btn-light btn-lg">Get Started</a>
        </div>
    </header>

    <!-- Search Bar Section -->
    <section class="search-bar py-5 bg-light">
        <div class="container text-center">
            <h2>Search for Jobs or Internships</h2>
            <form action="searchResults.jsp" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search by job title or company" name="query">
                    <button class="btn btn-primary" type="submit">Search</button>
                </div>
            </form>
        </div>
    </section>

    <!-- Featured Jobs Section -->
    <section class="featured-jobs py-5">
        <div class="container">
            <h2 class="text-center mb-4">Featured Jobs</h2>
            <div class="row">
                <!-- Job listings for 6 companies -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="image/computer.png" class="card-img-top" alt="Job image">
                        <div class="card-body">
                            <h5 class="card-title">Software Developer</h5>
                            <p class="card-text">Lammii Corporation</p>
                            <a href="job-details.jsp?jobId=1" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="image/marketing.png" class="card-img-top" alt="Job image">
                        <div class="card-body">
                            <h5 class="card-title">Marketing Intern</h5>
                            <p class="card-text">Blue Nile Ltd</p>
                            <a href="job-details.jsp?jobId=2" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="image/business.png" class="card-img-top" alt="Job image">
                        <div class="card-body">
                            <h5 class="card-title">Business Analyst</h5>
                            <p class="card-text">Global Ventures</p>
                            <a href="job-details.jsp?jobId=3" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="image/software.png" class="card-img-top" alt="Job image">
                        <div class="card-body">
                            <h5 class="card-title">Computer Engineer</h5>
                            <p class="card-text">I Tech Company</p>
                            <a href="job-details.jsp?jobId=4" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="image/finance.png" class="card-img-top" alt="Job image">
                        <div class="card-body">
                            <h5 class="card-title">Financial Analyst</h5>
                            <p class="card-text">Finance Ethiopia</p>
                            <a href="job-details.jsp?jobId=5" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="image/teacher.png" class="card-img-top" alt="Job image">
                        <div class="card-body">
                            <h5 class="card-title">English Teacher</h5>
                            <p class="card-text">Bright Future Academy</p>
                            <a href="job-details.jsp?jobId=6" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2025 Job and Internship Portal | All Rights Reserved</p>
    </footer>

    <!-- Add Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
