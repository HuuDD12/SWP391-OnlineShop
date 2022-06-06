<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <a href="javascript:void(0);">?</a>
                        <a href="javascript:void(0);">£</a>
                        <a href="javascript:void(0);" class="current">$</a>
                    </li>
                    <!-- END CURRENCIES -->
                    <!-- BEGIN LANGS -->
                    <li class="langs-block">
                        <a href="javascript:void(0);" class="current">English </a>
                        <div class="langs-block-others-wrapper"><div class="langs-block-others">
                                <a href="javascript:void(0);">Vietnamese</a>
                            </div></div>
                    </li>
                    <!-- END LANGS -->
                </ul>
            </div>
            <!-- END TOP BAR LEFT PART -->
            <!-- BEGIN TOP BAR MENU -->
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                    <li><a href="MyAccountPage.jsp">My Account</a></li>
                    <li><a href="shop-wishlist.html">My Wishlist</a></li>
                    <li><a href="shop-checkout.html">Checkout</a></li>
                    <li><a href="Homepage.jsp">Log OUT</a></li>
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
        <a class="site-logo" href="shop-index.html"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
        <div class="top-cart-block">
            <div class="top-cart-info">
                <c:choose>
                    <c:when test="${sessionScope.carts.size() == null}">
                        <a href="javascript:void(0);" class="top-cart-info-count">0 items</a>
                    </c:when>
                    <c:otherwise>
                        <a id="cart_number" href="javascript:void(0);" class="top-cart-info-count">${sessionScope.carts.size()} items</a>
                    </c:otherwise> 

                </c:choose>




            </div>
            <i class="fa fa-shopping-cart"></i>

            <div class="top-cart-content-wrapper">
                <div class="top-cart-content">
                    <div class="text-center">
                        <a href="carts" class="btn btn-default">View Cart</a>
                        <a href="checkout" class="btn btn-primary">Checkout</a>
                    </div>
                </div>
            </div>            
        </div>
        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
            <ul>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Brand 
                    </a>

                    <!-- BEGIN DROPDOWN MENU -->
                    <ul class="dropdown-menu">
                        <c:forEach items="${listB}" var="b">
                            <li><a href="brand?bid=${b.brandId}">${b.brandName}</a></li>
                        </c:forEach>
                    </ul>
                    <!-- END DROPDOWN MENU -->
                </li>
                <li class="dropdown dropdown-megamenu">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Man

                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="header-navigation-content">
                                <div class="row">
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>Footwear</h4>
                                        <ul>
                                            <li><a href="shop-product-list.html">Astro Trainers</a></li>
                                            <li><a href="shop-product-list.html">Basketball Shoes</a></li>
                                            <li><a href="shop-product-list.html">Boots</a></li>
                                            <li><a href="shop-product-list.html">Canvas Shoes</a></li>
                                            <li><a href="shop-product-list.html">Football Boots</a></li>
                                            <li><a href="shop-product-list.html">Golf Shoes</a></li>
                                            <li><a href="shop-product-list.html">Hi Tops</a></li>
                                            <li><a href="shop-product-list.html">Indoor and Court Trainers</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>Clothing</h4>
                                        <ul>
                                            <li><a href="shop-product-list.html">Base Layer</a></li>
                                            <li><a href="shop-product-list.html">Character</a></li>
                                            <li><a href="shop-product-list.html">Chinos</a></li>
                                            <li><a href="shop-product-list.html">Combats</a></li>
                                            <li><a href="shop-product-list.html">Cricket Clothing</a></li>
                                            <li><a href="shop-product-list.html">Fleeces</a></li>
                                            <li><a href="shop-product-list.html">Gilets</a></li>
                                            <li><a href="shop-product-list.html">Golf Tops</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>Accessories</h4>
                                        <ul>
                                            <li><a href="shop-product-list.html">Belts</a></li>
                                            <li><a href="shop-product-list.html">Caps</a></li>
                                            <li><a href="shop-product-list.html">Gloves, Hats and Scarves</a></li>
                                        </ul>

                                        <h4>Clearance</h4>
                                        <ul>
                                            <li><a href="shop-product-list.html">Jackets</a></li>
                                            <li><a href="shop-product-list.html">Bottoms</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-12 nav-brands">
                                        <ul>
                                            <li><a href="shop-product-list.html"><img title="esprit" alt="esprit" src="assets/pages/img/brands/esprit.jpg"></a></li>
                                            <li><a href="shop-product-list.html"><img title="gap" alt="gap" src="assets/pages/img/brands/gap.jpg"></a></li>
                                            <li><a href="shop-product-list.html"><img title="next" alt="next" src="assets/pages/img/brands/next.jpg"></a></li>
                                            <li><a href="shop-product-list.html"><img title="puma" alt="puma" src="assets/pages/img/brands/puma.jpg"></a></li>
                                            <li><a href="shop-product-list.html"><img title="zara" alt="zara" src="assets/pages/img/brands/zara.jpg"></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li><a href="shop-item.html">Kids</a></li>
                <li class="dropdown dropdown100 nav-catalogue">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        New

                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="header-navigation-content">
                                <div class="row">
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="assets/pages/img/products/model3.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="assets/pages/img/products/model7.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <div class="product-item">
                                            <div class="pi-img-wrapper">
                                                <a href="shop-item.html"><img src="assets/pages/img/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress"></a>
                                            </div>
                                            <h3><a href="shop-item.html">Berry Lace Dress</a></h3>
                                            <div class="pi-price">$29.00</div>
                                            <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Pages 

                    </a>

                    <ul class="dropdown-menu">
                        <li><a href="shop-index.html">Home Default</a></li>
                        <li><a href="shop-index-header-fix.html">Home Header Fixed</a></li>
                        <li><a href="shop-index-light-footer.html">Home Light Footer</a></li>
                        <li class="active"><a href="shop-product-list.html">Product List</a></li>
                        <li><a href="shop-search-result.html">Search Result</a></li>
                        <li><a href="shop-item.html">Product Page</a></li>
                        <li><a href="shop-shopping-cart-null.html">Shopping Cart (Null Cart)</a></li>
                        <li><a href="shop-shopping-cart.html">Shopping Cart</a></li>
                        <li><a href="shop-checkout.html">Checkout</a></li>
                        <li><a href="shop-about.html">About</a></li>
                        <li><a href="shop-contacts.html">Contacts</a></li>
                        <li><a href="shop-account.html">My account</a></li>
                        <li><a href="shop-wishlist.html">My Wish List</a></li>
                        <li><a href="shop-goods-compare.html">Product Comparison</a></li>
                        <li><a href="shop-standart-forms.html">Standart Forms</a></li>
                        <li><a href="shop-faq.html">FAQ</a></li>
                        <li><a href="shop-privacy-policy.html">Privacy Policy</a></li>
                        <li><a href="shop-terms-conditions-page.html">Terms &amp; Conditions</a></li>
                    </ul>
                </li>


                <li><a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes&amp;utm_source=download&amp;utm_medium=banner&amp;utm_campaign=metronic_frontend_freebie" target="_blank">Admin theme</a></li>

                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>
                    <div class="search-box">
                        <form action="searchbyname" method="post">
                            <div class="input-group">
                                <input oninput="searchByName(this)" name="txt" value="${txtSearch}" type="text" placeholder="Search" class="form-control">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="submit">Search</button>
                                </span>
                            </div>
                        </form>
                    </div> 
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>
<!-- Header END -->