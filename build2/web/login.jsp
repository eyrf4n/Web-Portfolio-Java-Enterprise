<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Set" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="section-header">
        <h1>Login</h1>
    </div>
    <form action="LoginServlet" method="post">  
        Name:<input type="text" name="name"><br>  
        Password:<input type="password" name="password"><br>  
        <% 
            // Check if the loginError attribute exists in the request
            String loginError = (String) request.getAttribute("loginError");
            if (loginError != null) {
        %>
            <div class="error-message"><%= loginError %></div>
        <% } %>
        <input type="submit" value="Login">  
    </form>  
</body>
</html>
