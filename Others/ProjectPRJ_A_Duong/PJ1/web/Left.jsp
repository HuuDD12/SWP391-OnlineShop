<%-- 
    Document   : left
    Created on : Feb 15, 2022, 11:08:48 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="left-sidebar">
    <h2>Category</h2>


    <div class="panel-group category-products" id="accordian">
        <div class="panel panel-default">
            <c:forEach items="${sessionScope.listC}" var="o">
                <div class="panel-heading active">
                    <h4 class="panel-title"><a href="category?cid=${o.id_cat}">${o.name_cat}</a></h4>
                </div>               
            </c:forEach>
        </div>
    </div>
    <!--/category-products-->

    <div class="brands_products">
        <h2>Lastest Product</h2>
        <div class="product-image-wrapper">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="${sessionScope.p.images}" alt="" />
                    <h2>$${sessionScope.p.price}</h2>
                    <a href="detail?pid=${sessionScope.p.id_pro}"><h3 style="color: red;font-weight: bold">${sessionScope.p.name_pro}</h3></a>

                </div>

            </div>

        </div>
    </div>

                
    <div class="price-range"><!--price-range-->
        <h2>Price Range</h2>
        <form method="post" action="search-price">
            <input type="text" name="min" value="" placeholder="Min Price" /> <br>
            - <br>
            <input type="text" name="max" value="" placeholder="Max Price" /> <br> <br>
        <input type="submit" data-inline="true" value="Search">
      </form>
    </div><!--/price-range-->

    <div class="shipping text-center"><!--shipping-->
        <img src="images/home/shipping.jpg" alt="" />
    </div><!--/shipping-->

</div>
