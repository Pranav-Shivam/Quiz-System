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
        <sql:query dataSource="${ds}" var="rs">select * from categories</sql:query>
        <c:set var="i" value="0" scope="application"></c:set>
        <div class="container">
            <table class="table table-bordered">
                <tr class="table-warning">                  
                    <th>Sl. No.</th>
                    <th>Subject</th>
                    <th>Subject Description</th>
                    
                    
                </tr>
                
            <c:forEach items="${rs.rows}" var="row">
                
                <tr class="table-primary">
                    <td><c:out value="${row.cid}"></c:out></td>
                    <td><c:out value="${row.cname}"></c:out></td>
                    <td><c:out value="${row.cdescription}"></c:out></td>
                    
                </tr>
            </c:forEach>
            </table>
        </div>
    </body>
</html>
