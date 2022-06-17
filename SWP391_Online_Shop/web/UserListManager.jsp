<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link href="css/main_2.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <link rel="stylesheet" href="css/styles.css" type="text/css">
    </head>

    <body onload="time()" class="app sidebar-mini rtl">
        <!-- Navbar-->
        <header class="app-header">
            <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                            aria-label="Hide Sidebar"></a>
            <!-- Navbar Right Menu-->
            <ul class="app-nav">


                <!-- User Menu-->
                <li><a class="app-nav__item" href="dashboard"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                </li>
            </ul>
        </header>
        <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
        <jsp:include page="DashBoardNav.jsp"></jsp:include>
            <main class="app-content">
                <div class="app-title">
                    <ul class="app-breadcrumb breadcrumb side">
                        <li class="breadcrumb-item active"><a href="#" style="text-decoration: none"><b>Danh sách người dùng</b></a></li>
                    </ul>
                    <div id="clock"></div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Tất cả đơn hàng
                        </div>
                        <div class="card-body">
                            <table  id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">User ID</th>
                                        <th style="text-align: center">User Name</th>
                                        <th style="text-align: center">Email</th>
                                        <th style="text-align: center">Role Name</th>
                                        <th style="text-align: center" colspan="2">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${List}" var="x">
                                    <tr>                                          
                                        <td style="text-align: center">${x.account.userId}</td>
                                        <td style="text-align: center">${x.account.username}</td>
                                        <td style="text-align: center">${x.account.email}</td>
                                        <td style="text-align: center"> 
                                            <form action="ChangeRoleOfUser" method="get">
                                                <div class="col-auto">
                                                    <select class="btn btn-light" name="RoleName" ${x.account.roleId == 1?"disabled":""} >                                                   
                                                        <option value="1" ${x.account.roleId == 1?"selected":""} >Admin</option>                                              
                                                        <option value="2" ${x.account.roleId == 2?"selected":""} >Seller</option>                                              
                                                        <option value="3" ${x.account.roleId == 3?"selected":""} >Customer</option>                                              
                                                        <option value="4" ${x.account.roleId == 4?"selected":""} >Marketing</option>                                              
                                                        <option value="5" ${x.account.roleId == 5?"selected":""} >Shipper</option>                                            
                                                    </select>
                                                    <input name="sid" value="${x.account.userId}" hidden>
                                                    <c:if test="${x.account.roleId != 1}" >
                                                    <button type="submit" class="btn btn-primary" >Save</button> 
                                                    </c:if>
                                                </div>
                                            </form>
                                        </td>
                                        <td style="text-align: center">
                                            <c:if test="${x.account.roleId != 1}" >
                                            <c:if test="${x.account.block == '0'}">
                                                <button class="btn btn-danger">
                                                    <a style="text-decoration: none;color: #FFF" href="BanUsersControl?sid=${x.account.userId}&sid1=${x.account.block}">Block</a>
                                                </button>
                                            </c:if>                                 
                                            <c:if test="${x.account.block == '1'}">
                                                <button class="btn btn-success">
                                                <a style="text-decoration: none;color: #FFF" href="BanUsersControl?sid=${x.account.userId}&sid1=${x.account.block}">Un Block</a>
                                                </button>
                                            </c:if>  
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                            

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        <!-- Essential javascripts for application to work-->
        <script src="admin/js/jquery-3.2.1.min.js"></script>
        <script src="admin/js/popper.min.js"></script>
        <script src="admin/js/bootstrap.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="admin/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="admin/js/plugins/pace.min.js"></script>
        <!-- Page specific javascripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <!-- Data table plugin-->
        <script type="text/javascript" src="admin/js/plugins/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="admin/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">$('#sampleTable').DataTable();</script>
        <script>
            //Thời Gian
            function time() {
                var today = new Date();
                var weekday = new Array(7);
                weekday[0] = "Chủ Nhật";
                weekday[1] = "Thứ Hai";
                weekday[2] = "Thứ Ba";
                weekday[3] = "Thứ Tư";
                weekday[4] = "Thứ Năm";
                weekday[5] = "Thứ Sáu";
                weekday[6] = "Thứ Bảy";
                var day = weekday[today.getDay()];
                var dd = today.getDate();
                var mm = today.getMonth() + 1;
                var yyyy = today.getFullYear();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();
                m = checkTime(m);
                s = checkTime(s);
                nowTime = h + " giờ " + m + " phút " + s + " giây";
                if (dd < 10) {
                    dd = '0' + dd
                }
                if (mm < 10) {
                    mm = '0' + mm
                }
                today = day + ', ' + dd + '/' + mm + '/' + yyyy;
                tmp = '<span class="date"> ' + today + ' - ' + nowTime +
                        '</span>';
                document.getElementById("clock").innerHTML = tmp;
                clocktime = setTimeout("time()", "1000", "Javascript");

                function checkTime(i) {
                    if (i < 10) {
                        i = "0" + i;
                    }
                    return i;
                }
            }
            //In dữ liệu
            var myApp = new function () {
                this.printTable = function () {
                    var tab = document.getElementById('sampleTable');
                    var win = window.open('', '', 'height=700,width=700');
                    win.document.write(tab.outerHTML);
                    win.document.close();
                    win.print();
                }
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    </body>

</html>

