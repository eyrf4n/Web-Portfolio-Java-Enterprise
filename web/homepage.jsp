<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Irfan's Portfolio</title>
        <link rel = "shortcut icon" type="x-icon" href="#" style="border-radius: 50%;">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>  <!--animate.css-->

        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"> <!--Animate on Scroll-->
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
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
            <a href="feedback.jsp" id="knowledge-link">Feedback</a>
        </div>


        <div class="navbar" id="navbar">
            <a href="homepage.jsp" id="home-link">Home</a>
            <a href="favorite.jsp" id="favorite-link">Favorite</a>
            <a href="pastProject.jsp" id="pastProject-link">Past Project</a>
            <a href="progLanguage.jsp" id="progLanguage-link">Language</a>
            <a href="knowledge.jsp" id="knowledge-link">Knowledge</a>
            <a href="feedback.jsp" id="knowledge-link">Feedback</a>
        </div>
        
        <!--Logout Button-->
        <a href="LogoutServlet" id="logout-link" class="logout-icon"><i class="fa-solid fa-right-from-bracket fa-lg"></i></a>

        <div class="biodata">
            <div class="biodata bio-desc" data-aos="fade-right" data-aos-duration="3000" data-aos-delay="200" data-aos-once="true"> 
                <p>---Hello!</p>
                    <div class="bio-header">
                        <h1 class="text-focus-in">I am <i>Irfan Haqim</i></h1>
                    </div>
                    <br>
                    <hr style="color: black;"></hr><br>

                <p>My name is Muhamad Irfan Haqim bin Abu Hassan. I'm 21 years old (2023). I was born and raised in Selangor. I'm staying at Kota Kemuning which is located in Shah Alam, Selangor. During my diploma, I took Computer Science major in UiTM Segamat, Johor. My journey is quite tough </p><br>    
                <p>Now I am in my fourth semester of my Bachelor
                    of Computer Science (Hons.) Multimedia Computing programme at UiTM Shah Alam, Selangor.
                    I like to work with multimedia-related stuff. I am eager to learn some valuable skills.
                    I work well with designing and multimedia-related things such as front-end in web development.
                </p>

                <div class="button" data-aos="flip-up" data-aos-duration="3000" data-aos-delay="2500" data-aos-once="true">
                    <a href="#section1" class="button-gtkm">Get to know me!</a>
                    
                    <div class="download">
                        <a href="resume/Resume_IRFAN_HAQIM.pdf" target="_blank"  class="button-gtkm">Download my CV!<i class="fa-solid fa-download"></i></a>
                        <!--download="resume/Resume_IRFAN_HAQIM.pdf"-->
                    </div>
                </div>
            </div>

            <div class="image" data-aos="zoom-in" data-aos-duration="3000" data-aos-delay="200" data-aos-once="true">
                <!-- <img src="Image/Irfan-index.png" class="responsive-image"> -->
                <img src="Image/Irfan-index2.png" class="responsive-image">
            </div>
        </div><br><br><br>

        
        <!-- Timeline -->
        <div class="timeline" id="section1">
            
            <div class="container left-container">
                <img src="Image/logoSKBR.png">
                <div class="text-box">
                    <h2>SK Bukit Rimau</h2>
                    <small>2009 - 2014</small>
                    <p>Beginning my academic journey at Sekolah Kebangsaan Bukit Rimau (SKBR) was a pivotal chapter. The school's dynamic environment and dedicated educators cultivated my early passion for learning. From diverse subjects to enriching extracurriculars, SKBR provided a holistic education.</p>
                    <ul>
                        <p>My class</p>
                        <li>1 Lestari</li>
                        <li>2 Usaha</li>
                        <li>3 Kreatif</li>
                        <li>4 Lestari</li>
                        <li>4 Azam</li>
                        <li>6 Azam</li>
                    </ul>
                    <span class="left-container-arrow"></span>
                </div>
            </div>

            <div class="container right-container">
                <img src="Image/logoSMKKK.png">
                <div class="text-box">
                    <h2>SMK Kota Kemuning</h2>
                    <small>2015 - 2019</small>
                    <p>Continuing next to the foundations laid at Sekolah Menengah Kebangsaan Kota Kemuning (SMKKK), my educational journey has been shaped by the values instilled and experiences gained.</p>
                    <ul>
                        <p>My class</p>
                        <li>1 Helcia</li>
                        <li>2 Liparis</li>
                        <li>3 Liparis</li>
                        <li>4 SS1</li>
                        <li>5 SS1</li>                        
                    </ul>
                    <span class="right-container-arrow"></span>
                </div>
            </div>

            <div class="container left-container">
                <img src="Image/logoUITM.png">
                <div class="text-box">
                    <h2>UiTM Segamat</h2>
                    <small>2020 - 2022</small>
                    <p>Progressing from SMKKK, UiTM Segamat unfolds as my next academic frontier. Guided by excellence and diverse opportunities, it promises a continuation of growth and specialized learning, propelling me toward a future enriched with knowledge and accomplishment.</p>
                    <ul>
                        <p>My class</p>
                        <li>JCS1101F - JCS1104F</li>
                    </ul>
                    <span class="left-container-arrow"></span>
                </div>
            </div>

            <div class="container right-container">
                <img src="Image/logoUITM.png">
                <div class="text-box">
                    <h2>UiTM Shah Alam</h2>
                    <small>2023 - Now</small>
                    <p>Presently thriving at UiTM Shah Alam, my academic journey evolves in this vibrant hub of knowledge. Surrounded by cutting-edge resources and a diverse academic community, it amplifies my pursuit of excellence. UiTM Shah Alam becomes the current canvas where I paint my educational aspirations, fostering growth and expertise.</p>
                    <ul>
                        <p>My class</p>
                        <li>CDCS253 3A - CDCS253 4A</li>
                    </ul>
                    <span class="right-container-arrow"></span>
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

        <button id="backToTopBtn" onclick="backToTop()"><img src="Image/Icon/up.png" alt=""></button>

        <script src="js/script.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
        <script>AOS.init();</script>
        
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