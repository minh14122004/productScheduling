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
        <title>Worker List</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                color: #333;
            }
            .container {
                width: 80%;
                margin: 20px;
                text-align: center;
            }
            h1 {
                color: #6699ff;
                margin-bottom: 20px;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                background-color: #ffffff;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            th, td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            th {
                background-color: #6699ff;
                color: white;
            }
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            tr:hover {
                background-color: #f1f1f1;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Worker List at Workshop ${workshop}</h1>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Dob</th>
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
                        <td>${e.salary}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
