<%-- 
    Document   : home
    Created on : Feb 14, 2022, 11:01:52 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Home | E-Shopper</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="css/style3.css" rel="stylesheet">

        <!-- Main Style CSS -->

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>

            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                        <jsp:include page="Left.jsp"></jsp:include>
                        </div>

                        <div class="col-sm-9 padding-right">
                            <div class="features_items"><!--features_items-->
                                <h2 class="title text-center">Features Items</h2> 
                            <c:forEach items="${listP}" var="p">
                                <c:if test="${p.quantity>0}">
                                    <div class="product col-12 col-md-6 col-lg-4">
                                        <div class="product-image-wrapper">   
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${p.images}" style="height: 200px" class="img-responsive" />
                                                    <h2>$${p.price}</h2>
                                                    <p style="margin: 10px 0px">${p.name_pro}</p>
                                                    <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </div>
                                                <div class="product-overlay">
                                                    <div class="overlay-content">
                                                        <h2>$${p.price}</h2>
                                                        <p style="margin: 10px 0px">${p.name_pro}</p>
                                                        <a href="add-to-cart?pid=${p.id_pro}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="choose">
                                                <ul class="nav nav-pills nav-justified">
                                                    <li><a href="detail?pid=${p.id_pro}&cid=${p.id_cat}"><i class="fa fa-plus-square"></i>View Detail</a></li>

                                                </ul>
                                            </div>                         

                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${p.quantity==0}">
                                    <div class="product col-12 col-md-6 col-lg-4">
                                        <div class="product-image-wrapper">   
                                            <div class="single-products">
                                                <div class="productinfo text-center">
                                                    <img src="${p.images}" style="height: 200px" class="img-responsive" />
                                                    <h2>$${p.price}</h2>
                                                    <p style="margin: 10px 0px">${p.name_pro}</p>
                                                    <button style="margin-bottom: 24px;" type="button" class="btn btn-danger">Out of stock</button>
                                                </div>                                       
                                            </div>

                                            <div class="choose">
                                                <ul class="nav nav-pills nav-justified">
                                                    <li><a href="detail?pid=${p.id_pro}"><i class="fa fa-plus-square"></i>View Detail</a></li>

                                                </ul>
                                            </div>                         

                                        </div>
                                    </div>

                                </c:if>
                            </c:forEach>



                        </div><!--features_items-->

                        <c:choose>
                            <c:when test="${listP==null||listP.size()==0}">
                                <div style="text-align: center;font-size: 30px">Search No Result<br>
                                    We're sorry. We cannot find any matches for your search term.
                                </div>
                            </c:when>
                            <c:otherwise>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <c:if test="${page>1}">
                                            <li class="page-item"><a class="page-link" href="home?page=${page-1}">Previous</a></li>
                                            </c:if>

                                        <c:forEach begin="1" end="${endPage}" var="i">
                                            <li class="page-item ${i==page?"active":""}"><a class="page-link" href="home?page=${i}">${i}</a></li>
                                            </c:forEach>
<!--                                        <div class="pagination">
                                            <c:forEach var="i" begin="1" end="${endPagePrice}">
                                                <a class="  ${i == pTidPrice ? "active":""}"  href="search?PTidSearch=${i}&txt=${txtS}" >${i}</a>    
                                            </c:forEach>
                                        </div>-->
                                        <c:if test="${page<endPage}">
                                            <li class="page-item"><a class="page-link" href="home?page=${page+1}">Next</a></li>
                                            </c:if>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>




                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="Footer.jsp"></jsp:include>



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
