<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Data</title> 
    <!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!--Logout icon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    
    
    <style>
        body {
          display: flex;
          flex-direction: column;
          min-height: 100vh;
        }
        
        .logout-icon-admin {
            position: absolute;
            right: 15px; /* Adjust the right value as needed */
            z-index: 1000;
            color: black;
            margin-top: 20px;
        }

        .logout-icon-admin:hover{
            color: red;
            transition: 0.3s;
        }
        
        @media screen and (max-width: 768px){
            .logout-icon-admin{
                margin-top: 13px;
                z-index: 1000;
                position: fixed;
                top: 0;
                right: 10px;
            }
        }
    </style>
</head>
<body>
     <!-- Toggle button for navbar -->
    <div id="toggle-navbar">&#9776;</div>

    <!-- Collapsible navbar -->
    <div class="collapse-navbar" id="collapse-navbar">
        <a href="#" id="feedback-link">Feedback</a>
    </div>

    <div class="navbar" id="navbar">
        <a href="#" id="feedback-link">Feedback</a>
    </div>
    
    <a href="LogoutServlet" id="logout-link" class="logout-icon-admin"><i class="fa-solid fa-right-from-bracket fa-lg"></i></a>
    
    <section>
        <header class="section-header" style="font-size: 21px">
                <h2>User's Feedback Data</h2>
        </header>
    </section>
    
    <div class="feedback-container-admin" style="flex: 1;">
        <%-- Check for an error message --%>
        <c:if test="${not empty requestScope.errorMessage}">
            <p>${requestScope.errorMessage}</p>
        </c:if>

        <div class="table-responsive">
            <table class="table table-striped table-hover table-responsive table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>No</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Use JSTL to iterate over the feedback data --%>
                    <c:forEach var="feedback" items="${feedbackList}" varStatus="loop">
                        <tr>
                            <td>${loop.index + 1}</td>   
                            <td>${feedback.name}</td>
                            <td>${feedback.email}</td>
                            <td>${feedback.message}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
    </div>
    
            
            <!-- Footer Start -->
    <footer>
        <div>Find me on :</div>
        <ul class="social-icons">
            <li><a href="https://www.instagram.com/eyrf4n" target="_blank"><img src="Image/Icon/instagram.png" alt="Instagram"></a></li>
            <li><a href="https://www.facebook.com/eyrf4n" target="_blank"><img src="Image/Icon/facebook.png" alt="Facebook"></a></li>
            <li><a href="https://www.linkedin.com/in/muhamad-irfan-haqim-bin-abu-hassan-057359241/" target="_blank"><img src="Image/Icon/linkedin.png" alt="LinkedIn"></a></li>
        </ul>
        <div style="color: slategray;">&copy; All rights reserved.</div>
    </footer>

    <!-- Back to top button -->
    <button id="backToTopBtn" onclick="backToTop()"><img src="Image/Icon/up.png" alt=""></button>
    <script src="js/script.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

    <!-- Back to top -->
    <script>
        var mybutton = document.getElementById("backToTopBtn");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction();
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function backToTop() {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE, and Opera
        }
    </script>

    <!-- Navbar toggle -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
        var toggleNavbar = document.getElementById("toggle-navbar");
        var collapseNavbar = document.getElementById("collapse-navbar");

        toggleNavbar.addEventListener("click", function () {
            collapseNavbar.classList.toggle("show-nav");
        });
        });
    </script>
    
    <!--prevent back button-->
    <script>
        function preventBack() {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function() { null };
    </script>
    
    <!--Bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
