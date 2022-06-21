<%-- 
    Document   : logoutAdmin
    Created on : Apr 29, 2022, 12:28:31 AM
    Author     : prana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("adminUser")== null)
            {
            response.sendRedirect("loginAdmin.jsp");
        }
            %>
            welcome ${adminUser}
            
            <form action="../LogoutAdmin">
                <input type="submit" value="Logout">
            </form>
    </body>
</html>
