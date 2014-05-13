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
        <h1>TAG List</h1>
  <a href="all.jsp">Show all cards</a>
      
        <sql:query var="result" dataSource="jdbc/myDatasource">
            SELECT TAG,COUNT(*) CNT
            FROM  CARD
            GROUP BY TAG
        </sql:query>
        <form action="tagdetail.jsp">
            <strong>Select a TAG:</strong>
            <select name="subject_id">

                <option value=1>事件</option>
                <option value=2>侵略</option>
                <option value=3>內政</option>
                <option value=4>劇院</option>
                <option value=5>圖書館</option>
                <option value=6>奇蹟</option>
                <option value=7>實驗室</option>
                <option value=8>建築</option>
                <option value=9>戰爭</option>
                <option value=10>戰術</option>
                <option value=11>政府</option>
                <option value=12>步兵</option>
                <option value=13>殖民</option>
                <option value=14>炮兵</option>
                <option value=15>獎勵</option>
                <option value=16>礦山</option>
                <option value=17>神廟</option>
                <option value=18>空軍</option>
                <option value=19>競技場</option>
                <option value=20>行動</option>
                <option value=21>軍事</option>
                <option value=22>農場</option>
                <option value=23>領土</option>
                <option value=24>領袖</option>
                <option value=25>騎兵</option>

            </select>
            <input type="submit" value="submit" name="submit" />
        </form>
        <hr>        



        <table border="1">
            <!-- column headers -->
            <tr>
                <th> TAG</th>
                <th> CNT</th>
            </tr>
            <!-- column data -->

            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>

                    <td>
                        <c:out value="${row[0]}"/> 
                    </td>    
                    <td>
                        <c:out value="${row[1]}"/> 
                    </td>   

                </tr>
            </c:forEach>
        </table>

    </body>
</html>
