
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style2.css" rel="stylesheet">
        <link href="css/colors.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid text-center">
            <table class="table table-bordered table-hover">
                <tr class="table-inverse">
                <thead>
                    <tr>
                        <th style="text-align: center">ID</th>
                        <th style="text-align: center">UserName</th>												
                        <th style="text-align: center">Gender</th>						
                        <th style="text-align: center">Email</th>						
                        <th style="text-align: center">Phone</th>						
                        <th style="text-align: center">Address</th>						
                        <th style="text-align: center">Role</th>
                        <th style="text-align: center">Action</th>
                    </tr>
                </thead>

                <c:forEach items="${requestScope.list}" var="o" varStatus="loop">
                    <tr>
                        <td>${o.id_user}</td>
                        <td><a href="#">${o.username}</a></td>
                        <td>${o.gender}</td>
                        <td>${o.email}</td>
                        <td>${o.phone}</td>
                        <td>${o.address}</td>
                        <td style="width: 200px;">
                            <c:if test="${o.role==2}">
                                <a href="#" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">Seller</a>
                            </c:if>
                            <c:if test="${o.role==1}">
                                <a href="#" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">Admin</a>
                            </c:if>
                            <c:if test="${o.role==3}">
                                <a href="#" class="btn btn-secondary btn-sm active" role="button" aria-pressed="true">Buyer</a>
                            </c:if>
                        </td>
                        <td> 
                            <c:if test="${o.role==3 && o.block == 0}">
                                <form action="setroleseller" method="POST" style="display:inline">
                                    <a> <input type="submit" class="btn btn-outline-success btn-sm" value="Set Role Seller" onclick="if (confirm('Are you sure to set this account to seller?'))
                                                form.action = 'setroleseller?UserID=${o.id_user}';
                                            else
                                                return false;"/>  
                                    </a>
                                </form>
                            </c:if>
                            <c:if test="${o.role==2 && o.block == 0}">
                                <form action="setrolebuyer" method="POST" style="display:inline">
                                    <a> <input type="submit" class="btn btn-outline-success btn-sm" value="Set Role Buyer" onclick="if (confirm('Are you sure to set this account to buyer?'))
                                                form.action = 'setrolebuyer?UserID=${o.id_user}';
                                            else
                                                return false;"/>  
                                    </a>
                                </form>
                            </c:if>

                                <c:if test="${o.block == 0 && (o.role == 2||o.role==3)}">
                                    <form action="blockAccount" method="POST" style="display:inline">
                                        <a> <input type="submit" class="btn btn-outline-danger btn-sm" value="Block" onclick="if (confirm('Are you sure to block this account?'))
                                                    form.action = 'blockAccount?UserID=${o.id_user}';
                                                else
                                                    return false;"/>  
                                        </a>
                                    </form>
                                </c:if>
                                <c:if test="${o.block == 1 && (o.role == 2||o.role==3)}">
                                    <form action="unblockAccount" method="POST" style="display:inline">
                                        <a> <input type="submit" class="btn btn-outline-secondary btn-sm" value="Unblock" onclick="if (confirm('Are you sure to unblock this account?'))
                                                    form.action = 'unblockAccount?UserID=${o.id_user}';
                                                else
                                                    return false;"/>  
                                        </a>
                                    </form>
                                </c:if>
                            

                        </td>
                    </tr>
                </c:forEach>

            </table>
            <a href="home" class="btn btn-gradient grd4 withradius secbtn">HOME</a>
        </div>
    </body>
</html>


