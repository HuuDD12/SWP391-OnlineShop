<%-- 
    Document   : Register
    Created on : May 26, 2022, 5:22:34 PM
    Author     : VAN ANH
--%>

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

        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">

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
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
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
        <div class="pre-header">
            <div class="container">
                <div class="row">
                    <!-- BEGIN TOP BAR LEFT PART -->
                    <div class="col-md-6 col-sm-6 additional-shop-info">
                        <ul class="list-unstyled list-inline">
                            <li><i class="fa fa-phone"></i><span>+1 456 6717</span></li>
                            <!-- BEGIN CURRENCIES -->
                            <li class="shop-currencies">
                                <a href="javascript:void(0);">???</a>
                                <a href="javascript:void(0);">??</a>
                                <a href="javascript:void(0);" class="current">$</a>
                            </li>
                            <!-- END CURRENCIES -->
                            <!-- BEGIN LANGS -->
                            <li class="langs-block">
                                <a href="javascript:void(0);" class="current">English </a>
                                <div class="langs-block-others-wrapper"><div class="langs-block-others">
                                        <a href="javascript:void(0);">Vietnamese</a>
                                        <a href="javascript:void(0);">?????????</a>
                                    </div></div>
                            </li>
                            <!-- END LANGS -->
                        </ul>
                    </div>
                    <!-- END TOP BAR LEFT PART -->
                    <!-- BEGIN TOP BAR MENU -->
                    <div class="col-md-6 col-sm-6 additional-nav">
                        <ul class="list-unstyled list-inline pull-right">
                             <li><a href="Register.jsp">Register</a></li>
                            <li><a href="LoginHere.jsp">Log In</a></li>
                        </ul>
                    </div>
                    <!-- END TOP BAR MENU -->
                </div>
            </div>        
        </div>
        <!-- END TOP BAR -->

        <!-- BEGIN HEADER -->
        <div class="header">
            <div class="container">
                <a class="site-logo" href="Homepage.jsp"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

                <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

                <!-- BEGIN CART -->
                <!--END CART -->

                <!-- BEGIN NAVIGATION -->

                <!-- END NAVIGATION -->
            </div>
        </div>
        <!-- Header END -->

        <div class="main">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="Homepage.jsp">Home</a></li>

                </ul>
                <!-- BEGIN SIDEBAR & CONTENT -->
                <div class="row margin-bottom-40">
                    <!-- BEGIN SIDEBAR -->
                    
                    <!-- END SIDEBAR -->

                    <!-- BEGIN CONTENT -->
                    <div class="col-md-9 col-sm-7">
                        
                            <h1>Register</h1>
                            <form action="register" method="post">
                                <h3 class="text-danger">${message}</h3>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Your Name</label>
                                    <input name="username" type="name" class="form-control" id="exampleInputPassword1" placeholder="Your Name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Repeat your Password</label>
                                    <input name="repass" type="password" class="form-control" id="exampleInputPassword1" placeholder="Repeat your Password">
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">I agree all statements in Terms of service</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                                <h3 class="text-danger">${success}</h3>
                            </form>
                        
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