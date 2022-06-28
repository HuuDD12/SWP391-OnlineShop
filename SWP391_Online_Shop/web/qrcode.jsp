<%-- 
    Document   : qrcode
    Created on : Nov 3, 2021, 2:01:53 AM
    Author     : Khuong Hung
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Thanh toán</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
               <link rel="shortcut icon" href="favicon.ico">

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END --> 

        <!-- CSS 
        ========================= -->
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="css/plugins.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="css/style3.css">
                <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
        <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
        <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
        <link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin styles END -->
        <!-- Theme styles START -->
        <link href="assets/pages/css/components.css" rel="stylesheet">
        <link href="assets/corporate/css/style.css" rel="stylesheet">
        <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
        <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
        <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
        <link href="assets/corporate/css/custom.css" rel="stylesheet">

    </head>

    <body>
        <div class="off_canvars_overlay"></div>
        <jsp:include page="header.jsp"/>

        <!--error section area start-->
        <div class="error_section">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="error_form">
                            <h2 class="text-center text-dark">Thanh toán hoá đơn: #${bill.bill_id}!</h2>
                            <h4 class="text-center">Số tiền thanh toán: ${total} VND</h4>
                            <h4 class="text-center">Vui lòng viết ghi chú: </h4>
                            <h5 class="text-center" style="color: red">" Mã đơn hàng #${bill.bill_id} "</h5>
                            <h6 class="text-center">Chúng tôi sẽ kiểm tra và thông báo đến bạn khi thanh toán hoàn tất !</h6>
                            <div class="text-center">
                                <img style="align-content: center;"height="650px" width="450px" src="resources/momo.jpg"/>
                            </div>
                            <a href="home">Tiếp tục mua hàng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--error section area end--> 
        <!--footer area start-->
        <jsp:include page="footer.jsp"/>
        <!--footer area end-->

        <!-- JS
        ============================================ -->


        <!--map js code here-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAdWLY_Y6FL7QGW5vcO3zajUEsrKfQPNzI"></script>
        <script  src="https://www.google.com/jsapi"></script>
        <script src="assets/js/map.js"></script>


        <!-- Plugins JS -->
        <script src="assets/js/plugins.js"></script>

        <!-- Main JS -->
        <script src="assets/js/main.js"></script>



    </body>

</html>