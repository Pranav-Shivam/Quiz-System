<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Details</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
         <%
            if(session.getAttribute("adminUser")== null)
            {
            response.sendRedirect("loginAdmin.jsp");
        }
            %>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/quiz" user="root" password="root"  var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">select * from user</sql:query>
        <c:set var="i" value="0" scope="application"></c:set>
        <div class="container">
            <table class="table table-bordered">
                <tr class="table-success">                  
                    <th>Sl. No.</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>About</th>
                    <th>Registration Date</th>
                    <th>Category</th>
                </tr>
                
            <c:forEach items="${rs.rows}" var="row">
                
                <tr class="table-info">
                    <td><c:out value="${row.iduser}"></c:out></td>
                    <td><c:out value="${row.name}"></c:out></td>
                    <td><c:out value="${row.email}"></c:out></td>
                    <td><c:out value="${row.gender}"></c:out></td>
                    <td><c:out value="${row.about}"></c:out></td>
                    <td><c:out value="${row.rdate}"></c:out></td>
                    <td><c:out value="${row.category}"></c:out></td>
                </tr>
            </c:forEach>
            </table>
        </div>
    </body>
</html>
