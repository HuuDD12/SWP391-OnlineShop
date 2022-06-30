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

            <jsp:include page="OpenbarMKT.jsp"></jsp:include>

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
                    <div class="col-md-12">
                        <div class="card" style="padding: 25px">
                            <div class="card-body">
                                <div class="card" style="padding: 25px">
                                    <div class="text-center" style="padding:20px">
                                        <img src="#" >
                                    <c:if test="${info.uidImg == '' }">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle  img-circle img-thumbnail"  width="150">
                                    </c:if>
                                    <c:if test="${info.uidImg != null}">
                                        <img src="${info.uidImg}" class="rounded-circle img-circle img-thumbnail" width="150" >
                                        <input hidden name="imageu" value="${info.uidImg}">
                                    </c:if>
                                    <h6>Upload a different photo...</h6>
                                    <input type="file" class="text-center center-block file-upload" style="margin: 10px" name="image">
                                </div><br>
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

