<%-- 
    Document   : BlogList
    Created on : Oct 1, 2021, 4:39:12 PM
    Author     : Ottelia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- icon -->
        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
        <!-- link Fonts -->
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
            rel="stylesheet"
            />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+Display&family=Poppins:wght@100;400;600&display=swap" rel="stylesheet">
        <!--BOOTSTRAP5-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />
        <!--FONTAWESOME-->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
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
        <!-- Theme styles END -->
        <title>All Blogs</title>
        <style>
            .content{
                font-family: 'Poppins', sans-serif;
                font-size: 15px;
            }

            .spotlight h2{
                font-family: 'Noto Serif Display', serif;
                font-weight: 600;

            }
            .spotlight{
                margin: 45px;
            }

            .img-big-wrap img{
                width: 100% ;
                height: auto ;
            }
            .card-title a{
                text-decoration: none;
                color: black;
                font-family: 'Noto Serif Display', serif;
                font-weight: 600;

            }
            .card-title a:hover {
                text-decoration: underline;
            }

            .row .img-big-wrap{
                margin-top: 20px;
                margin-bottom: 20px;
            }
            .row .card-title{
                margin-top: 45px;
            }
            body{
                background-image: url(./resources/img/Blog/blue-abstract-gradient-wave-wallpaper.jpg);
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="col-md-12">

                    <img style="width: 100%; margin: 45px;" src="./resources/img/Blog/5233122.jpg" >
                    <div class="spotlight">
                        <h2 class="card-title show_txt">Những item bạn nhất định không nên bỏ lỡ</h2> 
                        <button class="btn btn-success"><a href="addblog">Add Blogs</a></button>
                        <p>Với sự thay đổi liên tục, xu hướng thời trang luôn được cập nhật mới mẻ hơn, độc đáo, hiện đại và thu hút hơn. Những phong cách mới, xu thế thời trang hot luôn được mọi người quan tâm, đặc biệt là giới trẻ. Không thể phủ nhận ngành công nghiệp thời trang đang phát triển rất mạnh mẽ. Không chỉ đơn giản là cách ăn mặc, cách mix&match đồ hay diện đồ theo phong cách yêu thích, thời trang còn là sự đổi mới, phá cách và tràn đầy sức sáng tạo ấn tượng. Vậy bạn đã có ý tưởng gì cho mình chưa? Cùng Shope khám phá ngay nhé.</p>
                    </div>
                </div>
            <c:set var="i" value="0"></c:set>
            <c:forEach items="${blogList}" var="o" >
                <c:set var="i" value="${i+1}"></c:set>
                <c:choose>
                    <c:when test="${i%2==0}">
                        <div class="row" style="margin-left:40px;">
                            <div class="col-md-5 border-right">
                                <article class="gallery-wrap"> 
                                    <div class="img-big-wrap">
                                        <div> <a href="blogdetail?ID=${o.id}"><img src="${o.imageLink}"></a></div>
                                    </div> <!-- slider-product.// -->

                                </article> <!-- gallery-wrap .end// -->
                            </div>
                            <div class="col-md-7">
                                <article class="card-body p-5">
                                    <button class="btn btn-warning"><a href="#">Update Blogs</a></button>
                                    <button class="btn btn-danger"><a href="#">Delete Blogs</a></button>
                                    <h3 class="card-title show_txt"><a href="blogdetail?ID=${o.id}" title="View Blog">${o.title}</a></h3>  
                                    
                                    <p class="content">${o.content}</p>
                            </div>
                        </div>  
                    </c:when>
                    <c:otherwise>
                        <div class="row">
                            <div class="col-md-7">
                                <article class="card-body p-5">
                                    <button class="btn btn-warning"><a href="#">Update Blogs</a></button>
                                    <button class="btn btn-danger"><a href="#">Delete Blogs</a></button>
                                    <h3 class="card-title show_txt"><a href="blogdetail?ID=${o.id}" title="View Blog">${o.title}</a></h3>  
                                    <p class="content">${o.content}</p>
                                    
                            </div>
                            <div class="col-md-5 border-right">
                                <article class="gallery-wrap"> 
                                    <div class="img-big-wrap">
                                        <div> <a href="blogdetail?ID=${o.id}"><img src="${o.imageLink}"></a></div>
                                    </div> <!-- slider-product.// -->

                                </article> <!-- gallery-wrap .end// -->
                            </div>

                        </div>  
                    </c:otherwise>
                </c:choose>


            </c:forEach>
            <p style="font-family: 'Noto Serif Display', serif;  margin: 40px;">Nếu bạn muốn đóng góp bài viết cho chúng tôi, vui lòng gửi qua hòm thư shope@gmail.com</p>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- BOOTSTRAP5-->
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"
            ></script>
            <!-- SCRIPT -->
            <script src="${pageContext.request.contextPath}/js/script.js"></script>

    </body>
</html>
