<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar col-md-3 col-sm-5">
    <ul class="list-group margin-bottom-25 sidebar-menu">
        <c:forEach items="${sessionScope.listC}" var="c">
            <li class="list-group-item clearfix dropdown active">
                <a href="javascript:void(0);" class="collapsed">
                    <i class="fa fa-angle-right"></i>
                    ${c.cate_name}

                </a>
                <ul class="dropdown-menu" style="display:block;">
                    <c:forEach items="${sessionScope.listS}" var="s">
                        <c:if test="${c.cate_id == s.cate_id}">
                            <li class="list-group-item dropdown clearfix active">
                                <a href="subcategory?sid=${s.subcate_id}" style="color: #000" class="collapsed">${s.subcate_name} </a>                                
                            </li>
                        </c:if>
                    </c:forEach>

                </ul>
            </li>
        </c:forEach>


    </ul>

    <div class="sidebar-filter margin-bottom-25">
        <h2>Filter</h2>
        <form action="searchbyprice">
            <h3>Price</h3>
            <div id="slider-range" class="price-filter-range" name="rangeInput"></div></br>
            <label for="amount">Range:</label><br>
            <input name="min" type="number" min=0 max="5000000" oninput="validity.valid||(value='0');" id="min_price" class="price-range-field" />                         
            <input name="max" type="number" min=1 max="10000000" oninput="validity.valid||(value='10000000');" id="max_price" class="price-range-field" /></br></br>
            <button class="price-range-search" id="price-range-submit">Search</button></br>
        </form>

    </div>

    <div class="sidebar-products clearfix">
        <h2>Bestsellers</h2>
        <c:forEach items="${sessionScope.listTop3}" var="listTop3">
            <div class="item">
                <a href="productdetail?pid=${listTop3.productID}&sid=${listTop3.subID}"><img src="${listTop3.url}" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="productdetail?pid=${listTop3.productID}&sid=${listTop3.subID}">${listTop3.productName}</a></h3>
                <div class="price"><fmt:formatNumber pattern="##.#" value="${listTop3.originalPrice}"/></div>
            </div>
        </c:forEach>

    </div>
</div>