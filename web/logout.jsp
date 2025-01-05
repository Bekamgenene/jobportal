<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    // Invalidating the session to log the user out
    HttpSession session = request.getSession(false);
    if (session != null) {
        session.invalidate();
    }
    // Redirecting to the admin login page
    response.sendRedirect("admin_login.jsp");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logging Out</title>
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
            text-align: center;
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
    </style>
</head>
<body>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h2>Logging Out...</h2>
                        <p>You have been successfully logged out. Please wait, you will be redirected to the admin login page shortly.</p>
                        <a href="admin_login.jsp" class="btn btn-primary">Go to Admin Login</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
