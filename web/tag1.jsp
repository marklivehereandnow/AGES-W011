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
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>TAG: 政府</h1>
      
        <sql:query var="result" dataSource="jdbc/myDatasource">
            SELECT  ID, NAME, ACTION, ICON_POINTS, EFFECT,AGE,TAG,COLOR 
            FROM V_TAG1 
        </sql:query>

        <table border="1">
            <!-- column headers -->
            <tr>
                <th> info</th>
                <th> img</th>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>

                    <td>
                        <c:out value="${row[5]}"/> <c:out value="${row[6]}"/> <c:out value="${row[7]}"/><BR>
                       [<c:out value="${row[0]}"/>] 
                       <c:out value="${row[1]}"/> <br><HR>
                       ACTION: <B> <c:out value="${row[2]}"/></B><br><HR>
                       ICON POINTS: <B> <c:out value="${row[3]}"/></B><br><HR>
                      EFFECT: <B> <c:out value="${row[4]}"/></B><br>
                      


                    </td>    

                    <td> <img src="http://2nd2go.org/ages/img/p<c:out value="${row[0]}"/>.jpg"/> </td>

                </tr>
            </c:forEach>
        </table>

    </body>
</html>
