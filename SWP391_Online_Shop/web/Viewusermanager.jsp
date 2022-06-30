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
        <title>View Customer</title>
    </head>
    <body>

        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div id="dismiss">
                    <i class="bi bi-arrow-left"></i>
                </div>

                <div class="sidebar-header">

                    <h3>Shope</h3>
                </div>

                <ul class="list-unstyled components">
                    <p>Dummy Heading</p>
                    <li>
                        <a href="dashboard">Home
                            <i class="bi bi-house float-end"></i>
                        </a>

                    </li>
                    <li>
                        <a href="ManagerOrder">Manager Order <i class="bi bi-cart-check float-end"></i></i></a>
                    </li>
                    <li>
                        <a href="ManagerProduct">Manager Product <i class="bi bi-bag-fill float-end"></i></a>
                    </li>
                    <li>
                        <a href="ManagerBlog">Manager Blog <i class="bi bi-bootstrap float-end"></i></a>
                    </li>
                    <li>
                        <a href="ManagerAccount">Manager Account<i class="bi bi-person float-end"></i></a>
                    </li>
                </ul>

                <ul class="list-unstyled CTAs">
                    <li><a href="home" class="download">Logout</a></li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                                <span>Open Sidebar</span>
                            </button>
                        </div>
                    </div>
                </nav>


                <div class="row gutters-sm">
                    <div class="col-md-4">
                        <div class="card" style="padding: 25px">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <c:if test="${info.uidImg == '' }">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle" width="150">
                                    </c:if>
                                    <c:if test="${info.uidImg == null }">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle" width="150">
                                    </c:if>
                                    <c:if test="${info.uidImg != null}">
                                        <img src="${info.uidImg}"  class="rounded-circle" width="150">
                                    </c:if>                                      
                                    <div class="mt-3" style="padding: 10px">
                                        <h4>${info.firstName}</h4>                                            
                                        <p class="text-muted font-size-sm">${info.address}</p>                                      
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-8">
                        <div class="card mb-3" style="padding: 25px">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${info.firstName} ${info.lastName}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${info.email}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <c:if test="${info.gender == 1}">Male</c:if>
                                        <c:if test="${info.gender == 2}">Female</c:if>
                                        <c:if test="${info.gender == 0}">Secret</c:if>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h6 class="mb-0">Birthday</h6>
                                        </div>
                                        <div class="col-sm-9 text-secondary">
                                        ${info.birthday}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${info.phonenum}
                                    </div>
                                </div>
                                <hr>

                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Address</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${info.address}
                                    </div>
                                </div>
                                <hr>


                            </div>
                        </div>

                        <a class="btn btn-primary px-3" href="dashboard" role="button" style="margin:50px;">Back </a>

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
