<%-- 
    Document   : my-account
    Created on : Oct 17, 2021, 8:31:21 AM
    Author     : Khuong Hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Home | E-Shopper</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">


        <!-- Plugins CSS -->


        <!-- Main Style CSS -->


    </head>

    <body>

        <!-- Main Wrapper Start -->
        <!--Offcanvas menu area start-->

        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <header id="header"><!--header-->
                                <div class="contactinfo">
                                    <ul class="nav nav-pills">
                                        <li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
                                        <li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
                                        <                    </ul>
                                </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="index.html"><img src="images/home/logo.png" alt="" /></a>
                            </div>
                            <div class="btn-group pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        USA
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Canada</a></li>
                                        <li><a href="#">UK</a></li>
                                    </ul>
                                </div>

                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                        DOLLAR
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Canadian Dollar</a></li>
                                        <li><a href="#">Pound</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li class="d-flex my-2">
                                        <a class="btn btn-outline-dark" href="carts">
                                            <i class="bi-cart-fill me-1 fa fa-shopping-cart"></i>
                                            Cart
                                            <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                                        </a>
                                    </li>
                                    <c:if test="${sessionScope.acc != null}">
                                        <li><a href="logout"><i class="fa fa-lock"></i>Logout</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.acc == null}">
                                        <li><a href="Login.jsp"><i class="fa fa-lock"></i>Login</a></li>
                                        </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->


        </header><!--/header-->
        <!--breadcrumbs area start-->
        <div class="breadcrumbs_area other_bread">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="home">home</a></li>
                                <li>/</li>
                                <li>my account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
        <!--breadcrumbs area end-->

        <!-- my account start  -->
        <section class="main_content_area">
            <div class="container">   
                <div class="account_dashboard">
                    <div class="row">
                        <div class="col-sm-12 col-md-3 col-lg-3">
                            <!-- Nav tabs -->
                            <div class="dashboard_tab_button">
                                <ul role="tablist" class="nav flex-column dashboard-list">
                                    <li><a href="#" data-toggle="tab" class="nav-link">My Account</a></li>
<!--                                    <li> <a href="#orders" data-toggle="tab" class="nav-link">Đơn hàng</a></li>-->
                                </ul>
                            </div>    
                        </div>
                        <div class="col-sm-12 col-md-9 col-lg-9">
                            <!-- Tab panes -->
                            <div class="tab-content dashboard_content">
                                <div class="tab-pane fade" id="orders">
                                    <h3>Đơn hàng</h3>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Mã đơn hàng</th>
                                                    <th>Ngày khởi tạo</th>
                                                    <th>Hình thức GD</th>
                                                    <th>Địa chỉ</th>
                                                    <th>Tổng đơn</th>
                                                    <th>Actions</th>	 	 	 	
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${bill}" var="b">
                                                    <tr>
                                                        <td>${b.bill_id}</td>
                                                        <td>${b.date}</td>
                                                        <td><span class="success">${b.payment}</span></td>
                                                        <td>${b.address}</td>
                                                        <td>${b.total}</td>
                                                        <td><a href="user?action=showdetail&bill_id=${b.bill_id}" class="view">view</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade show active" id="account-details">
                                    <h3 style="margin: 0 0 15px">My Account </h3>
                                    <div class="login">
                                        <div class="login_form_container">
                                            <div class="account_login_form">
                                                <label>Username</label>
                                                <input style="border: 1px solid #ddd;
                                                       background: none;
                                                       height: 40px;
                                                       margin-bottom: 20px;
                                                       width: 100%;
                                                       padding: 0 20px;
                                                       color: #747474;" readonly type="text"  value="${sessionScope.acc.username}">
                                                <label>Email</label>
                                                <input style="border: 1px solid #ddd;
                                                       background: none;
                                                       height: 40px;
                                                       margin-bottom: 20px;
                                                       width: 100%;
                                                       padding: 0 20px;
                                                       color: #747474;"
                                                       type="text" readonly  value="${sessionScope.acc.email}">
                                                <label>Password</label>
                                                <input style="border: 1px solid #ddd;
                                                       background: none;
                                                       height: 40px;
                                                       margin-bottom: 20px;
                                                       width: 100%;
                                                       padding: 0 20px;
                                                       color: #747474;"
                                                       type="password" readonly value="${sessionScope.acc.password}">
                                                <label>Date of birth</label>
                                                <input style="border: 1px solid #ddd;
                                                       background: none;
                                                       height: 40px;
                                                       margin-bottom: 20px;
                                                       width: 100%;
                                                       padding: 0 20px;
                                                       color: #747474;"
                                                       type="text" value="${sessionScope.acc.dob}">
                                                <label>Phone</label>
                                                <input style="border: 1px solid #ddd;
                                                       background: none;
                                                       height: 40px;
                                                       margin-bottom: 20px;
                                                       width: 100%;
                                                       padding: 0 20px;
                                                       color: #747474;"
                                                       type="address" readonly  value="${sessionScope.acc.phone}">
                                                 <label>Address</label>
                                                <input style="border: 1px solid #ddd;
                                                       background: none;
                                                       height: 40px;
                                                       margin-bottom: 20px;
                                                       width: 100%;
                                                       padding: 0 20px;
                                                       color: #747474;"
                                                       type="address" readonly value="${sessionScope.acc.address}">
                                                <div class="cart_submit">
                                                    <button style="margin-left: -13px"  type="submit"><a href="UpdateInfo.jsp?id_user=${sessionScope.acc.id_user}">Update</a></button>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                    </div>
                </div>  
            </div>        	
        </section>			
        <!-- my account end   --> 
        <!--footer area start-->
        <jsp:include page="Footer.jsp"/>
        <!--footer area end-->

        <!-- JS
        ============================================ -->

        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>



    </body>

</html>
