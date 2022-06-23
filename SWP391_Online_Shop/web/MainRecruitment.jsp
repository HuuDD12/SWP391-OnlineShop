
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Shop</title>
    <!--CSS-->
    <link href="css/AboutShope.css" rel="stylesheet" type="text/css"/> 
    <!--ICON-->
    <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <body>
        <header>
            <a href="${pageContext.request.contextPath}/productlist">
                    <img class="logo" src="assets/corporate/img/logos/Logo1.png" alt="Online Shop" style="width: 150px; margin: 20px 20px"></a>
            <ul class="main-nav">
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/product?page=1&query=&subcategory=0&brand=0&price=0&sortType=0&sortMode=0">
                        Product</a></li>
                <li><a href="AboutShope.jsp">About Shope</a></li>
            </ul>
            <div class="clearfix"></div>
            <div class="row">
                <div class="heading-main-box">
                    <h1 class="titles">Bắt đầu một công việc mới có thể khá khó khăn và áp lực nhưng cũng sẽ rất thú vị<br>Bạn sẽ có cơ hội để khẳng định bản thân và thành công với khởi đầu mới.<br>So join with us</h1>
                </div>
            </div>
        </header>
        <hr>
                <div class="w3-content" style="max-width:1200px">
                    <a href="Recruitment.jsp"><img class="mySlides" src="resources/td.png" style="width:100%;display:none"></a>
                    <a href="Recruitment2.jsp"><img class="mySlides" src="resources/td2.png" style="width:100%"></a>
                    <a href="Recruitment3.jsp"><img class="mySlides" src="resources/td3.png" style="width:100%;display:none"></a>
        
                    <div class="w3-row-padding w3-section">
                        <div class="w3-col s4">
                            <img class="demo w3-opacity w3-hover-opacity-off" src="resources/td.png" style="width:100%;cursor:pointer" onclick="currentDiv(1)">
                        </div>
                        <div class="w3-col s4">
                            <img class="demo w3-opacity w3-hover-opacity-off" src="resources/td2.png" style="width:100%;cursor:pointer" onclick="currentDiv(2)">
                        </div>
                        <div class="w3-col s4">
                            <img class="demo w3-opacity w3-hover-opacity-off" src="resources/td3.png" style="width:100%;cursor:pointer" onclick="currentDiv(3)">
                        </div>
                    </div>
                </div>
                <br><hr><br>
                 Copyright 
                <div class="text-center">
                    © 2021 Copyright:
                    <a class="text-white" href="#">SWP391 - JS1601</a>
                </div>
                <script>
                    function currentDiv(n) {
                        showDivs(slideIndex = n);
                    }
        
                    function showDivs(n) {
                        var i;
                        var x = document.getElementsByClassName("mySlides");
                        var dots = document.getElementsByClassName("demo");
                        if (n > x.length) {
                            slideIndex = 1;
                        }
                        if (n < 1) {
                            slideIndex = x.length;
                        }
                        for (i = 0; i < x.length; i++) {
                            x[i].style.display = "none";
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                        }
                        x[slideIndex - 1].style.display = "block";
                        dots[slideIndex - 1].className += " w3-opacity-off";
                    }
                </script>
    </body>
</html>





