<%-- 
Document   : search
Created on : Nov 2, 2024, 1:26:32 PM
Author     : Nguyễn Quang Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Search</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 40px;
            }
            h1 {
                text-align: center;
                color: #333;
            }
            form {
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                max-width: 600px;
                margin: 0 auto 20px;
            }
            form input[type="text"],
            form input[type="date"],
            form select {
                width: calc(100% - 22px);
                padding: 8px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 4px;
                display: block;
            }
            form input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                border-radius: 4px;
                font-size: 16px;
                transition: background-color 0.3s;
            }
            form input[type="submit"]:hover {
                background-color: #45a049;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #fff;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }
            table, th, td {
                border: 1px solid #ddd;
            }
            th, td {
                text-align: left;
                padding: 12px;
            }
            th {
                background-color: #4CAF50;
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
        <h1>Search Employees</h1>
        <form action="search" method="GET">
            <label>ID:</label>
            <input type="text" name="id" value="${id}"/>

            <label>Name:</label>
            <input type="text" name="name" value="${name}"/>

            <label>Gender:</label>
            <select name="gender">
                <option value="both" ${gender == 'both' ? 'selected' : ''}>Both</option>
                <option value="male" ${gender == 'male' ? 'selected' : ''}>Male</option>
                <option value="female" ${gender == 'female' ? 'selected' : ''}>Female</option>
            </select>

            <label>Address:</label>
            <input type="text" name="address" value="${address}"/>

            <label>From:</label>
            <input type="date" name="from" value="${from}"/>

            <label>To:</label>
            <input type="date" name="to" value="${to}"/>

            <label>Department:</label>
            <select name="did">
                <option value="-1">All Departments</option>
                <c:forEach items="${depts}" var="d">
                    <option value="${d.dID}" ${param.did eq d.dID ? 'selected' : ''}>
                        ${d.dName}
                    </option>
                </c:forEach>
            </select>

            <input type="submit" value="Search"/>
        </form>

        <!-- Display results -->
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>DOB</th>
                <th>Department</th>
            </tr>
            <c:forEach items="${emps}" var="e">
                <tr>
                    <td>${e.eID}</td>
                    <td>${e.eName}</td>
                    <td>${e.gender ? 'Male' : 'Female'}</td>
                    <td>${e.address}</td>
                    <td>${e.dob}</td>
                    <td>${e.dept.dName}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
