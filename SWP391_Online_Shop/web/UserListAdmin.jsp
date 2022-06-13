<%-- 
    Document   : Login
    Created on : May 27, 2022, 9:26:28 AM
    Author     : VAN ANH
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Template: Metronic Frontend Freebie - Responsive HTML Template Based On Twitter Bootstrap 3.3.4
Version: 1.0.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase Premium Metronic Admin Theme: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->

    <!-- Head BEGIN -->
    <head>
        <meta charset="utf-8">
        <title>My Account | Metronic Shop UI</title>

        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <meta content="Metronic Shop UI description" name="description">
        <meta content="Metronic Shop UI keywords" name="keywords">
        <meta content="keenthemes" name="author">

        <meta property="og:site_name" content="-CUSTOMER VALUE-">
        <meta property="og:title" content="-CUSTOMER VALUE-">
        <meta property="og:description" content="-CUSTOMER VALUE-">
        <meta property="og:type" content="website">
        <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">

        <link rel="shortcut icon" href="favicon.ico">

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END --> 

        <!-- Page level plugin styles START -->
        <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
        <!-- Page level plugin styles END -->

        <!-- Theme styles START -->
        <link href="assets/pages/css/components.css" rel="stylesheet">
        <link href="assets/corporate/css/style.css" rel="stylesheet">
        <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
        <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
        <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
        <link href="assets/corporate/css/custom.css" rel="stylesheet">
        <!-- Theme styles END -->
    </head>
    <!-- Head END -->

    <!-- Body BEGIN -->
    <body class="ecommerce">
        <!-- BEGIN STYLE CUSTOMIZER -->
        <div class="color-panel hidden-sm">
            <div class="color-mode-icons icon-color"></div>
            <div class="color-mode-icons icon-color-close"></div>
            <div class="color-mode">
                <p>THEME COLOR</p>
                <ul class="inline">
                    <li class="color-red current color-default" data-style="red"></li>
                    <li class="color-blue" data-style="blue"></li>
                    <li class="color-green" data-style="green"></li>
                    <li class="color-orange" data-style="orange"></li>
                    <li class="color-gray" data-style="gray"></li>
                    <li class="color-turquoise" data-style="turquoise"></li>
                </ul>
            </div>
        </div>
        <!-- END BEGIN STYLE CUSTOMIZER --> 

        <!-- BEGIN TOP BAR -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Header END -->

            <div class="main">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="">Store</a></li>
                        <li class="active">My Account Page</li>
                    </ul>
                    <!-- BEGIN SIDEBAR & CONTENT -->
                    <div class="row margin-bottom-40">
                        <!-- BEGIN SIDEBAR -->
                        <div class="sidebar col-md-3 col-sm-3">
                            <ul class="list-group margin-bottom-25 sidebar-menu">
                                <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i> Login/Register</a></li>
                                <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i> Restore Password</a></li>
                                <li class="list-group-item clearfix"><a href="MyAccountPage.jsp"><i class="fa fa-angle-right"></i> My account</a></li>
                                <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i> Address book</a></li>
                                <li class="active list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i> User list</a></li>
                                <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i> Returns</a></li>
                                <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i> Newsletter</a></li>
                            </ul>
                        </div>
                        <!-- END SIDEBAR -->

                        <!-- BEGIN CONTENT -->
                        <div class="col-md-9 col-sm-7">                 
                            <div class="col-md-12" style="padding: 0;">
                                <form action="userlist" method="get"class="row align-items-center">
                                    <div class="col-auto">
                                        <input type="text" name="Search" value="<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>" placeholder="Enter Keyword">                              
                                    <button type="submit" class="btn btn-primary" >Search</button>                  
                                </div>                             
                            </form>
                            <p>Total record : ${Total} </p>
                            <table class="border table table-striped table-hover table-bordered text-center" style="margin-top: 10px; font-size: 13px;">
                                <thead class="bg-info" style="position: -webkit-sticky; position: sticky; top: 0;">                         
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
                                            <td>${x.account.userId}</td>
                                            <td>${x.account.username}</td>
                                            <td>${x.account.email}</td>
                                               <td class="row align-items-center"> 
                                                <form action="ChangeRoleOfUser" method="get">
                                                    <div class="col-auto">
                                                        <select name="RoleName" ${x.account.roleId == 1?"disabled":""} >                                                   
                                                            <option value="1" ${x.account.roleId == 1?"selected":""} >Admin</option>                                              
                                                            <option value="2" ${x.account.roleId == 2?"selected":""} >Seller</option>                                              
                                                            <option value="3" ${x.account.roleId == 3?"selected":""} >Customer</option>                                              
                                                            <option value="4" ${x.account.roleId == 4?"selected":""} >Marketing</option>                                              
                                                            <option value="5" ${x.account.roleId == 5?"selected":""} >Shipper</option>                                            
                                                        </select>
                                                        <input name="sid" value="${x.account.userId}" class="hidden">
                                                        <input name="index" value="${tag}" class="hidden">
                                                        <input name="Search" value="<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>" class="hidden">
                                                        <button type="submit" class="btn btn-primary" >Save</button> 
                                                    </div>
                                                </form>
                                               </td>
                                               <td>
                                                <c:if test="${x.account.block == '0'}">
                                                    <a href="BanUsersControl?sid=${x.account.userId}&sid1=${x.account.block}&index=${tag}&Search=<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>">Block</a>
                                                </c:if>                                 
                                                <c:if test="${x.account.block == '1'}">
                                                    <a href="BanUsersControl?sid=${x.account.userId}&sid1=${x.account.block}&index=${tag}&Search=<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>">Un Block</a>
                                                </c:if>                                 
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <nav aria-label="...">
                                <ul class="pagination">
                                    <c:if test="${tag!= 1}">
                                    <li class="page-item ">
                                        <a class="page-link" href="userlist?index=${tag-1}&Search=<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>" >Previous</a>
                                    </li>
                                    </c:if>
                                    <c:forEach begin="1" end="${endPage}" var="i">
                                        <li class="page-item ${tag == i?"active":""}"><a class="page-link" href="userlist?index=${i}&Search=<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>">${i}</a></li>
                                    </c:forEach>
                                    <c:if test="${tag<endPage}">
                                    <li class="page-item">
                                        <a class="page-link" href="userlist?index=${tag+1}&Search=<%=request.getParameter("Search") != null ? request.getParameter("Search") : ""%>">Next</a>
                                    </li>
                                    </c:if>
                                </ul>
                            </nav>                           
                        </div>

                    </div>
                    <!-- END CONTENT -->
                </div>
                <!-- END SIDEBAR & CONTENT -->
            </div>
        </div>

        <!-- BEGIN BRANDS -->
        <div class="brands">
            <div class="container">
                <div class="owl-carousel owl-carousel6-brands">
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/esprit.jpg" alt="esprit" title="esprit"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/next.jpg" alt="next" title="next"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/canon.jpg" alt="canon" title="canon"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/esprit.jpg" alt="esprit" title="esprit"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/gap.jpg" alt="gap" title="gap"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/next.jpg" alt="next" title="next"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/puma.jpg" alt="puma" title="puma"></a>
                    <a href="shop-product-list.html"><img src="assets/pages/img/brands/zara.jpg" alt="zara" title="zara"></a>
                </div>
            </div>
        </div>
        <!-- END BRANDS -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- BEGIN STEPS -->

        <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
        <script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->

        <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
        <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
        <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->

        <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                Layout.init();
                Layout.initOWL();
                Layout.initTwitter();
            });
        </script>
        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>