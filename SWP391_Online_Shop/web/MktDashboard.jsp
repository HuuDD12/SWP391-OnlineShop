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
                <li><a class="app-nav__item" href="dashboard"><i class='bx bx-log-out bx-rotate-180'></i> </a>

                </li>
            </ul>
        </header>
        <!-- Sidebar menu-->
        <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
        <jsp:include page="MKTNav.jsp"></jsp:include>
            <main class="app-content">
                <div class="app-title">
                    <ul class="app-breadcrumb breadcrumb side">
                        <li class="breadcrumb-item active"><a href="#" style="text-decoration: none"><b>Danh s??ch ng?????i d??ng</b></a></li>
                    </ul>
                    <div id="clock"></div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="row">
                            <!-- col-6 -->

                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-4 ">
                                        <div class="widget-small primary coloured-icon"><i class='icon bx bxs-data fa-3x'></i>
                                            <div class="info">
                                                <a href="bannercontrol" style="text-decoration: none" ><h4>T???ng Banner Sale</h4></a>                                       
                                                <p><b>${countB} Banner Sale </b></p>
                                            <p class="info-tong">T???ng s??? Banner Sale qu???n l??.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="widget-small primary coloured-icon"><i class='icon bx bxs-shopping-bags fa-3x'></i>
                                        <div class="info">
                                            <a href="cbannercontrol" style="text-decoration: none" ><h4>T???ng Banner </h4></a>
                                            <p><b>${countCB} Banner  </b></p>
                                            <p class="info-tong">T???ng s??? Banner  qu???n l??.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="widget-small primary coloured-icon"><i class='icon bx bxs-shopping-bags fa-3x'></i>
                                        <div class="info">
                                            <a href="blogmanager" style="text-decoration: none" ><h4>T???ng Blog </h4></a>
                                            <p><b>${countBL} Blog  </b></p>
                                            <p class="info-tong">T???ng s??? Banner  qu???n l??.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-bar me-1"></i>
                                    Bar Chart 
                                </div>
                                <div class="card-body">
                                    <canvas id="myBarChart" width="100%" height="50"></canvas>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header">
                                    <i class="fas fa-chart-pie me-1"></i>
                                    Pie Chart 
                                </div>
                                <div class="card-body">
                                    <canvas id="myPieChart" width="100%" height="50"></canvas>
                                </div>

                            </div>
                        </div>

                        <!-- col-6 -->

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
            //Th???i Gian
            function time() {
            var today = new Date();
            var weekday = new Array(7);
            weekday[0] = "Ch??? Nh???t";
            weekday[1] = "Th??? Hai";
            weekday[2] = "Th??? Ba";
            weekday[3] = "Th??? T??";
            weekday[4] = "Th??? N??m";
            weekday[5] = "Th??? S??u";
            weekday[6] = "Th??? B???y";
            var day = weekday[today.getDay()];
            var dd = today.getDate();
            var mm = today.getMonth() + 1;
            var yyyy = today.getFullYear();
            var h = today.getHours();
            var m = today.getMinutes();
            var s = today.getSeconds();
            m = checkTime(m);
            s = checkTime(s);
            nowTime = h + " gi??? " + m + " ph??t " + s + " gi??y";
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
            //In d??? li???u
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <!-- Bar -->
        <script>

            const labelsBar = [
            <c:forEach items="${listBrand}" var="c">
            '${c.p.url}',
            </c:forEach>
            ];
            const dataBar = {
            labels: labelsBar,
                    datasets: [{
                    label: 'T???ng danh m???c ???? ???????c ?????t h??ng',
                            data: [
            <c:forEach items="${listBrand}" var="x">
                            '${x.p.salePrice}',
            </c:forEach>
                            ],
                            backgroundColor: [
                                    'rgba(255, 99, 132, 0.2)',
                                    'rgba(255, 159, 64, 0.2)',
                                    'rgba(255, 205, 86, 0.2)',
                                    'rgba(75, 192, 192, 0.2)',
                                    'rgba(54, 162, 235, 0.2)',
                                    'rgba(153, 102, 255, 0.2)',
                                    'rgba(201, 203, 207, 0.2)'
                            ],
                            borderColor: [
                                    'rgb(255, 99, 132)',
                                    'rgb(255, 159, 64)',
                                    'rgb(255, 205, 86)',
                                    'rgb(75, 192, 192)',
                                    'rgb(54, 162, 235)',
                                    'rgb(153, 102, 255)',
                                    'rgb(201, 203, 207)'
                            ],
                            borderWidth: 1
                    }]
            };
            const configBar = {
            type: 'bar',
                    data: dataBar,
                    options: {
                    scales: {
                    y: {
                    beginAtZero: true
                    }
                    }
                    },
            };
            const myBarChart = new Chart(
                    document.getElementById('myBarChart'),
                    configBar
                    );
        </script>
        <!-- Pie   -->
        <script>
            const dataPie = {
            labels: [
            <c:forEach items="${listSell}" var="x">
            '${x.p.productName}',
            </c:forEach>

            ],
                    datasets: [{
                    label: 'My First Dataset',
                            data: [
            <c:forEach items="${listSell}" var="x">
                            '${x.p.salePrice}',
            </c:forEach>
                            ],
                            backgroundColor: [
                                    'rgb(255, 99, 132)',
                                    'rgb(54, 162, 235)',
                                    'rgb(255, 205, 86)'
                            ],
                            hoverOffset: 4
                    }]
            };
            const configPie = {
            type: 'pie',
                    data: dataPie,
            };
            const myPieChart = new Chart(
                    document.getElementById('myPieChart'),
                    configPie
                    );
        </script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    </body>

</html>
