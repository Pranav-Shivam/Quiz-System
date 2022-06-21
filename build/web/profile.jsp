<%@page import="com.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="com.dao.PostDao"%>
<%@page import="com.entities.Message"%>
<%@page import="com.entities.User"%>
<%@page errorPage="errors.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    User u = (User) session.getAttribute("currentUser");
    if (u == null) {
        response.sendRedirect("LoginA.jsp");

    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
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
    </head>
    <body>
        <!-- nav bar -->
        <nav class="navbar navbar-expand-lg navbar-light primary-background" style="background-color:#018786; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color: #f0f8ff;">
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-certificate"></span>Quiz</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="fa fa-university"></span>Learn with Pranav <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><span class="fa fa-fax"></span>Contact us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="fa fa-object-group"></span>Subject-Quiz
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="pythonQue.jsp" target="basicContent">Python</a>
                            <a class="dropdown-item" href="javaQue.jsp" target="basicContent">Java</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="javscriptQue.jsp" target="basicContent">Javascript</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-file-code-o"></span>Do Post</a>
                    </li>
                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a href="#!" class="nav-link" data-toggle="modal" data-target="#ProfileModal"><span class="fa fa-user-circle"></span><%= u.getName()%></a>
                    </li>
                    <li class="nav-item">
                        <a href="LogoutServlet" class="nav-link"><span class="fa fa-user-plus"></span>Logout</a>
                    </li>

                </ul>
            </div>
        </nav>
        <br><!-- nav bar -->

        <%
            Message m = (Message) session.getAttribute("msg");
            if (m != null) {
        %>
        <div class="alert <%= m.getCssClass()%> text-center" role="alert">
            <%= m.getContent()%>
        </div>
        <%

            }
        %>

        <!--main body of the page-->

        <main>
            <div class="container">
                <div class="container text-center">
                    <img src="picss/<%= u.getProfile()%>" class="img-fluid" style="border-radius: 50%; max-width: 100px" />
                    <h5 class="modal-title" id="exampleModalLabel"><%= u.getName()%></h5>
                    <!--details-->
                    <div id="profile-details">
                        <table class="table text-center">

                            <tbody>
                                <tr>
                                    <th scope="row">ID: </th>
                                    <td><%= u.getId()%></td>

                                </tr>
                                <tr>
                                    <th scope="row">Email: </th>
                                    <td><%= u.getEmail()%></td>

                                </tr>
                                <tr>
                                    <th scope="row">Gender: </th>
                                    <td><%= (u.getGender()).toUpperCase()%></td>

                                </tr>
                                <tr>
                                    <th scope="row">User Time</th>
                                    <td><%= u.getDateTime().toString()%></td>

                                </tr>
                            </tbody>
                        </table>

                    </div>

                    </main>


                    <!--end main body of the page-->


                    <!--Start of modal-->




                    <!-- Modal -->
                    <div class="modal fade" id="ProfileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div class="container text-center banner-background primary-background">
                                        <h2 class="modal-title banner-background" id="exampleModalLabel">It Ocean</h2>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="modal-body">
                                    <div class="container text-center">
                                        <img src="picss/<%= u.getProfile()%>" class="img-fluid" style="border-radius: 50%; max-width: 100px" />
                                        <h5 class="modal-title" id="exampleModalLabel"><%= u.getName()%></h5>
                                        <!--details-->
                                        <div id="profile-details">
                                            <table class="table text-center">

                                                <tbody>
                                                    <tr>
                                                        <th scope="row">ID: </th>
                                                        <td><%= u.getId()%></td>

                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Email: </th>
                                                        <td><%= u.getEmail()%></td>

                                                    </tr>
                                                    <tr>
                                                        <th scope="row">Gender: </th>
                                                        <td><%= (u.getGender()).toUpperCase()%></td>

                                                    </tr>
                                                    <tr>
                                                        <th scope="row">User Time</th>
                                                        <td><%= u.getDateTime().toString()%></td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div id="profile-edit" style="display: none;">
                                            <h3 class="mt-3">Please Edit carefully</h3>
                                            <form action="EditServlet" method="POST" enctype="multipart/form-data">
                                                <table class="table">
                                                    <tr>
                                                        <td>ID : </td>
                                                        <td><%= u.getId()%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Name : </td>
                                                        <td>
                                                            <input class="from-control" type="text" name="user_name" value="<%= u.getName()%>">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email : </td>
                                                        <td>
                                                            <input class="from-control" type="email" name="user_email" value="<%= u.getEmail()%>">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password : </td>
                                                        <td>
                                                            <input class="from-control" type="password" name="user_password" value="<%= u.getPassword()%>">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Gender : </td>
                                                        <td>
                                                            <%= (u.getGender()).toUpperCase()%>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>About : </td>
                                                        <td>
                                                            <textarea rows="3" class="form-control" name="user_about"><%= u.getAbout()%>
                                                            </textarea>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Add Profile Pic : </td>
                                                        <td>
                                                            <input type="file" class="form-control" name="image"><!-- comment -->

                                                        </td>
                                                    </tr>
                                                </table>
                                                <button type="submit" class="btn btn-success">SAVE</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary" id="edit-profile-button">EDIT</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--end of modal-->


                    <!--start post modal-->
                    <!-- Modal -->

                    <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Provide Post Details</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="AddPostServlet" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <select class="from-control" name="ciid" id="add-post-form">
                                                <option selected disabled>-------Select Categories-------</option>
                                                <%
                                                    PostDao pdao = new PostDao(ConnectionProvider.getConnections());
                                                    ArrayList<Category> l = pdao.getAllCategories();
                                                    for (Category c : l) {
                                                %>
                                                <option name="cid" value=" <%= c.getCid()%> "> <%= c.getName()%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input name="pTitle" placeholder="Enter your post Title" type="text" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <textarea name="pContent" rows="4" placeholder="Enter your Content .." type="text" class="form-control"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <textarea name="pCode" rows="4" placeholder="Enter your Code .." type="text" class="form-control"></textarea>
                                        </div>
                                        <!--                            <div class="form-group">
                                                                        <label>Enter your Photo</label><br>
                                                                        <input name="pPic" type="file" class="form-control">
                                                                    </div>-->
                                        <div class="container text-center">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" value="submit" name="submit" id="submit" class="btn btn-primary">Post</button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>


                    <!--end post modal-->

                    <!--iframe for quiz's-->

                    <div class="home-content">
                        <div class="sales-boxes" style="width: 100%;">
                            <div class="recent-sales box" style="width: 100%;">
                                <div class="title" style="text-align: center"><div class="alert alert-primary" role="alert">
                                        <h2 class="alert alert-primary" role="alert">Welcome to Quiz Page</h2>
                                    </div></div>
                                <div class="sales-details">
                                    <iframe name="basicContent" src="Admin_Page/thankyou.jsp" style="width:100%; height: 720px;"></iframe>
                                </div>
                            </div>

                        </div>
                    </div>


                    <!--iframe for quiz's-->




                    <!-- JavaScript--->

                    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>  
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                    <<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
                    <script src="js/myjs.js" type="text/javascript"></script>
                    <script>
            $(document).ready(function () {
                let editStatus = false;
                $("#edit-profile-button").click(function () {


                    if (editStatus == false)
                    {
                        $("#profile-details").hide();
                        $("#profile-edit").show();
                        editStatus = true;
                        $(this).text("BACK");
                    } else
                    {
                        $("#profile-details").show();
                        $("#profile-edit").hide();
                        editStatus = false;
                        $(this).text("EDIT");
                    }


                });
            });
                    </script>

                    <!--add post details-->
                    <script>
                        $(document).ready(function () {
                        $("#submit").on("submit", function (event) {

                        event.preventDefault();
                                let form = new FormData();
                                $.ajax({

                                url: "AddPostServlet",
                                        method: 'POST',
                                        data: form,
                                        success: function (data, textStatus, jqXHR) {
                                        console.log("success")
                                                console.log(data);
                                                if (data.trim() == 'done')
                                        {
                                        swal("Good job!", "saved successfully", "success");
                                        } else
                                        {
                                        swal("Error!!", "Something went wrong try again...", "error");
                                        }
                                        },
                                        error: function (jqXHR, textStatus, errorThrown) {
                                        swal("Error!!", "Something went wrong try again...", "error");
                                        }
                                processData: false,
                                        contentType: false


                                })

                        })
                        })
                    </script>

                    </body> 
                    </html>
