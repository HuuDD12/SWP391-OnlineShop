<%-- 
    Document   : HistoryBuy
    Created on : Mar 3, 2022, 11:46:57 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Product Details | E-Shopper</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="css/style3.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head>
    <body>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
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

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="home" class="active">Home</a></li>
                                        <c:if test="${sessionScope.acc != null}">
                                        <li><a href="#"><i class="active"></i>Hello ${sessionScope.acc.username}</a></li>
                                        <li><a href="buyhistory">History Buy</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.role==2}">
                                        <li><a href="myaccount">Info Seller</a></li>
                                        <li><a href="manager-product">Manager Product</a></li>

                                    </c:if>

                                    <c:if test="${sessionScope.acc.role==1}">

                                        <li><a href="myaccount">Info Admin</a></li>
                                        <li><a href="dashboard">DashBoard</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.role==3}">

                                        <li><a href="myaccount">Info</a></li>                                
                                        </c:if>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <form action="search" method="post">
                                <div class="input-group">

                                    <input  value="${txtSearch}" name="txt" type="text" class="form-control" placeholder="Search Here"  >
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn_search">
                                            <i class="fa fa-search"></i></button>
                                    </span>                                      
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->
        <div class="privacy py-sm-5 py-4" style="margin-bottom: 100px;">
            <div class="container py-xl-4 py-lg-2">
                <!-- tittle heading -->
                <h3 style="margin-bottom: 20px" class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                    History Buy
                </h3>
                <!-- //tittle heading -->
                <div class="checkout-right">
                    <div class="table-responsive">
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Product name</th>
                                    <th>Price</th>
                                    <th>Created Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="o" items="${list}">
                                    <tr class="rem1">
                                        <td class="invert">${o.oid}</td>
                                        <td class="">
                                            <img style="height: 150px" src="${o.p.images}">
                                        </td>
                                        <td class="invert">
                                            <div class="quantity">
                                                <div class="quantity-select">
                                                    <div style="background: cornflowerblue;" class="entry value">
                                                        <span style="color: yellow;font-weight: bold">${o.quantity}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="">${o.p.name_pro}</td>
                                        <td class="invert">$${o.o.totalMoney}</td>
                                        <td hidden="" class="invert">${o.o.uid}</td>
                                        <td class="invert">${o.o.date}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
