<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Men category | Metronic Shop UI</title>

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

            <div class="title-wrapper">
                <div class="container"><div class="container-inner">
                        <h1><span>MEN</span> CATEGORY</h1>
                        <em>Over 4000 Items are available here</em>
                    </div></div>
            </div>

            <div class="main">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="">Store</a></li>
                        <li class="active">Men category</li>
                    </ul>
                    <!-- BEGIN SIDEBAR & CONTENT -->
                    <div class="row margin-bottom-40">
                        <!-- BEGIN SIDEBAR -->
                        <div class="sidebar col-md-3 col-sm-5">
                            <ul class="list-group margin-bottom-25 sidebar-menu">
                            <c:forEach items="${listC}" var="c">
                                <li class="list-group-item clearfix dropdown active">
                                    <a href="javascript:void(0);" class="collapsed">
                                        <i class="fa fa-angle-right"></i>
                                        ${c.cate_name}

                                    </a>
                                    <ul class="dropdown-menu" style="display:block;">
                                        <c:forEach items="${listS}" var="s">
                                            <c:if test="${c.cate_id == s.cate_id}">
                                                <li class="list-group-item dropdown clearfix active">
                                                    <a href="productlist" style="color: #000" class="collapsed">${s.subcate_name} </a>                                
                                                </li>
                                            </c:if>
                                        </c:forEach>

                                    </ul>
                                </li>
                            </c:forEach>


                        </ul>

                        <div class="sidebar-filter margin-bottom-25">
                            <h2>Filter</h2>
                            <h3>Availability</h3>
                            <div class="checkbox-list">
                                <label><input type="checkbox"> Not Available (3)</label>
                                <label><input type="checkbox"> In Stock (26)</label>
                            </div>

                            <h3>Price</h3>
                            <p>
                                <label for="amount">Range:</label>
                                <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;">
                            </p>
                            <div id="slider-range"> </div>
                        </div>

                        <div class="sidebar-products clearfix">
                            <h2>Bestsellers</h2>
                            <div class="item">
                                <a href="shop-item.html"><img src="assets/pages/img/products/k1.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                                <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                                <div class="price">$31.00</div>
                            </div>
                            <div class="item">
                                <a href="shop-item.html"><img src="assets/pages/img/products/k4.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                                <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                                <div class="price">$23.00</div>
                            </div>
                            <div class="item">
                                <a href="shop-item.html"><img src="assets/pages/img/products/k3.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                                <h3><a href="shop-item.html">Some Shoes in Animal with Cut Out</a></h3>
                                <div class="price">$86.00</div>
                            </div>
                        </div>
                    </div>
                    <!-- END SIDEBAR -->
                    <!-- BEGIN CONTENT -->
                    <div class="col-md-9 col-sm-7">
                        <div class="row list-view-sorting clearfix">
                            <div class="col-md-2 col-sm-2 list-view">
                                <a href="javascript:;"><i class="fa fa-th-large"></i></a>
                                <a href="javascript:;"><i class="fa fa-th-list"></i></a>
                            </div>
                            <div class="col-md-10 col-sm-10">
                                <div class="pull-right">
                                    <label class="control-label">Show:</label>
                                    <select class="form-control input-sm">
                                        <option value="#?limit=24" selected="selected">24</option>
                                        <option value="#?limit=25">25</option>
                                        <option value="#?limit=50">50</option>
                                        <option value="#?limit=75">75</option>
                                        <option value="#?limit=100">100</option>
                                    </select>
                                </div>
                                <div class="pull-right">

                                    <label class="control-label">Sort&nbsp;By:</label>
                                    <form action="sort">
                                        <select name="type" onchange="this.form.submit()" class="form-control input-sm">
                                            <option ${type==0?"selected":""} value="0" selected="selected">Default</option>
                                            <option ${type==1?"selected":""} value="1">Name (A - Z)</option>
                                            <option ${type==2?"selected":""} value="2">Name (Z - A)</option>
                                            <option ${type==3?"selected":""} value="3">Price (Low &gt; High)</option>
                                            <option ${type==4?"selected":""} value="4">Price (High &gt; Low)</option>
                                        </select>  
                                    </form>

                                </div>
                            </div>
                        </div>
                        <!-- BEGIN PRODUCT LIST -->
                        <div class="row product-list">
                            <!-- PRODUCT ITEM START -->
                            <c:forEach items="${listP}" var="p">
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="product-item">
                                        <div class="pi-img-wrapper">
                                            <img src="${p.url}" class="img-responsive" alt="Berry Lace Dress">
                                            <div>
                                                <a href="assets/pages/img/products/model1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                                                <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                                            </div>
                                        </div>
                                        <h3><a href="shop-item.html">${p.productName}</a></h3>
                                        <div class="pi-price">${p.originalPrice}</div>
                                        <a href="add-to-cart?pid=${p.productID}" class="btn btn-default add2cart">Add to cart</a>
                                    </div>
                                </div>
                            </c:forEach>

                            <!-- PRODUCT ITEM END -->
                        </div>
                        <!-- END PRODUCT LIST -->
                        <!-- BEGIN PAGINATOR -->
                        <div class="row">
                            <div class="col-md-4 col-sm-4 items-info">Items 1 to 9 of 10 total</div>
                            <div class="col-md-8 col-sm-8">
                                <ul class="pagination pull-right">
                                    <li><a href="javascript:;">&laquo;</a></li>
                                    <li><a href="javascript:;">1</a></li>
                                    <li><span>2</span></li>
                                    <li><a href="javascript:;">3</a></li>
                                    <li><a href="javascript:;">4</a></li>
                                    <li><a href="javascript:;">5</a></li>
                                    <li><a href="javascript:;">&raquo;</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- END PAGINATOR -->
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

        <!-- BEGIN fast view of a product -->
        <div id="product-pop-up" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-3">
                        <div class="product-main-image">
                            <img src="assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                        </div>
                        <div class="product-other-images">
                            <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="assets/pages/img/products/model3.jpg"></a>
                            <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model4.jpg"></a>
                            <a href="javascript:;"><img alt="Berry Lace Dress" src="assets/pages/img/products/model5.jpg"></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-9">
                        <h1>Cool green dress with red bell</h1>
                        <div class="price-availability-block clearfix">
                            <div class="price">
                                <strong><span>$</span>47.00</strong>
                                <em>$<span>62.00</span></em>
                            </div>
                            <div class="availability">
                                Availability: <strong>In Stock</strong>
                            </div>
                        </div>
                        <div class="description">
                            <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat 
                                Nostrud duis molestie at dolore.</p>
                        </div>
                        <div class="product-page-options">
                            <div class="pull-left">
                                <label class="control-label">Size:</label>
                                <select class="form-control input-sm">
                                    <option>L</option>
                                    <option>M</option>
                                    <option>XL</option>
                                </select>
                            </div>
                            <div class="pull-left">
                                <label class="control-label">Color:</label>
                                <select class="form-control input-sm">
                                    <option>Red</option>
                                    <option>Blue</option>
                                    <option>Black</option>
                                </select>
                            </div>
                        </div>
                        <div class="product-page-cart">
                            <div class="product-quantity">
                                <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                            </div>
                            <button class="btn btn-primary" type="submit">Add to cart</button>
                            <a href="shop-item.html" class="btn btn-default">More details</a>
                        </div>
                    </div>

                    <div class="sticker sticker-sale"></div>
                </div>
            </div>
        </div>
        <!-- END fast view of a product -->

        <!-- Load javascripts at bottom, this will reduce page load time -->
        <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
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