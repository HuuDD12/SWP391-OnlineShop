<%-- 
    Document   : ReplyFeedBack
    Created on : Jun 14, 2022, 3:30:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Men category | Metronic Shop UI</title>

        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <meta content="Metronic Shop UI description" name="description">
        <meta content="Metronic Shop UI keywords" name="keywords">
        <meta content="keenthemes" name="author">

        <meta property="og:site_name" content="-CUSTOMER VALUE-">
        <meta property="og:title" content="-CUSTOMER VALUE-">
        <meta property="og:description" content="-CUSTOMER VALUE-">
        <meta property="og:type" content="website">
        <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">

        <link rel="shortcut icon" href="favicon.ico">

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
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="replyfeedback" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Reply feedback</h4>
                                <a type="button" class="close" href="ManageFeedbackBySeller" aria-hidden="true">&times;</a>
                            </div>
                            <div class="modal-body">	
                                <div class="form-group">
                                    <label>ID</label>
                                    <input type="text"  class="form-control" name="id" value="${requestScope.feedback.id}" readonly>
                            </div>

                            <div class="form-group">
                                <table>
                                    <label>User</label>
                                    <input type="text" class="form-control"  name="username" value="${requestScope.feedback.acc.username}" readonly>
                                </table>
                            </div>
                            <div class="form-group">
                                <table>
                                    <label>Date</label>
                                    <input type="text" class="form-control"  name="username" value="${requestScope.feedback.date}" readonly>
                                </table>
                            </div>    
                            <div class="form-group">
                                <label>Detail</label>
                                <textarea name="blog-text" class="form-control" id="blog-text" rows="7" readonly>${requestScope.feedback.feedbackDetail}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Reply</label>
                                <textarea type="text" class="form-control"  name="rep" ></textarea>
                            </div>
                        </div>
                                <h3 class="text-success">${mess}</h3>
                        <div class="modal-footer">
                            <a type="button" class="btn btn-default" href="ManageFeedbackBySeller">Cancel</a>
                            <input type="reset" class="btn btn" value="Clear">
                            <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
