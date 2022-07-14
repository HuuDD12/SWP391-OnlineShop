<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : OrderDetail
    Created on : 02-11-2021, 21:15:15
    Author     : BEAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="css/dataTables.bootstrap5.min.css" />
        <link rel="stylesheet" href="css/dashboard.css" />
        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
        <title>Order Details</title>
    </head>
    <body>

        <div class="wrapper">
            <!-- Sidebar Holder -->         
            <!-- Page Content Holder -->
            <div id="content">


                <div class="container-fluid">
                    <div class="row ">
                        <div class="col-md-12 mb-3 ">
                            <div class="card">
                                <div class="card-header bg-primary ">
                                    <p class="text-white p-0 m-0"><i class="bi bi-cart4"></i> Order Details</p>
                                </div>
                            </div>


                            <div class="col-md-11 mb-3 p-3 bg-white" style="margin: auto;">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Product Name</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Product IMG</th>
                                            <th scope="col">Product Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="order">
                                            <tr>
                                                <th scope="row">${order.orderId}</th>
                                                <td>${order.p.productName}</td>
                                                <td>${order.quantity}</td>
                                                <td><img style="height: 70px;" class="img-responsive" src="${order.p.url}"></td>
                                                <td>${order.productPrice}</td>
                                            </tr>
                                        </c:forEach> 
                                    </tbody>
                                </table>
                            </div>

                            <c:if test="${sessionScope.acc.getRoleId() == 1 || sessionScope.acc.getRoleId() == 2}">
                                <a class="btn btn-primary px-3" href="dashboard" role="button" style="margin:50px;">Back </a>
                            </c:if>
                            <c:if test="${sessionScope.acc.getRoleId() == 3}">
                                <a class="btn btn-primary px-3" href="orderinfo" role="button" style="margin:50px;">Back </a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="overlay "></div>


    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-1.12.0.min.js "></script>
    <!-- Bootstrap Js CDN -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js "></script>
    <!-- jQuery Custom Scroller CDN -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js "></script>

    <script type="text/javascript ">
        $(document).ready(function() {
        $("#sidebar ").mCustomScrollbar({
        theme: "minimal "
        });

        $('#dismiss, .overlay').on('click', function() {
        $('#sidebar').removeClass('active');
        $('.overlay').fadeOut();
        });

        $('#sidebarCollapse').on('click', function() {
        $('#sidebar').addClass('active');
        $('.overlay').fadeIn();
        $('.collapse.in').toggleClass('in');
        $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
        });
    </script>
</body>
</html>
