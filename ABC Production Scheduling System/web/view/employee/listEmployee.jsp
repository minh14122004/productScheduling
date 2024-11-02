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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Search</h1>
        <form action="listEmployee" method="GET">
            ID: <input type="text" name="id" value="${id}"/><br/>
            Name: <input type="text" name="name" value="${name}"/><br/>
            Gender: 
            <select name="gender">
                <option value="both" ${gender == 'both' ? 'selected' : ''}>Both</option>
                <option value="male" ${gender == 'male' ? 'selected' : ''}>Male</option>
                <option value="female" ${gender == 'female' ? 'selected' : ''}>Female</option>
            </select><br/>
            Address: <input type="text" name="address" value="${address}"/><br/>
            From: <input type="date" name="from" value="${from}"/><br/>
            To: <input type="date" name="to" value="${to}"/><br/>
            Department:
            <select name="did">
                <option value="-1">All Departments</option>
                <c:forEach items="${depts}" var="d">
                    <option value="${d.dID}" ${param.did eq d.dID ? 'selected' : ''}>
                        ${d.dName}
                    </option>
                </c:forEach>
            </select><br/>
            <input type="submit" value="Search"/>
        </form>

        <!-- Display results -->
        <table border="1">
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