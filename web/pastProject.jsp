<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Past Project | Irfan's Portfolio</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- ======= ANIMATE ON SCROLL ======= -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
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
    
    <div class="pp-container">
        <header class="section-header">
            <h1>Past Project</h1>
        </header>

        <div class="project-card" id="project1" data-aos="flip-right" data-aos-duration="3000"  data-aos-delay="300" data-aos-offset="0" data-aos-once="true">
            <h2>Feline Travelers</h2>
            <hr>
            <p>This is the final pair assignment in the subject CSC301 (Visual Programming). This assignment is about a ticket booking system based in Kuching, Sarawak with packages offered to users. The data is saved and will be displayed as a report for the sales of the entire system. This project was completed using VB.Net.</p>
            <img src="Image/project/VB/projectVB.png" data-aos="fade-zoom in" data-aos-duration="3000"  data-aos-delay="2000" data-aos-offset="0" data-aos-once="true">
            <div class="button-view">
                <button class="myBtn" data-project="project1">See more...</button>
            </div>
        </div>

        <div class="project-card" id="project2" data-aos="flip-right" data-aos-duration="3000"  data-aos-delay="300" data-aos-offset="0" data-aos-once="true">
            <h2>Genting Skyworlds Website</h2>
            <hr>
            <p>This project is an individual assignment from the subject CSC264(Introduction to Web and Mobile Application). This assignment was about building a website about interesting places in Malaysia and I chose Genting Skyworlds as my assignment material. This website displays all visitor attractions and information available at Genting Skyworlds. This project is built entirely using only HTML and CSS.</p>
            <img src="Image/project/264Ind/projectGenting.png">
            <div class="button-view">
                <button class="myBtn" data-project="project2">See more...</button>
            </div>
        </div>

        <div class="project-card" id="project3" data-aos="flip-right" data-aos-duration="3000"  data-aos-delay="300" data-aos-offset="0" data-aos-once="true">
            <h2>Sistem Pengurusan Kolej Kediaman A (KKA)</h2>
            <hr>
            <p>This project is made for assignment from subject ISP250 (Software Development). It's a group project consists of 4 members. My role in this project is as front-end developer.A system where student placement and allows students to pay college fees in one website. There are two parts which are admin and user. In the admin section, all student information displays can be saved and viewed. In the user section, there is a display on the background of Residential College A (KKA), the college block provided, room selection, student details, college fee payment and feedback form.</p>
            <img src="Image/project/SPK/projectSPK.png">
            <div class="button-view">
                <button class="myBtn" data-project="project3">See more...</button>
            </div>
        </div>

        <div class="project-card" id="project4"data-aos="flip-right" data-aos-duration="3000"  data-aos-delay="300" data-aos-offset="0" data-aos-once="true">
            <h2>CH Tourism</h2>
            <hr>
            <p>Just like Residential College Management System A (KKA) and Genting Skyworlds, this project is a group assignment consisting of 4 members. My job in this project is Front-End Development. This project is about building a system and website related to interesting places in Malaysia. We chose Cameroon Highland as the reference material for this project. This website displays tourist attractions found in Cameroon Highland as well as booking tickets for those places. This system consists of two parts namely admin and user. In the admin section, it displays all information from ticket booking. While in the user section, it displays pictures of attractions, booking page, CH Tourism background and feedback form.</p>
            <img src="Image/project/CHT/projectCHTourism.png">
            <div class="button-view">
                <button class="myBtn" data-project="project4">See more...</button>
            </div>
        </div>

        <div class="project-card" id="project5"data-aos="flip-right" data-aos-duration="3000"  data-aos-delay="300" data-aos-offset="0" data-aos-once="true">
            <h2>Evantage Solution Admin Dashboard</h2>
            <hr>
            <p>This is my final project in my diploma. This project was produced during my internship. This project is about an admin dashboard system for the company that I am undergoing industrial training, where all data related to maintenance will be displayed in graph form and easy to see. In addition, there are several other pages to complete certain processes to ensure maintenance is in good condition such as the Asset page (to register new assets into the system), Work Request (create maintenance work) and Personnel (to save employee data). This project was developed using ReactJS and is still in development</p>
            <img src="Image/project/Evantage/projectEvantage.png">
            <div class="button-view">
                <button class="myBtn" data-project="project5">See more...</button>
            </div>
        </div>
    </div>

    <!-- MODAL -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p style="padding-bottom: 10px;">Page Details</p>

            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <!-- Images will be dynamically loaded here -->
                </div>

                <!-- Button navigation -->
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
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
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    <script>AOS.init();</script>

    <!-- Image Modal -->
    <script>
        var modal = document.getElementById("myModal");
        var span = document.getElementsByClassName("close")[0];

        var projectCards = document.querySelectorAll(".project-card");
        var modalContent = document.querySelector(".swiper-wrapper");
        var currentSwiper; // Variable to track the current Swiper instance

        var images = {
            project1: [
                "Image/project/VB/projectVB2.png",
                "Image/project/VB/projectVB3.png",
                "Image/project/VB/projectVB4.png",
                "Image/project/VB/projectVB5.png",
                "Image/project/VB/projectVB6.png",
                "Image/project/VB/projectVB7.png",
                "Image/project/VB/projectVB8.png",
            ],
            project2: [
                "Image/project/264Ind/projectGenting2.png",
                "Image/project/264Ind/projectGenting3.png",
                "Image/project/264Ind/projectGenting4.png",
                "Image/project/264Ind/projectGenting5.png",
                "Image/project/264Ind/projectGenting6.png",
                "Image/project/264Ind/projectGenting7.png",
            ],
            project3: [
                "Image/project/SPK/projectSPK2.png",
                "Image/project/SPK/projectSPK3.png",
                "Image/project/SPK/projectSPK4.png",
                "Image/project/SPK/projectSPK5.png",
                "Image/project/SPK/projectSPK6.png",
                "Image/project/SPK/projectSPK7.png",
                "Image/project/SPK/projectSPK8.png",
                "Image/project/SPK/projectSPK9.png",
                "Image/project/SPK/projectSPK10.png",
            ],
            project4: [
                "Image/project/CHT/projectCHTourism2.png",
                "Image/project/CHT/projectCHTourism3.png",
                "Image/project/CHT/projectCHTourism4.png",
                "Image/project/CHT/projectCHTourism5.png",
                "Image/project/CHT/projectCHTourism6.png",
                "Image/project/CHT/projectCHTourism7.png",
                "Image/project/CHT/projectCHTourism8.png",
                "Image/project/CHT/projectCHTourism9.png",
                "Image/project/CHT/projectCHTourism10.png",
                "Image/project/CHT/projectCHTourism11.png",
            ],
            project5: [
                "Image/project/Evantage/projectEvantage2.png",
                "Image/project/Evantage/projectEvantage3.png",
                "Image/project/Evantage/projectEvantage4.png",
                "Image/project/Evantage/projectEvantage5.png",
                "Image/project/Evantage/projectEvantage6.png",
                "Image/project/Evantage/projectEvantage7.png",
            ],
        };

        // Function to open a modal and load images
        function openModal(projectId) {
            var projectImages = images[projectId];
            modalContent.innerHTML = ""; // Clear existing images

            projectImages.forEach(function (src) {
                var img = document.createElement("img");
                img.src = src;
                var slide = document.createElement("div");
                slide.classList.add("swiper-slide");
                slide.appendChild(img);
                modalContent.appendChild(slide);
            });

            if (currentSwiper) {
                currentSwiper.destroy(); // Destroy previous Swiper instance
            }

            currentSwiper = new Swiper(".mySwiper", {
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
            });

            modal.style.display = "block";
        }

        // Function to close the modal
        function closeModal() {
            modal.style.display = "none";
            if (currentSwiper) {
                currentSwiper.destroy(); // Destroy Swiper instance when closing modal
            }
        }

        // Add click event listeners to project cards
        projectCards.forEach(function (card) {
            card.querySelector(".myBtn").addEventListener("click", function () {
                var projectId = this.getAttribute("data-project");
                openModal(projectId);
            });
        });

        // When the user clicks on the close button (x), close the modal
        span.onclick = function () {
            closeModal();
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                closeModal();
            }
        }
    </script>

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
