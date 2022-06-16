<%-- 
    Document   : ManagermentProduct
    Created on : May 29, 2022, 11:09:22 PM
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
        <form action="manager" method="post">

            <table>
                <tr>
                    <th>ID</th>
                    <th>Name product</th>
                    <th>Description</th>
                    <th>OriginalPrice</th>
                    <th>SalePrice</th>
                  
                    <th>SubCategory</th>
                    <th>Amount</th>
                    <th>Brand</th>
                   
                  
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                
                <c:forEach items="${listU}" var="u">
                    
                    <tr>
                    <td>${u.id}</td>
                    <td>${u.userName}</td>
                    <td>${u.password}</td>
                    <td>${u.email}</td>
                    <td>${u.role.roleName}</td>
                   
                    <td><a href="">Edit</a></td>
                    <td><a href="">Delete</a></td>
                    <tr>
                </c:forEach>
                   
            </table>
        </form>
    </body>
</html>

