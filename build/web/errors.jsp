
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something ! went wrong....</title>
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
        <div class="container text-center mt-40">
            <img src="img/errors.png" class="img-fluid">
            <h3 class="display-3">Something! went wrong</h3>
            <%= exception %>
            <br>
            <br>
            <a href="index.jsp" class="btn-success btn-lg mt-20">Home</a>
        </div>
        
    </body>
</html>
