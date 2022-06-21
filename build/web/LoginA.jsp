

<%@page import="com.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/my.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background
            {
                clip-path: polygon(50% 0%, 100% 1%, 98% 50%, 100% 100%, 84% 94%, 41% 99%, 15% 95%, 0 100%, 2% 46%, 0 0);
            }
        </style>
    </head>
    <body>
        <%@include file="Add_nav_bar.jsp" %>
        <main class="d-flex align-items-center primary-background banner-background" style="height: 80vh">
            <div class="container ">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <form action="LoginServlet" method="POST">
                            <div class="card">
                                <div class="card-header bg-dark text-center text-white">
                                    <samp class="fa fa-3x fa-user-circle"></samp>
                                    <h3>Login Here</h3>
                                </div>
                                <%
                                    Message m=(Message)session.getAttribute("msg");
                                    if(m!=null)
                                    {
                                %>
                                <div class="alert <%= m.getCssClass() %> text-center" role="alert">
                                    <%= m.getContent() %>
                                </div>
                                <%
                                    session.removeAttribute("msg");
                                    }
                                    %>
                                <div class="card-body ">
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                        </div>
<!--                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">Terms and Conditions</label>
                                        </div>-->
                                        <br><!-- comment -->
                                        <div class="container text-center">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>

                                    </form>
                                </div>

                        </form>
                    </div>
                </div>
            </div>
        </main>




        <!-- JavaScript--->

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
