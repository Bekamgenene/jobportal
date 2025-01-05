<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .card {
            border: none;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .card-body {
            padding: 25px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            font-size: 16px;
            padding: 10px 20px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        footer {
            background-color: #343a40;
            color: white;
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

    <!-- Job Details Section -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Featured Jobs</h2>
        
        <div class="row">
            <!-- Job 1 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Software Developer</h5>
                        <p class="card-text"><strong>Company:</strong> Lammi Corp</p>
                        <p class="card-text"><strong>Location:</strong> Addis Ababa</p>
                        <p class="card-text"><strong>Description:</strong> We are looking for a skilled software developer with Java experience to join our team.</p>
                        <a href="apply.jsp?jobId=1" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </div>

            <!-- Job 2 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Marketing Intern</h5>
                        <p class="card-text"><strong>Company:</strong> Blue Nile Ltd</p>
                        <p class="card-text"><strong>Location:</strong> Addis Ababa</p>
                        <p class="card-text"><strong>Description:</strong> We are looking for a marketing intern to assist with our promotional campaigns and digital marketing.</p>
                        <a href="apply.jsp?jobId=2" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </div>

            <!-- Job 3 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Business Analyst</h5>
                        <p class="card-text"><strong>Company:</strong> Global Ventures</p>
                        <p class="card-text"><strong>Location:</strong> Addis Ababa</p>
                        <p class="card-text"><strong>Description:</strong> Join our team to analyze business requirements, data, and processes to improve our operations.</p>
                        <a href="apply.jsp?jobId=3" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </div>

            <!-- Job 4 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Computer Engineer</h5>
                        <p class="card-text"><strong>Company:</strong> iTech Company</p>
                        <p class="card-text"><strong>Location:</strong> Addis Ababa</p>
                        <p class="card-text"><strong>Description:</strong> We need a computer engineer to help design, implement, and maintain technology systems.</p>
                        <a href="apply.jsp?jobId=4" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </div>

            <!-- Job 5 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Data Scientist</h5>
                        <p class="card-text"><strong>Company:</strong> TechHive</p>
                        <p class="card-text"><strong>Location:</strong> Addis Ababa</p>
                        <p class="card-text"><strong>Description:</strong> Join our data team to help us extract valuable insights from our vast datasets and shape business decisions.</p>
                        <a href="apply.jsp?jobId=5" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </div>

            <!-- Job 6 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">UX/UI Designer</h5>
                        <p class="card-text"><strong>Company:</strong> Creative Labs</p>
                        <p class="card-text"><strong>Location:</strong> Addis Ababa</p>
                        <p class="card-text"><strong>Description:</strong> Seeking a talented UX/UI designer to create engaging and effective user experiences for web and mobile applications.</p>
                        <a href="apply.jsp?jobId=6" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Footer -->
    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2025 Ethiopia Job Portal | All Rights Reserved</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
