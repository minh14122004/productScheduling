<%-- 
    Document   : view
    Created on : Oct 21, 2024, 10:57:16 AM
    Author     : Nguyễn Quang Minh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee List</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                padding: 20px;
                display: flex;
                justify-content: center;
            }
            h1 {
                text-align: center;
                color: #333;
            }
            table {
                border-collapse: collapse;
                width: 80%;
                margin: 20px auto;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                border-radius: 8px;
                overflow: hidden;
            }
            th, td {
                padding: 12px;
                text-align: center;
            }
            th {
                background-color: #6699ff;
                color: #ffffff;
                font-weight: bold;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            tr:nth-child(odd) {
                background-color: #ffffff;
            }
            tr:hover {
                background-color: #e1e8ff;
            }
        </style>
    </head>
    <body>
        <h1>Employee List</h1>
        <form method="get" action="EmployeeViewController">
            Name: <input type="text" name="name">
            Gender: 
            <select name="gender">
                <option value="">All</option>
                <option value="true">Male</option>
                <option value="false">Female</option>
            </select>
            Address: <input type="text" name="address">
            Role: <input type="text" name="role">
            Department: <input type="text" name="department">
            Salary From: <input type="number" name="salaryMin">
            Salary To: <input type="number" name="salaryMax">
            <input type="submit" value="Filter">
        </form>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Dob</th>
                <th>Role</th>
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
                    <td>${e.role.roleName}</td>
                    <td>${e.dept.dName}</td>
                    <td>${e.salary}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
