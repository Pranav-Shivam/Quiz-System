<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>Updating a database using the sql:update tag</title>
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
         <%
            if(session.getAttribute("adminUser")== null)
            {
            response.sendRedirect("loginAdmin.jsp");
        }
            %>
        <main class="d-flex align-items-center primary-background banner-background" style="height: 110vh; padding-bottom: 60px; padding-top: 5px;">
            <div class="container ">
                <div class="row">
                    <div class="col-md-6 offset-md-3">

                        <div class="card">
                            <div class="card-header bg-dark text-center text-white">
                                <samp class="fa fa-3x fa fa-book"></samp>
                                <h3>Add new Subject</h3>
                            </div>
                            <div class="card-body ">
                                <form id="reg-form" action="../AddSubject" method="POST">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Name of Subject</label>
                                        <input name="subject" type="text" class="form-control">

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Subject Details</label>
                                        <textarea name="description" rows="4" placeholder="Enter your Content .." type="text" class="form-control"></textarea>
                                    </div>


                                    <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
        </main>


    </body>
</html>