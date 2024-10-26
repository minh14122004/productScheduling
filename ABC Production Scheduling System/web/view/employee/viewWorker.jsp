<%-- 
    Document   : viewWorker
    Created on : Oct 21, 2024, 10:57:59 AM
    Author     : Nguyễn Quang Minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee List</h1>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Dob</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>
            <c:forEach items="${requestScope.emps}" var="e">
                <tr>
                    <td>${e.eID}</td>
                    <td>${e.eName}</td>
                    <td>
                        <c:choose>
                            <c:when test="${e.gender}">Male</c:when>
                            <c:otherwise>Female</c:otherwise>
                        </c:choose>
                    </td>
                    <td>${e.address}</td>
                    <td>${e.dob}</td>
                    <!-- Cho role employee -->
                        <td>${e.dept.dName}</td>
                    <!-- comment -->
                    <td>${e.salary}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
