
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
        <link rel="stylesheet" href="style.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/my.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background
            {
                clip-path: polygon(50% 0%, 100% 1%, 98% 50%, 100% 100%, 84% 94%, 41% 99%, 15% 95%, 0 100%, 2% 46%, 0 0);
            }

        </style>
        <script>
            var perfEntries = performance.getEntriesByType("navigation");

            if (perfEntries[0].type === "back_forward") {
                location.reload(true);
            }
        </script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%
            if (session.getAttribute("adminUser") == null) {
                response.sendRedirect("loginAdmin.jsp");
            }
        %>
        <div class="sidebar">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus'></i>
                <span class="logo_name">Admin-Lab</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="#" class="active">
                        <i class='bx bx-grid-alt' ></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="adminProfile.jsp" target="AdminContent">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">Admin Profile</span>
                    </a>
                </li>

                <li>
                    <a href="addAdmin.jsp" target="AdminContent">
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">Add new Admin</span>
                    </a>
                </li>
                <li>
                    <a href="studentDetails.jsp" target="AdminContent">
                        <i class='bx bx-pie-chart-alt-2' ></i>
                        <span class="links_name">See Student Details</span>
                    </a>
                </li>
                <li>
                    <a href="subjectDetails.jsp" target="AdminContent">
                        <i class='bx bx-coin-stack' ></i>
                        <span class="links_name">View Subjects</span>
                    </a>
                </li>
                <li>
                    <a href="addSubject.jsp" target="AdminContent">
                        <i class='bx bx-book-alt' ></i>
                        <span class="links_name">Add Subjects</span>
                    </a>
                </li>
                <li>
                    <a href="addQuiz.jsp" target="AdminContent">
                        <i class='bx bx-box' ></i>
                        <span class="links_name">Add new Quizs</span>
                    </a>
                </li>
                <li>
                    <a href="deleteQuiz.jsp" target="AdminContent">
                        <i class='bx bx-message' ></i>
                        <span class="links_name">Delete Quiz</span>
                    </a>
                </li>
                <li>
                    <a href="About.jsp" target="AdminContent">
                        <i class='bx bx-heart' ></i>
                        <span class="links_name">About Pranav</span>
                    </a>
                </li>
                <li>
                    <a href="changePassword.jsp" target="AdminContent">
                        <i class='bx bx-cog' ></i>
                        <span class="links_name">Change Password</span>
                    </a>
                </li>
                <li class="log_out">
                    <a href="#">
                        <div class="container text-center">
                            <form action="../LogoutAdmin" method="post">
                                <button type="submit" class="btn btn-danger">
                                    <i class='bx bx-log-out'></i>
                                    <span class="links_name">Log out</span>
                                </button>

                            </form>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <i class='bx bx-search' ></i>
                </div>
                <div class="profile-details">
                    <a href="About.jsp" target="AdminContent">
                        <span class="admin_name"><%= session.getAttribute("adminUser")%></span>
                        <i class='bx bx-chevron-down' ></i>
                    </a>
                </div>
            </nav>

            <div class="home-content">
                <div class="sales-boxes" style="width: 100%;">
                    <div class="recent-sales box" style="width: 100%;">
                        <div class="title" style="text-align: center"><div class="alert alert-primary" role="alert">
                                <h2 class="alert alert-primary" role="alert">Welcome to Admin Page</h2>
                            </div></div>
                        <div class="sales-details">
                            <iframe name="AdminContent" src="welcomeA.jsp" style="width:100%; height: 720px;"></iframe>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <script>
            let sidebar = document.querySelector(".sidebar");
            let sidebarBtn = document.querySelector(".sidebarBtn");
            sidebarBtn.onclick = function () {
                sidebar.classList.toggle("active");
                if (sidebar.classList.contains("active")) {
                    sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                } else
                    sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
            }
        </script>

    </body>
</html>



