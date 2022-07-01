<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <title>Shopping cart | Metronic Shop UI</title>

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

        <jsp:include page="header.jsp"></jsp:include>

            <div class="main">
                <div class="container">
                    <!-- BEGIN SIDEBAR & CONTENT -->
                    <div class="row margin-bottom-40">
                        <!-- BEGIN CONTENT -->
                        <div class="col-md-12 col-sm-12">
                            <h1>Shopping cart</h1>
                        <c:choose>
                            <c:when test="${carts.size() == 0}">
                                <div class="container" style="min-height: 300px">
                                    <div class="row">
                                        <div class="col-md-12">

                                            <div class="card-body cart">
                                                <div class="col-sm-12 empty-cart-cls text-center"> <img src="https://i.imgur.com/dCdflKN.png" width="130" height="130" class="img-fluid mb-4 mr-3">
                                                    <h3 style="color: black"><strong>Your Cart is Empty</strong></h3>
                                                    <h4 style="color: black">Add something to make me happy :)</h4> <a href="productlist" class="btn btn-success cart-btn-transform m-3" data-abc="true">Continue Shopping</a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="goods-page">
                                <div class="goods-data clearfix">
                                    <div class="table-wrapper-responsive">
                                        <table summary="Shopping cart">
                                            <tr>
                                                <th class="goods-page-image">Name</th>
                                                <th style="padding-left: 50px;" class="goods-page-description">Image</th>
                                                <th style="padding-left: 70px;" class="goods-page-ref-no">Price</th>
                                                <th style="padding-left: 50px;" class="goods-page-quantity">Quantity</th>
                                                <th style="padding-left: 50px;" class="goods-page-total" colspan="2">Total</th>

                                            </tr>
                                            <c:forEach items="${carts}" var="C">
                                                <form action="update-quantity">
                                                    <input type="hidden" name="productId" value="${C.value.product.productID}"
                                                           <tr>

                                                        <td class="goods-page-description">
                                                            ${C.value.product.productName}
                                                        </td>
                                                        <td style="padding-left: 50px;" class="goods-page-image">
                                                            <a href="javascript:;"><img src="${C.value.product.url}" alt="Berry Lace Dress"></a>
                                                        </td>
                                                        <td style="padding-left: 70px;" class="goods-page-price">
                                                            <strong><fmt:formatNumber pattern="##.#" value="${C.value.product.salePrice}"/><span>đ</span></strong>
                                                        </td>
                                                        <!--                                                    <td style="padding-left: 50px;" class="goods-page-quantity">
                                                                                                                <div class="product-quantity">
                                                                                                                    <input onchange="this.form.submit()" name="quantity" id="product-quantity" type="number" value="${C.value.quantity}">
                                                                                                                </div>
                                                                                                            </td>-->
                                                        <td>
                                                            <a class="btn btn-link px-2"
                                                               href="update-quantity?action=dec&id=${C.value.product.productID}">
                                                                <i class="fa fa-minus"></i>
                                                            </a>
                                                            <input id="form1" name="quantity" value="${C.value.quantity}" type="text"
                                                                   style="max-width: 3rem; text-align: center"
                                                                   class="form-control-sm"
                                                                   />
                                                            <a class="btn btn-link px-2"
                                                               href="update-quantity?action=inc&id=${C.value.product.productID}">
                                                                <i class="fa fa-plus"></i>
                                                            </a>
                                                        </td>
                                                        <td style="padding-left: 50px;" class="goods-page-total">
                                                            <strong><fmt:formatNumber pattern="##.#" value="${C.value.product.salePrice*C.value.quantity}"/><span>đ</span></strong>
                                                        </td>
                                                        <td style="padding-left: 50px;" class="del-goods-col">
                                                            <a class="del-goods" href="delete-cart?productId=${C.value.product.productID}">&nbsp;</a>
                                                        </td>
                                                    </tr>
                                                </form>

                                            </c:forEach> 

                                        </table>
                                    </div>

                                    <div class="shopping-total">
                                        <ul>        
                                            <li>
                                                <em>Shipping cost</em>
                                                <strong class="price">Free</strong>
                                            </li>
                                            <li class="shopping-total-price">
                                                <em>Total</em>
                                                <strong class="price"><fmt:formatNumber pattern="##.#" value="${totalMoney}"/><span>đ</span></strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <button class="btn btn-default" type="submit"><a style="color: #FFF" href="productlist">Continue shopping </a><i class="fa fa-shopping-cart"></i></button>
                                <button class="btn btn-primary" type="submit"><a style="color: #FFF" href="checkout">Checkout <i class="fa fa-check"></a></i></button>
                            </div>
                            </c:otherwise>
                        </c:choose>
                        </div>
                        <!-- END CONTENT -->
                    </div>
                    <!-- END SIDEBAR & CONTENT -->

                    <!-- BEGIN SIMILAR PRODUCTS -->
                    <!-- END SIMILAR PRODUCTS -->
                </div>
            </div>

            <jsp:include page="footer.jsp"></jsp:include>

            <!-- BEGIN fast view of a product -->

            <!-- END fast view of a product -->

            <!-- Load javascripts at bottom, this will reduce page load time -->
            <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
            <!--[if lt IE 9]>
            <script src="assets/plugins/respond.min.js"></script>  
            <![endif]-->  
            <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
            <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
            <script src="assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
            <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
            <!-- END CORE PLUGINS -->

            <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
            <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
            <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
            <script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
            <script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
            <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
            <script src="assets/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
            <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

            <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
            <script type="text/javascript">
                jQuery(document).ready(function () {
                    Layout.init();
                    Layout.initOWL();
                    Layout.initTwitter();
                    Layout.initImageZoom();
                    Layout.initTouchspin();
                    Layout.initUniform();
                    Layout.initSliderRange();
                });
            </script>
            <!-- END PAGE LEVEL JAVASCRIPTS -->
        </body>
        <!-- END BODY -->
    </html>