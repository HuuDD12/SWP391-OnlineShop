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
                <div class="container">
                    <div class="main-body">

                        <!-- Breadcrumb -->
                        <nav aria-label="breadcrumb" class="main-breadcrumb">
                            <ol class="breadcrumb">                           
                                <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                            </ol>
                        </nav>
                        <!-- /Breadcrumb -->

                        <div class="row gutters-sm">
                            <div class="col-md-4">
                                <div class="card" style="padding: 25px">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                        <c:if test="${info.uidImg == null}">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                        </c:if>
                                        <c:if test="${info.uidImg != null}">
                                            <img src="${info.uidImg}" alt="Admin" class="rounded-circle" width="150">
                                        </c:if>                                      
                                        <div class="mt-3" style="padding: 10px">
                                            <h4>${info.firstName} ${info.lastName}</h4>                                            
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
                                            <c:if test="${info.gender == 1}">male</c:if>
                                            <c:if test="${info.gender == 2}">Female</c:if>
                                            <c:if test="${info.gender == 0}">secret</c:if>
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
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <button class="btn btn-primary px-4">
                                                <a style="text-decoration: none;color: #fff " href="EditUserControl?sid=${info.uid}">Edit</a>
                                            </button>
                                        </div>                                      
                                    </div>

                                </div>
                            </div>



                        </div>
                    </div>



                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
