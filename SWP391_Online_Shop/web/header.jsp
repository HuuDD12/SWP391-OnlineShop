<%@page import="Model.Notification"%>
<%@page import="java.util.List"%>
<%@page import="DAO.NotificationDAO"%>
<%@page import="Model.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
-<%
    Account user = (Account) session.getAttribute("acc");
    if (user != null) {
        NotificationDAO ndao = new NotificationDAO();
        int unreadnoti = 0;
        List<Notification> notifications = ndao.getAllNotification(Integer.parseInt(user.getUserId()));
        for (Notification notification : notifications) {
            if (notification.getStatus() == 0) {
                unreadnoti++;
            }
        }
        pageContext.setAttribute("notifications", notifications);
        pageContext.setAttribute("unreadnoti", unreadnoti);
    }
%>
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
                                <a href="javascript:void(0);">French</a>
                                <a href="javascript:void(0);">Germany</a>
                                <a href="javascript:void(0);">Turkish</a>
                            </div></div>
                    </li>
                    <!-- END LANGS -->
                </ul>
            </div>
            <!-- END TOP BAR LEFT PART -->
            <!-- BEGIN TOP BAR MENU -->
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                    <c:if test="${sessionScope.acc == null}">
                        <li><a href="LoginHere.jsp"><i class="fa fa-lock"></i>Login</a></li>
                        </c:if>
                        <c:if test="${sessionScope.acc != null}">
                        <li class="nav-item d-block d-lg-none">
                            <a class="nav-link d-inline-block" href="notification?nid=${sessionScope.acc.userId}" role="button" data-bs-toggle="offcanvas" data-bs-target="#notification" aria-controls="offcanvasRight"><i class="fa fa-bell"></i>

                                <span class="position-relative translate-middle badge rounded-pill bg-danger">
                                    ${unreadnoti}
                                </span> 
                            </a>                           
                    </li>
                        </c:if>
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
        <a class="site-logo" href="productlist"><img src="assets/corporate/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

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
                    <ul class="scroller" style="height: 250px;">
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                        <li>
                            <a href="shop-item.html"><img src="assets/pages/img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                            <span class="cart-content-count">x 1</span>
                            <strong><a href="shop-item.html">Rolex Classic Watch</a></strong>
                            <em>$1230</em>
                            <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                        </li>
                    </ul>
                    <div class="text-right">
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


                    <ul class="dropdown-menu" role="menu">
                        <<c:forEach items="${sessionScope.listB}" var="b">
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
                <li><a href="bloglist">Blog</a></li>
                <li class="dropdown active">
                    <c:if test ="${sessionScope.acc !=  null}">
                        <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                            Hello ${sessionScope.acc.getUsername()}

                        </a>

                        <ul class="dropdown-menu">

                            <!-- Default -->

                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/ProfileControl">View profile</a></li>  
                            <!-- Admin -->
                            <c:if test="${sessionScope.acc.getRoleId() ==  1}">
                                <li><a  href="${pageContext.request.contextPath}/userlist">Manage Users</a></li>
                                <li><a href="dashboard">DashBoard</a></li>
                                </c:if>
                            <!-- Seller -->
                            <c:if test="${sessionScope.acc.getRoleId() ==  2}">
                                <li><a  href="${pageContext.request.contextPath}/Dashboard">DashBoard</a></li>
                                </c:if>
                                <c:if test="${sessionScope.acc.getRoleId() ==  3}">
                                <li><a href="${pageContext.request.contextPath}/sendfeedback">FeedBack</a></li>
                                </c:if>
                            <!-- Marketing -->
                            <c:if test="${sessionScope.acc.getRoleId() ==  4}">
                                <li><a  href="${pageContext.request.contextPath}/mkt/dashboard">Dashboard</a></li>
                                </c:if>
                                <c:if test="${sessionScope.acc.getRoleId() ==  5}">
                                <li><a  href="${pageContext.request.contextPath}/DeliveryDashboard">Delivery Dashboard</a></li>
                                </c:if>
                            <!-- Default Logout -->

                            <li><a  href="${pageContext.request.contextPath}/ChangePasswordControl?sid=${sessionScope.acc.getUsername()}">Change PassWord</a></li>
                            <li><a  href="${pageContext.request.contextPath}/logout">Logout</a></li>

                            <!-- Neu khong co user -->
                        </ul>
                    </c:if>
                </li>
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