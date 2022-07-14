<%-- 
    Document   : AddBrand
    Created on : Jul 13, 2022, 3:12:49 PM
    Author     : VAN ANH
--%>
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
                <div class="card" style="padding: 25px">
                    <div class="card-body">
                        <form action="AddBrandControl" method="post">
                            <div class="">						
                                <h4 class="modal-title">Add Brand Name</h4>                              
                            </div>
                            <div class="" style="float: left">
                                <div class="input-group">
                                    <input required  type="text" name="brandName" class="form-control" aria-describedby="basic-addon2">
                                    <span class="input-group-addon" id="basic-addon2"></span>
                                </div>
                            </div>
                            <div class="" style="margin-top: 50px">
                                <input type="reset" class="btn btn" value="Clear">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                            <a class="btn btn-danger" href="brand" role="button" style=";float: left;margin:10px;">Back </a>
                            </form>
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

