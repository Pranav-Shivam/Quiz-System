<%-- 
    Document   : addQuiz
    Created on : Apr 29, 2022, 12:26:44 AM
    Author     : prana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Quiz</title>
    </head>
    <body background="photo/under.jpg">
         <%
            if(session.getAttribute("adminUser")== null)
            {
            response.sendRedirect("loginAdmin.jsp");
        }
            %>
    </body>
</html>
