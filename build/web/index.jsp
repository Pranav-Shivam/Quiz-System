 
<%@page import="com.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/my.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background
            {
                clip-path: polygon(50% 0, 100% 1%, 99% 50%, 100% 100%, 84% 94%, 41% 99%, 15% 94%, 0 100%, 1% 46%, 0 2%);
            }
        </style>
        <link rel="stylesheet" href="Admin_Page/style.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <%@include file="Add_nav_bar.jsp" %>
        <div class="container-fluid p-0 m-0"style="background-color:#202020 " >
            <div class="jumbotron primary-background text-purple banner-background"  style="background-color:#dadada" >
                <div class="container banner-background">
                    <h3>Welcome to the IT Oceans</h3>
                    <p>A programming language is any set of rules that converts strings, or graphical program elements in the case of visual programming languages, to various kinds of machine code output. Programming languages are one kind of computer language, and are used in computer programming to implement algorithms. </p>

                    <p>Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.</p>
                    <button type="button" class="btn btn-success btn-lg"><span class="fa fa-user-plus"></span>Free to use's</button>
                    <a href="LoginA.jsp" button type="button" class="btn btn-info btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>


                    <br><!-- comment -->
                    <br><!-- comment -->
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row mb-3">
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Python Programming</h5>
                            <p class="card-text">Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.

                                web development,
                                software development.</p>
                            <a href="mypython.jsp" target="indexContent" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Java Programming</h5>
                            <p class="card-text">Java is a popular programming language, created in 1995.
                                It is owned by Oracle, and more than 3 billion devices run Java.</p>
                            <a href="myjava.jsp" target="indexContent" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body">
                            <h5 class="card-title">Javascript Programming</h5>
                            <p class="card-text">JavaScript often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. </p>
                            <a href="myjavascript.jsp" target="indexContent" class="btn btn-primary">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="home-content">
            <div class="sales-boxes" style="width: 100%;">
                <div class="recent-sales box" style="width: 100%;">
                    <div class="title" style="text-align: center"><div class="alert alert-primary" role="alert">
                            <h2 class="alert alert-primary" role="alert">Welcome to Quiz Page</h2>
                        </div></div>
                    <div class="sales-details">
                        <iframe name="indexContent" src="Admin_Page/thankyou.jsp" style="width:100%; height: 720px;"></iframe>
                    </div>
                </div>

            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>  
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <!--        <script>
                    $(document).ready(function() {
                        alert("document loaded")
                    })
                </script>-->
    </body>
</html>
