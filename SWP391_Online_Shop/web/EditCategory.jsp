<%-- 
    Document   : Profile
    Created on : Jun 16, 2022, 4:24:24 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <style href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" > </style>


        <link rel="shortcut icon" href="favicon.ico">

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END --> 

        <!-- Page level plugin styles START -->
        <link href="assets/pages/css/animate.css" rel="stylesheet">
        <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
        <!-- Page level plugin styles END -->

        <!-- Theme styles START -->
        <link href="assets/pages/css/components.css" rel="stylesheet">
        <link href="assets/pages/css/slider.css" rel="stylesheet">
        <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
        <link href="assets/corporate/css/style.css" rel="stylesheet">
        <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
        <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
        <link href="assets/corporate/css/custom.css" rel="stylesheet">
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
        <jsp:include page="header.jsp"></jsp:include>
            <div class="main">
                <form action="editcategory" method="post" enctype="multipart/form-data" >
                    <div class="container bootstrap snippet">                   
                        <div class="row gutters-sm">

                            <div class="col-sm-9">    
                                <div class="card mb-3" style="padding: 25px">
                                    <div class="tab-content">
                                        <div class="active" id="home"> 
                                            <input value="${cate.cate_id}" name="uid" hidden>
                                        <div class="form-group">
                                            <div class="col-xs-6">
                                                <label for="catename"><h4>Category Name</h4></label>
                                                <input value="${cate.cate_name}" type="text" class="form-control" name="catename" id="first_name" placeholder="catename" title="enter your first name if any.">
                                            </div>
                                        </div>

                                        <div class="col-xs-6">
                                            <label for="Subcategory"><h4>Subcategory Name</h4></label>
                                            <c:forEach items="${list}" var="sub">
                                                <table>
                                                    <tr>
                                                        <input value="${sub.subcate_id}" name="subid" hidden>
                                                        <td><input value="${sub.subcate_name}" type="text" class="form-control" name="" id="first_name" placeholder="subName" ></td>
                                                    </tr>
                                                </table>
                                            </c:forEach>
                                            <table>
                                            <tr>
                                                <td><input type="text" class="form-control" name="subName" id="first_name" placeholder="subName" ></td>
                                                <td><a class="btn btn-sm btn-primary" href="addSubcategory">Add</a></td>
                                            </tr>
                                            </table>
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
            </form>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script type="text/javascript">
        $(document).ready(function () {


            var readURL = function (input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('.avatar').attr('src', e.target.result);
                    };

                    reader.readAsDataURL(input.files[0]);
                }
            };


            $(".file-upload").on('change', function () {
                readURL(this);
            });
        });
    </script>
</html>
