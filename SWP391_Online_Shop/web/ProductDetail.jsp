<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <!--<![endif]-->

    <!-- Head BEGIN -->
    <head>
        <meta charset="utf-8">
        <title>Cool green dress with red bell | Metronic Shop UI</title>

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

        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="fonts/material-icon/css/material-design-iconic-font.css" rel="stylesheet">
        <link href="fonts/material-icon/css/material-design-iconic-font.min.css" rel="stylesheet">
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

        <!-- BEGIN TOP BAR -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Header END -->

            <div class="main">
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="">Store</a></li>
                        <li class="active">Cool green dress with red bell</li>
                    </ul>
                    <!-- BEGIN SIDEBAR & CONTENT -->
                    <div class="row margin-bottom-40">
                        <!-- BEGIN SIDEBAR -->
                    <jsp:include page="Left.jsp"></jsp:include>
                        <!-- END SIDEBAR -->

                        <!-- BEGIN CONTENT -->
                        <div class="col-md-9 col-sm-7">
                            <div class="product-page">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="product-main-image">
                                            <img src="${product.url}" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="${product.url}">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <h1>${product.productName}</h1>
                                    <div class="price-availability-block clearfix">
                                        <div class="price">
                                            <strong><fmt:formatNumber pattern="##.#" value="${product.salePrice}"/><span>??</span></strong>
                                            <em><span><fmt:formatNumber pattern="##.#" value="${product.originalPrice}"/></span>??</em>
                                        </div>                             
                                    </div>
                                    <div class="description">
                                        <p>${product.description}</p>
                                    </div>
                                    <div class="product-page-cart">                                    
                                        <button onclick="addTocartAsync(${product.productID})" class="btn btn-primary" type="submit">Add to cart</button>
                                    </div>
                                    <div class="review">
                                        <input type="range" value="4" step="0.25" id="backing4">
                                        <div class="rateit" data-rateit-backingfld="#backing4" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                                        </div>
                                        <a href="javascript:;">${listC.size()} reviews</a>
                                    </div>
                                    <ul class="social-icons">
                                        <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                                        <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                                        <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
                                        <li><a class="evernote" data-original-title="evernote" href="javascript:;"></a></li>
                                        <li><a class="tumblr" data-original-title="tumblr" href="javascript:;"></a></li>
                                    </ul>
                                </div>

                                <div class="product-page-content">
                                    <ul id="myTab" class="nav nav-tabs">
                                        <li><a href="#Description" data-toggle="tab">Description</a></li>

                                        <li class="active"><a href="#Reviews" data-toggle="tab">Reviews (${listC.size()})</a></li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div class="tab-pane fade" id="Description">
                                            <p>${product.description} </p>
                                        </div>

                                        <div class="tab-pane fade in active" id="Reviews">
                                            <!--<p>There are no reviews for this product.</p>-->
                                            <c:forEach items="${listC}" var="c">
                                                <div class="review-item clearfix">
                                                    <div class="review-item-submitted">
                                                        <strong>${c.name}</strong>
                                                        <em>${c.date}</em>
                                                        <div class="rateit" data-rateit-value="${c.star}" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                                                    </div>                                              
                                                    <div class="review-item-content">
                                                        <p>${c.feedback}</p>
                                                    </div>
                                                </div>
                                            </c:forEach>



                                            <!-- BEGIN FORM-->
                                            <form action="productdetail?pid=${product.productID}&sid=${product.subID}" method="post" class="reviews-form" role="form">
                                                <h2>Write a review</h2>
                                                <div class="form-group">
                                                    <label for="name">Name <span class="require">*</span></label>
                                                    <input name="name" type="text" class="form-control" id="name">
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email</label>
                                                    <input name="email" type="text" class="form-control" id="email">
                                                </div>
                                                <div class="form-group">
                                                    <label for="review">Review <span class="require">*</span></label>
                                                    <textarea name="review" class="form-control" rows="8" id="review"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Rating</label>
                                                    <input name="star" type="number" value="4" step="0.25" id="backing5">
                                                    <div class="rateit" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                                                    </div>
                                                </div>
                                                <div class="padding-top-20">                  
                                                    <button type="submit" class="btn btn-primary">Send</button>
                                                </div>

                                            </form>
                                            <!-- END FORM--> 
                                        </div>
                                    </div>
                                </div>

                                <div class="sticker sticker-sale"></div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTENT -->
                </div>
                <!-- END SIDEBAR & CONTENT -->

                <!-- BEGIN SIMILAR PRODUCTS -->
                <div class="row margin-bottom-40">
                    <div class="col-md-12 col-sm-12">
                        <h2 style="text-align: center">Most popular products</h2>
                        <div class="owl-carousel owl-carousel4">
                            <c:forEach items="${list}" var="o">    
                                <div class="d-flex justify-content-around">
                                    <div class="product-item">
                                        <div class="pi-img-wrapper">
                                            <img src="${o.url}" class="img-responsive" alt="Berry Lace Dress">
                                            <div>
                                                <a href="${product.url}" class="btn btn-default fancybox-button">Zoom</a>                                              
                                            </div>
                                        </div>
                                        <h3><a href="productdetail?pid=${o.productID}&sid=${o.subID}">${o.productName}</a></h3>
                                        <div class="pi-price">${o.originalPrice}</div>
                                        <div class="sticker sticker-new"></div>
                                    </div>     
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <!-- END SIMILAR PRODUCTS -->
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

        <!-- BEGIN STEPS -->
        <div class="steps-block steps-block-red">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-truck"></i>
                        <div>
                            <h2>Free shipping</h2>
                            <em>Express delivery withing 3 days</em>
                        </div>
                        <span>&nbsp;</span>
                    </div>
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-gift"></i>
                        <div>
                            <h2>Daily Gifts</h2>
                            <em>3 Gifts daily for lucky customers</em>
                        </div>
                        <span>&nbsp;</span>
                    </div>
                    <div class="col-md-4 steps-block-col">
                        <i class="fa fa-phone"></i>
                        <div>
                            <h2>477 505 8877</h2>
                            <em>24/7 customer care available</em>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END STEPS -->

        <!-- BEGIN PRE-FOOTER -->
        <div class="pre-footer">
            <div class="container">
                <div class="row">
                    <!-- BEGIN BOTTOM ABOUT BLOCK -->
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2>About us</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam sit nonummy nibh euismod tincidunt ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo consequat. </p>
                        <p>Duis autem vel eum iriure dolor vulputate velit esse molestie at dolore.</p>
                    </div>
                    <!-- END BOTTOM ABOUT BLOCK -->
                    <!-- BEGIN BOTTOM INFO BLOCK -->
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2>Information</h2>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Delivery Information</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Customer Service</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Order Tracking</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Shipping &amp; Returns</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="contacts.html">Contact Us</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Careers</a></li>
                            <li><i class="fa fa-angle-right"></i> <a href="javascript:;">Payment Methods</a></li>
                        </ul>
                    </div>
                    <!-- END INFO BLOCK -->

                    <!-- BEGIN TWITTER BLOCK --> 
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2 class="margin-bottom-0">Latest Tweets</h2>
                        <a class="twitter-timeline" href="https://twitter.com/twitterapi" data-tweet-limit="2" data-theme="dark" data-link-color="#57C8EB" data-widget-id="455411516829736961" data-chrome="noheader nofooter noscrollbar noborders transparent">Loading tweets by @keenthemes...</a>      
                    </div>
                    <!-- END TWITTER BLOCK -->

                    <!-- BEGIN BOTTOM CONTACTS -->
                    <div class="col-md-3 col-sm-6 pre-footer-col">
                        <h2>Our Contacts</h2>
                        <address class="margin-bottom-40">
                            35, Lorem Lis Street, Park Ave<br>
                            California, US<br>
                            Phone: 300 323 3456<br>
                            Fax: 300 323 1456<br>
                            Email: <a href="mailto:info@metronic.com">info@metronic.com</a><br>
                            Skype: <a href="skype:metronic">metronic</a>
                        </address>
                    </div>
                    <!-- END BOTTOM CONTACTS -->
                </div>
                <hr>
                <div class="row">
                    <!-- BEGIN SOCIAL ICONS -->
                    <div class="col-md-6 col-sm-6">
                        <ul class="social-icons">
                            <li><a class="rss" data-original-title="rss" href="javascript:;"></a></li>
                            <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                            <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                            <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
                            <li><a class="linkedin" data-original-title="linkedin" href="javascript:;"></a></li>
                            <li><a class="youtube" data-original-title="youtube" href="javascript:;"></a></li>
                            <li><a class="vimeo" data-original-title="vimeo" href="javascript:;"></a></li>
                            <li><a class="skype" data-original-title="skype" href="javascript:;"></a></li>
                        </ul>
                    </div>
                    <!-- END SOCIAL ICONS -->
                    <!-- BEGIN NEWLETTER -->
                    <div class="col-md-6 col-sm-6">
                        <div class="pre-footer-subscribe-box pull-right">
                            <h2>Newsletter</h2>
                            <form action="#">
                                <div class="input-group">
                                    <input type="text" placeholder="youremail@mail.com" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="submit">Subscribe</button>
                                    </span>
                                </div>
                            </form>
                        </div> 
                    </div>
                    <!-- END NEWLETTER -->
                </div>
            </div>
        </div>
        <!-- END PRE-FOOTER -->

        <!-- BEGIN FOOTER -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- BEGIN COPYRIGHT -->
                    <div class="col-md-4 col-sm-4 padding-top-10">
                        2015 ?? Keenthemes. ALL Rights Reserved. 
                    </div>
                    <!-- END COPYRIGHT -->
                    <!-- BEGIN PAYMENTS -->
                    <div class="col-md-4 col-sm-4">
                        <ul class="list-unstyled list-inline pull-right">
                            <li><img src="assets/corporate/img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
                            <li><img src="assets/corporate/img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
                            <li><img src="assets/corporate/img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
                            <li><img src="assets/corporate/img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
                            <li><img src="assets/corporate/img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
                        </ul>
                    </div>
                    <!-- END PAYMENTS -->
                    <!-- BEGIN POWERED -->
                    <div class="col-md-4 col-sm-4 text-right">
                        <p class="powered">Powered by: <a href="http://www.keenthemes.com/">KeenThemes.com</a></p>
                    </div>
                    <!-- END POWERED -->
                </div>
            </div>
        </div>
        <!-- END FOOTER -->

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
                        <h2>Cool green dress with red bell</h2>
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
                                <input id="product-quantity2" type="text" value="1" readonly class="form-control input-sm">
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

        <script src="assets/corporate/scripts/layout.js" type="text/javascript"></script>
        <script type="text/javascript">
                                            jQuery(document).ready(function () {
                                                Layout.init();
                                                Layout.initOWL();
                                                Layout.initTwitter();
                                                Layout.initImageZoom();
                                                Layout.initTouchspin();
                                                Layout.initUniform();
                                            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script>
                                                    function addTocartAsync(productId) {
                                                        axios.get('add-to-cart-async', {
                                                            params: {
                                                                productId: productId
                                                            }
                                                        }).then((response) => {
                                                            //lay data thanh cong
                                                            document.getElementById("cart_number").innerHTML = response.data + " items";
                                                            //cap nhat view
                                                        })
                                                    }
        </script>   
        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>