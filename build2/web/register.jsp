<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Registration</title>
     <style>
        .modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }
    </style>
</head>
<body>
    <div class="section-header">
        <h1>Registration</h1>
    </div>
    
    <form method="post" action="RegisterServlet">
        <label for="name">Username:</label>
        <input type="text" id="name" name="username" ><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" ><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" ><br>
        <%
            // Check if the loginError attribute exists in the request
            String loginError = (String) request.getAttribute("loginError");
            if (loginError != null) {
        %>
            <div  class="error-message"><%= loginError %></div>
        <%
          }
        %>

        <input type="submit" value="Register">
        
        <div class="modal">
        <%
            String successMessage = (String) request.getAttribute("successMessage");
            if (successMessage != null){
        %>
            <div class="message"><%= successMessage %></div>
            
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                var modal = document.querySelector('.modal');
                modal.style.display = 'block';
                setTimeout(function() {
                    window.location.href = '/newPortfolio/index.html'; // Redirect to the desired page
                }, 5000);
            });
        </script>
        <%
              }
        %>
        </div>
        
    </form>
</body>
</html>
