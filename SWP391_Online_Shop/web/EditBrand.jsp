<%-- 
    Document   : EditBrand
    Created on : Jul 13, 2022, 3:06:49 PM
    Author     : VAN ANH
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <style>
            body{
                background: white;
                margin-top:20px;
            }
            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0 solid transparent;
                border-radius: .25rem;
                margin-bottom: 1.5rem;
                box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
            }
            .me-2 {
                margin-right: .5rem!important;
            }


            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
        </style>
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
                <form action="EditBrandd" enctype="multipart/form-data" >
                    <div class="container bootstrap snippet">                   
                        <div class="row gutters-sm">

                            <div class="col-sm-8">    
                                <div class="card mb-3" style="padding: 10px">
                                    <div class="tab-content">
                                        <div class="active" id="home"> 
                                            <input value="${brand.brandId}" name="cid" hidden>
                                            <div class="form-group">
                                                <div class="col-xs-6">
                                                    <label for="brandName"><h4>Brand Name</h4></label>
                                                    <input value="${brand.brandName}" type="text" class="form-control" name="brandName" id="first_name" placeholder="catename" title="enter your first name if any.">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <br>
                                                    <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                                    <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                                                </div>
                                            </div>
                                            <hr>
                                        </div><!--/tab-pane-->
                                    </div><!--/tab-pane-->
                                </div>
                            </div><!--/tab-content-->

                        </div><!--/col-9-->
                    </div><!--/row-->
                    <a class="btn btn-primary px-3" href="brand" role="button" style="margin:10px;">Back </a>

                </form>
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

