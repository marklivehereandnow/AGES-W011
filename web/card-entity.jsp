<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : newjsp
    Created on : May 9, 2014, 5:22:40 PM
    Author     : mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ages Cards and Img</title>
        <link rel="stylesheet" type="text/css" href="style2.css">
    </head>
    <body>
        <h1>Card basic info, maintained by Amy</h1>
        <h3>ref: https://netbeans.org/kb/docs/web/mysql-webapp.html </h3>
        <a href="index.jsp">Back to Tag List</a>

        <sql:query var="result" dataSource="jdbc/myDatasource" >
            SELECT  * FROM V_EFFECT ORDER BY ID
        </sql:query>
        <div class="CSSTableGenerator" >

            <table class="CSSTableGenerator" border="1">
                <!-- column headers -->
                <tr>
                    <c:forEach var="columnName" items="${result.columnNames}">
                        <th><c:out value="${columnName}"/></th>
                        </c:forEach>
                </tr>
                <!-- column data -->
                <c:forEach var="row" items="${result.rowsByIndex}">
                    <tr>
                        <c:forEach var="column" items="${row}">
                            <td><c:out value="${column}"/></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
