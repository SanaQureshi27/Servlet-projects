<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.code.verse.helper.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CodeVerse | JSP Page</title>

    <!-- Bootstrap 5.3.0 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

    <!-- Custom CSS -->
    <link href="css/myStyle.css" rel="stylesheet" type="text/css" />

    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        /* Custom Background */
        .primary_background {
            background-color: #00695f !important; /* Teal background */
            color: white !important; /* White text */
        }

        /* Fix banner clipping */
        .banner-background {
            clip-path: polygon(0 0, 100% 0, 100% 20%, 100% 86%, 79% 98%, 36% 88%, 0 100%, 0% 20%);
        }
    </style>
</head>
<body> 

    <!-- Include Navigation Bar -->
    <%@include file="normal_navBar.jsp" %>

    <!-- Banner Section -->
    <div class="container-fluid banner-background text-center py-5 primary_background">
        <div class="jumbotron bg-transparent">
            <h3>Welcome, Fellows</h3>
            <h3>CodeVerse</h3>
            <p>Welcome to Codeverse, the world of technology. Codeverse is an educational platform designed to teach coding interactively.</p>
            <p>Programming languages allow developers to communicate with computers, creating software applications, algorithms, and systems.</p>
            <button class="btn btn-light text-dark me-2">
                <i class="fa fa-external-link"></i> Start! It's free
            </button>
            <a href="login_page.jsp" class="btn btn-light text-dark">
                <i class="fa fa-user-circle fa-spin"></i> Login
            </a>
        </div>
    </div>

    <!-- Cards Section -->
    <div class="container mt-4">
        <div class="row mb-2">
            <% for(int i = 0; i < 6; i++) { %>
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title">Java Programming</h5>
                        <p class="card-text">Learn Java programming and build your own applications.</p>
                        <a href="#" class="btn primary_background text-white">Read More</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <!-- Bootstrap 5.3.0 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Custom JS -->
    <script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>


