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
        <a class="site-logo" href="productlist"><img src="assets/corporate/img/logos/Logo1.png" alt="Online Shop" style="width: 70px;"></a>

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
            <a href="carts"><i class="fa fa-shopping-cart"></i></a>         
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
                        <c:forEach items="${sessionScope.listB}" var="b">
                            <li><a href="brand?page=${b.brandId}">${b.brandName}</a></li>
                            </c:forEach>
                    </ul>

                    <!-- END DROPDOWN MENU -->
                </li>

                <li>
                    <a data-target="#" href="productlist">Product</a>
                </li>
                <li><a href="bloglist">Blog</a></li>
                <li class="dropdown active">
                    <c:if test ="${sessionScope.acc !=  null}">
                        <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                            Hello ${sessionScope.acc.getUsername()}

                        </a>

                        <ul class="dropdown-menu">

                            <!-- Default -->

                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/ManagerAccountInfo?cid=${sessionScope.acc.getUserId()}">View profile</a></li>  
                            <!-- Admin -->
                            <c:if test="${sessionScope.acc.getRoleId() ==  1}">                               
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
                <li><a href="AboutShope.jsp">About Shop</a></li>
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