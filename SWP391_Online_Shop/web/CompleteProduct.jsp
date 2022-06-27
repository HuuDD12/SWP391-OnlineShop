<%-- 
    Document   : order
    Created on : Oct 19, 2021, 11:23:09 PM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
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
                <li><a class="app-nav__item" href="productlist"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                </li>
            </ul>
        </header>
        <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
        <jsp:include page="DeliveryNav.jsp"></jsp:include>
            <main class="app-content">
                <div class="app-title">
                    <ul class="app-breadcrumb breadcrumb side">
                        <li class="breadcrumb-item active"><a href="#"><b>Danh sách đơn hàng</b></a></li>
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
                                        <th style="text-align: center">ID đơn hàng</th>
                                        <th style="text-align: center">Khách hàng</th>
                                        <th style="text-align: center">Ngày mua</th>
                                        <th style="text-align: center">Tổng tiền</th>
                                        <th style="text-align: center">Trạng thái</th>
                                        <th style="text-align: center">Ghi chú</th>
                                        <th style="text-align: center">View</th>
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="b">
                                    <tr>
                                        <td style="text-align: center">${b.id}</td>
                                        <td style="text-align: center">${b.acc.username}</td>
                                        <td style="text-align: center">${b.createdDate}</td>
                                        <td style="text-align: center">${b.totalPrice}</td> 
                                        <c:if test="${b.status == 1}">
                                            <td style="text-align: center"><span class="badge rounded-pill bg-secondary">Waiting for Confirmation</span></td>
                                        </c:if>
                                        <c:if test="${b.status == 2}">
                                            <td style="text-align: center"><span class="badge rounded-pill bg-warning text-dark">Packing</span></td>
                                        </c:if>
                                        <c:if test="${b.status == 3}">
                                            <td style="text-align: center"><span class="badge rounded-pill bg-primary">Delivering</span></td>
                                        </c:if>
                                        <c:if test="${b.status == 4}">
                                            <td style="text-align: center"><span class="badge bg-danger">Canceled</span></td>
                                        </c:if>
                                        <c:if test="${b.status == 5}">
                                            <td style="text-align: center"><span class="badge bg-success">completed</span></td>
                                        </c:if> 
                                        <td style="text-align: center">${b.note}</td> 
                                        <td style="text-align: center"><a class="btn btn-sm btn-primary" href="orderdetail?oid=${b.id}">View</a></td>
                                        <c:if test="${b.status == 1}">
                                            <td style="text-align: center"><a href="confirmorder?action=accept&oid=${b.id}"><span class="btn btn-sm btn-success rounded-pill">Accept</span></a>
                                                <a href="confirmorder?action=reject&oid=${b.id}"><span class="btn btn-sm btn-danger rounded-pill">Reject</span></a> 
                                            </td>
                                        </c:if>
                                        <c:if test="${b.status == 3}">
                                            <td style="text-align: center"><a href="confirmorder?action=complete&oid=${b.id}"><span class="btn btn-sm btn-success rounded-pill">Complete</span></a>
                                            </td>
                                        </c:if>
                                        <c:if test="${b.status != 1}">
                                            <td>
                                            </td>
                                        </c:if>
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
        <script src="js/datatables-simple-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    </body>

</html>
