<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")) {
        response.sendRedirect("login.jsp?error=unauthorized");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        .container {
            padding: 2rem;
        }

        h2 {
            color: #333333;
        }

        .logout-btn {
            padding: 0.5rem 1rem;
            background-color: #d9534f;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-size: 1rem;
        }

        .logout-btn:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Welcome to the Admin Dashboard</h2>
        <p>Manage jobs, users, and other administrative tasks here.</p>
        
        <form action="AddJobServlet" method="POST">
            <label for="title">Job Title:</label><br>
            <input type="text" id="title" name="title" required><br><br>
            
            <label for="description">Description:</label><br>
            <textarea id="description" name="description" required></textarea><br><br>
            
            <label for="location">Location:</label><br>
            <input type="text" id="location" name="location" required><br><br>
            
            <label for="company_name">Company Name:</label><br>
            <input type="text" id="company_name" name="company_name" required><br><br>
            
            <input type="submit" value="Add Job">
        </form>
        <br>
        <a href="logout.jsp" class="logout-btn">Logout</a>
    </div>
</body>
</html>
