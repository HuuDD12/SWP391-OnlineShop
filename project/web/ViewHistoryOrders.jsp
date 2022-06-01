<%-- 
    Document   : ViewHistoryOrders
    Created on : May 30, 2022, 3:55:59 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body>
        
        <table>
            
                <tr>
                    <th>OderID</th>
                    <th>UserName</th>
                    <th>TotalPrice</th>
                    <th>Note</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th>View Detail</th>
                    
                </tr>
                <c:forEach items="${listO}" var="u">
                    
                    <tr>
                    <td>${u.order_id}</td>
                    <td>${u.userName}</td>
                    <td>${u.totalPrice}</td>
                    <td>${u.note}</td>
                    <td>${u.date}</td>
                    <td>${u.order_status.name}</td>
                    <td><a href="">View Detail</a></td>
                    
                    <tr>
                </c:forEach>
        </table>
        
    </body>
</html>
