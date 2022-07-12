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
                    <form action="EditcbannerControl" method="post" enctype="multipart/form-data">
                        <div class="card" style="padding: 25px">
                            <div class="card-body">
                                <div class="card" style="padding: 25px">
                                    <div class="text-center" style="padding:20px">  
                                        <div class="row">
                                            <input hidden name="id" value="${Banner.cbannerId}">
                                            <input hidden name="imageu" value="${Banner.cbannerImg}">

                                            <div class="col-md-4">
                                                <img src="${Banner.cbannerImg}"  alt="" id="image" width="421" height="155" >                                                
                                                <h6>Upload a  photo...</h6>                                               
                                                <input type="file" class="text-center center-block file-upload" style="margin: 10px" name="image" id="imageFile" onchange="choosefile(this)"
                                                       accept="image/gif, image/jpeg, image/png">
                                            </div>
                                            <div class="col-md-4">

                                                <label for="title"><h4>Title Sale</h4></label>
                                                <textarea class="form-control" name="title"  placeholder="title" title="enter title" aria-label="With textarea">${Banner.cbannerTitle}</textarea>
                                            </div>
                                            <div class="col-md-4">
                                                <label for="desc"><h4>Title Sale</h4></label>
                                                <textarea class="form-control" name="desc"  placeholder="desc" title="enter Desc" aria-label="With textarea">${Banner.cbannerdesc}</textarea>
                                            </div>
                                        </div>
                                    </div><br>
                                </div>
                            </div>
                        </div>
                        <div>
                            <a class="btn btn-primary px-3" href="cbannercontrol" role="button" style="margin:50px;">Back </a>
                            <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                            <button class="btn btn-lg btn-primary" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <div class="overlay "></div>


        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js "></script>
        <script>
            function choosefile(fileinput) {
                if(fileinput.files && fileinput.files[0]){
                    var reader = new FileReader();
                    reader.onload = function (e){
                        $('#image').attr('src',e.target.result);
                    }
                    reader.readAsDataURL(fileinput.files[0]);
                }
            }

        </script>
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

