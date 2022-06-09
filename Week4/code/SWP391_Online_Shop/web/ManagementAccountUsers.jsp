<%-- 
    Document   : ManagementAccountUsers
    Created on : May 28, 2022, 4:30:38 PM
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
        <form action="managerAccount" method="post">

            <table>
                <tr>
                    <th>UserID</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>RoleName</th>
                    <th>isBlock</th>
                   
                    <th>Delete</th>
                </tr>
                
                <c:forEach items="${listU}" var="u">
                    
                    <tr>
                    <td>${u.id}</td>
                    <td>${u.userName}</td>
                    <td>${u.password}</td>
                    <td>${u.email}</td>
                    <td>${u.role.roleName}</td>
                    <td>${u.isBlock}</td>
                   
                    <td><a href="">Delete</a></td>
                    <tr>
                </c:forEach>
                   
            </table>
        </form>
    </body>
</html>
