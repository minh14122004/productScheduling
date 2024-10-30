<%-- 
    Document   : productionPlan
    Created on : Oct 29, 2024, 9:29:38 PM
    Author     : Nguyễn Quang Minh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Production Plan</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            form {
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                max-width: 600px;
                width: 100%;
            }
            h2 {
                text-align: center;
                color: #4a90e2;
            }
            label {
                display: block;
                margin: 15px 0 5px;
                font-weight: bold;
            }
            input[type="text"],
            input[type="date"],
            select {
                width: 100%;
                padding: 8px;
                margin: 4px 0 10px;
                border-radius: 4px;
                border: 1px solid #ccc;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 15px;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 10px;
                text-align: left;
            }
            th {
                background-color: #4a90e2;
                color: white;
            }
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            tr:hover {
                background-color: #f1f1f1;
            }
            input[type="submit"] {
                background-color: #4a90e2;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 100%;
                font-size: 16px;
            }
            input[type="submit"]:hover {
                background-color: #357abd;
            }
        </style>
    </head>
    <body>
        <form action="create" method="POST">
            ---------------
            <br>
            <h2>Production Plan</h2>
            <label>Plan title:</label> 
            <input type="text" name="name"/>
            
            <label>From:</label> 
            <input type="date" name="from"/>
            
            <label>To:</label>
            <input type="date" name="to"/>
            
            <label>Workshop:</label>
            <select name="did">
                <c:forEach items="${requestScope.depts}" var="d">
                    <option value="${d.dID}">${d.dName}</option>
                </c:forEach>
            </select>
            
            <table>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Cost</th>
                </tr>
                <c:forEach items="${requestScope.products}" var="p">
                    <tr>
                        <td>${p.pName}<input type="hidden" value="${p.pID}" name="pid"/></td>
                        <td><input type="text" name="quantity${p.pID}"/></td>
                        <td><input type="text" name="cost${p.pID}"/></td>
                    </tr>   
                </c:forEach>
            </table>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
