<%-- 
    Document   : ProductionTotal
    Created on : Nov 4, 2024, 1:36:42 AM
    Author     : Nguyễn Quang Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Manufacture</h1>
        <table>
            <tr>
                <th>Product</th>
                <th>Has Produced</th>
                <th>Total</th>
            </tr>
            <c:forEach items="${requestScope.manufacture}" var="m">
                <tr>
                    <th>${m.ProductName}</th>
                    <th>${m.producted}</th>
                    <th>${m.total}</th>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
