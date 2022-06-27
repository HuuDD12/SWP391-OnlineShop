<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Notification UI Design</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style_1.css">
        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END --> 

        <!-- Page level plugin styles START -->
        <link href="assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
        <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
        <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
        <link href="assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin styles END -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <!-- Theme styles START -->
        <link href="assets/pages/css/components.css" rel="stylesheet">
        <link href="assets/corporate/css/style.css" rel="stylesheet">
        <link href="assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
        <link href="assets/corporate/css/style-responsive.css" rel="stylesheet">
        <link href="assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
        <link href="assets/corporate/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <section class="section-50">
                <div class="container">
                    <h3 class="m-b-50 heading-line">Notifications <i class="fa fa-bell text-muted"></i></h3>
                    <c:if test="${list.size() > 0}">
                    <div class="notification-ui_dd-content">
                        <c:forEach items="${list}" var="o">
                            <c:if test="${o.getOrderID() == 0}">
                                <div class="notification-list notification-list--unread">
                                    <div class="notification-list_content">
                                        <div class="notification-list_img">
                                            <img src="${sessionScope.acc.img}" alt="user">
                                        </div>
                                        <div class="notification-list_detail">
                                            <p><b>System</b> reply your Feedback</p><br>
                                            <p class="text-muted">${o.content}</p>
                                            <p class="text-muted"><small>${o.time}</small></p>
                                            <c:if test="${o.status == 0}">
                                                <p><a href="markasread?nid=${o.id}&uid=${sessionScope.acc.userId}">Mark As Read</a></p>
                                            </c:if>
                                        </div>

                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${o.getOrderID() != 0}">
                                <div class="notification-list notification-list--unread">
                                    <div class="notification-list_content">
                                        <div class="notification-list_img">
                                            <img src="${sessionScope.acc.img}" alt="user">
                                        </div>
                                        <div class="notification-list_detail">
                                            <p><b>System</b> sent a message to you</p><br>
                                            <p class="text-muted">${o.content}</p>
                                            <p class="text-muted"><small>${o.time}</small></p>
                                            <c:if test="${o.status == 0}">
                                                <p><a href="markasread?nid=${o.id}&uid=${sessionScope.acc.userId}">Mark As Read</a></p>
                                            </c:if>
                                        </div>

                                    </div>
                                </div>
                            </c:if>

                        </c:forEach>
                    </div>

                    <div class="text-center">
                        <a href="#!" class="dark-link">Load more activity</a>
                    </div>
                </c:if>
                <c:if test="${list.size() == 0}">
                    <h3 class="text-center">No Message Found</h3>
                </c:if>    

            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>