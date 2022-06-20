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
                <form action="EditUserControl" method="post" enctype="multipart/form-data" >
                    <div class="container bootstrap snippet">                   
                        <div class="row gutters-sm">
                            <div class="col-sm-3"><!--left col-->

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
                                </div></hr><br>
                            </div>

                        </div><!--/col-3-->
                        <div class="col-sm-9">    
                            <div class="card mb-3" style="padding: 25px">
                                <div class="tab-content">
                                    <div class="active" id="home"> 
                                        <input value="${info.uid}" name="uid" hidden>
                                        <div class="form-group">
                                            <div class="col-xs-6">
                                                <label for="first_name"><h4>First name</h4></label>
                                                <input type="text" value="${info.firstName}" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="last_name"><h4>Last name</h4></label>
                                                <input type="text" value="${info.lastName}" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="phone"><h4>Phone</h4></label>
                                                <input type="text" value="${info.phonenum}" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="email"><h4>Email</h4></label>
                                                <input type="email" value="${info.email}" class="form-control" name="email" id="email" placeholder="you@email.com" title="enter your email.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="location"><h4>Location</h4></label>
                                                <input type="text" value="${info.address}" class="form-control" name="location" id="location" placeholder="somewhere" title="enter a location">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="gender"><h4>Gender</h4></label>
                                                <select class="btn btn-outline-primary" name="gender" >                                                                                                                                                    
                                                    <option value="0" ${info.gender == 0?"selected":""} >Secret</option>                                                                                                                                              
                                                    <option value="1" ${info.gender == 1?"selected":""} >Male</option>                                                                                                                                              
                                                    <option value="2" ${info.gender == 2?"selected":""} >Female</option>                                                                                                                                              
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="birthday"><h4>Birthday</h4></label>
                                                <input type="date" class="btn btn-outline-primary" value="${info.birthday}"class="form-control" name="birthday" id="gender" placeholder="gender" title="enter your gender.">
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
