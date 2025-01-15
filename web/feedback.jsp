<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback | Irfan's Portfolio</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .error-message {
            color: red;
            margin: 4px;
            text-align: center;
        }
        
        .modal2 {
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
    <!-- Toggle button for navbar -->
    <div id="toggle-navbar">&#9776;</div>

    <!-- Collapsible navbar -->
    <div class="collapse-navbar" id="collapse-navbar">
        <a href="homepage.jsp" id="home-link">Home</a>
        <a href="favorite.jsp" id="favorite-link">Favorite</a>
        <a href="pastProject.jsp" id="pastProject-link">Past Project</a>
        <a href="progLanguage.jsp" id="progLanguage-link">Language</a>
        <a href="knowledge.jsp" id="knowledge-link">Knowledge</a>
        <a href="feedback.jsp" id="feedback-link">Feedback</a>
    </div>

    <div class="navbar" id="navbar">
        <a href="homepage.jsp" id="home-link">Home</a>
        <a href="favorite.jsp" id="favorite-link">Favorite</a>
        <a href="pastProject.jsp" id="pastProject-link">Past Project</a>
        <a href="progLanguage.jsp" id="progLanguage-link">Language</a>
        <a href="knowledge.jsp" id="knowledge-link">Knowledge</a>
        <a href="feedback.jsp" id="feedback-link">Feedback</a>
    </div>
    
    <a href="LogoutServlet" id="logout-link" class="logout-icon"><i class="fa-solid fa-right-from-bracket fa-lg"></i></a>

    
    
    <section class="feedback">
        <header class="section-header" style="font-size: 21px">
            <h2>Feedback</h2>
            <p style="color: slategray;">I'll appreciate if you leave a feedback on my portfolio!</p>
        </header>
        
        <div class="feedback-container">
            <form action="Feedback2Servlet" method="post" class="feedback-form">

                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name">
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                </div>

                <div class="form-group">
                    <label for="feedback">Feedback:</label>
                    <textarea id="message" name="message" rows="4"></textarea>
                    <%
                    // Check if the loginError attribute exists in the request
                    String loginError = (String) request.getAttribute("loginError");
                    if (loginError != null) {
                    %>
                        <div  class="error-message"><%= loginError %></div>
                    <%
                      }
                    %>
                </div>
                
                <button type="submit">Submit Feedback</button>

                <div class="modal2">
                    <%
                        String successMessage = (String) request.getAttribute("successMessage");
                        if (successMessage != null){
                    %>
                        <div class="message"><%= successMessage %></div>

                    <script>
                        document.addEventListener('DOMContentLoaded', function() {
                            var modal = document.querySelector('.modal2');
                            modal.style.display = 'block';
                            setTimeout(function() {
                                modal.style.display = 'none';
                            }, 5000);
                        });
                    </script>
                    <%
                        }
                    %>
                </div>

            </form>
        </div>
    </section>
    
    

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

</body>
</html>
