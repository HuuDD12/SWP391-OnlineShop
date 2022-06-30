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
                <form action="addproduct" method="post" enctype="multipart/form-data" >
                    <div class="container bootstrap snippet">                   
                        <div class="row gutters-sm">
                            <div class="col-sm-3"><!--left col-->

                                <div class="card" style="padding: 25px">
                                    <div class="text-center" style="padding:20px">
                                        <img src="#" >
                                    <c:if test="${pro.url == '' }">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle  img-circle img-thumbnail"  width="150">
                                    </c:if>
                                    <c:if test="${pro.url != null}">
                                        <img src="${pro.url}" class="rounded-circle img-circle img-thumbnail" width="150" >
                                        <input hidden name="imageu" value="${pro.url}">
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
                                        <input value="${pro.productID}" name="uid" hidden>
                                        <div class="form-group">
                                            <div class="col-xs-6">
                                                <label for="Product_name"><h4>Product name</h4></label>
                                                <input type="text" value="${pro.productName}" class="form-control" name="Product_name" id="first_name" placeholder="Product_name" title="enter your first name if any.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="Description"><h4>Description</h4></label>
                                                <input type="text" value="${pro.description}" class="form-control" name="Description" id="last_name" placeholder="Description" title="enter your last name if any.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="Original_Price"><h4>Original Price</h4></label>
                                                <input type="text" value="${pro.originalPrice}" class="form-control" name="Original_Price" id="phone" placeholder="Original_Price" title="enter your phone number if any.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="Sale_Price"><h4>Sale Price</h4></label>
                                                <input type="text" value="${pro.salePrice}" class="form-control" name="Sale_Price" id="email" placeholder="Sale_Price" title="enter your email.">
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="amount"><h4>Amount</h4></label>
                                                <input type="text" value="${pro.amount}" class="form-control" name="amount" id="location" placeholder="amount" title="enter a location">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <label for="Subcategory"><h4>Subcategory</h4></label>
                                            <select class="btn btn-outline-primary" name="Subcategory" >
                                                <option value="0" ${pro.subID == 0?"selected":""}>Fedora</option>
                                                <option value="1" ${pro.subID == 1?"selected":""}>Panama</option>
                                                <option value="2" ${pro.subID == 2?"selected":""}>T-Shirt</option>
                                                <option value="3" ${pro.subID== 3?"selected":""}>Sweater</option>
                                                <option value="4" ${pro.subID == 4?"selected":""}>Jean</option>
                                                <option value="5" ${pro.subID == 5?"selected":""}>Shirt</option>
                                                <option value="6" ${pro.subID == 6?"selected":""}>Shoe</option>
                                                <option value="7" ${pro.subID == 7?"selected":""}>Sock</option>
                                                <option value="8" ${pro.subID == 8?"selected":""}>Backpacks</option>
                                                <option value="9" ${pro.subID == 9?"selected":""}>Rings and Chains</option>
                                            </select>
                                        </div>
                                        <div class="col-xs-6">
                                            <label for="Brand"><h4>Brand</h4></label>
                                            <select class="btn btn-outline-primary" name="Brand" >  
                                                <option value="0" ${pro.brandID == 0?"selected":""}>Borsalino</option>
                                                <option value="1" ${pro.brandID == 1?"selected":""}>Bailey</option>
                                                <option value="2" ${pro.brandID == 2?"selected":""}>Mayser</option>
                                                <option value="3" ${pro.brandID == 3?"selected":""}>Tokyo Life</option>
                                                <option value="4" ${pro.brandID == 4?"selected":""}>Zombie</option>
                                                <option value="5" ${pro.brandID == 5?"selected":""}>FREAKERS</option>
                                                <option value="6" ${pro.brandID == 6?"selected":""}>Karihada</option>
                                                <option value="7" ${pro.brandID == 7?"selected":""}>Icon Denim</option>
                                                <option value="8" ${pro.brandID == 8?"selected":""}>Hyperdenim VN</option>
                                                <option value="9" ${pro.brandID == 9?"selected":""}>Davies</option>
                                                <option value="10" ${pro.brandID == 10?"selected":""}>EnvyLook</option>
                                                <option value="11" ${pro.brandID == 11?"selected":""}>Nike</option>
                                                <option value="12" ${pro.brandID == 12?"selected":""}>Vans</option>
                                                <option value="13" ${pro.brandID == 13?"selected":""}>Adidas</option>
                                                <option value="14" ${pro.brandID == 14?"selected":""}>Flaans</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <br>
                                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
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
