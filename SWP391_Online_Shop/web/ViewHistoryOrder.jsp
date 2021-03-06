<%-- 
    Document   : ViewHistoryOrder
    Created on : Jun 9, 2022, 3:31:00 PM
    Author     : dell
--%>
<%-- 
    Document   : ViewHistoryOrder
    Created on : Jun 9, 2022, 12:58:45 AM
    Author     : VAN ANH
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> View Your History Order </title>
        <link rel="shortcut icon" href="resources/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>View History<b>Order</b></h2>
                        </div>
                        <!--                        <div class="col-sm-6">-->
                        <ul id="myTab" class="nav nav-tabs">
                            <li><a href="#Wait" data-toggle="tab">Wait</a></li>
                            <li><a href="#Pack" data-toggle="tab">Packaging</a></li>
                            <li><a href="#Delivering" data-toggle="tab">Delivering</a></li>
                            <li><a href="#Cancel" data-toggle="tab">Canceled</a></li>
                            <li><a href="#Complete" data-toggle="tab">Completed</a></li>
                            <!--                                <li class="active"><a href="#Reviews" data-toggle="tab">Reviews (2)</a></li>-->
                        </ul>
                        <!--                        </div>-->
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product name</th>
                            <th>Image</th>
                            <th>Description</th>

                            <th>Original Price</th>
                            <th>Sale Price</th>
                            <th>Edit</th>
                            <th>Remove</th>
                        </tr>

                    </thead>
                    <tbody>

                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <a href="#"><button type="button" class="btn btn-primary">Back to home</button>






        </div>
        <div class="product-page-content">

            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade" id="Wait">
                    <c:forEach items="${listW}"var="o">

                        <tr>
                            <td>${o.productID}</td>
                            <td>${o.productName}</td>
                            <td>
                                <img src="assets/pages/img/products/${o.url}">
                            </td>
                            <th>${o.description}</th>
                            <th>${o.originalPrice}</th>
                            <th>${o.salePrice}</th>

                            <td>
                                <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

                            </td>
                            <td><a href="delete?pid=${o.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                        </tr>
                    </c:forEach>
                </div>
                <div class="tab-pane fade" id="Pack">
                    <c:forEach items="${listP}"var="o">

                        <tr>
                            <td>${o.productID}</td>
                            <td>${o.productName}</td>
                            <td>
                                <img src="assets/pages/img/products/${o.url}">
                            </td>
                            <th>${o.description}</th>
                            <th>${o.originalPrice}</th>
                            <th>${o.salePrice}</th>

                            <td>
                                <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

                            </td>
                            <td><a href="delete?pid=${o.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                        </tr>
                    </c:forEach>
                </div>
                <div class="tab-pane fade in active" id="Delivering">
                    <!--<p>There are no reviews for this product.</p>-->
                    <c:forEach items="${list}"var="o">

                        <tr>
                            <td>${o.productID}</td>
                            <td>${o.productName}</td>
                            <td>
                                <img src="assets/pages/img/products/${o.url}">
                            </td>
                            <th>${o.description}</th>
                            <th>${o.originalPrice}</th>
                            <th>${o.salePrice}</th>

                            <td>
                                <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

                            </td>
                            <td><a href="delete?pid=${o.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                        </tr>
                    </c:forEach>
                </div>
                <div class="tab-pane fade in active" id="Cancel">
                    <!--<p>There are no reviews for this product.</p>-->
                    <c:forEach items="${listC}"var="o">

                        <tr>
                            <td>${o.productID}</td>
                            <td>${o.productName}</td>
                            <td>
                                <img src="assets/pages/img/products/${o.url}">
                            </td>
                            <th>${o.description}</th>
                            <th>${o.originalPrice}</th>
                            <th>${o.salePrice}</th>

                            <td>
                                <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

                            </td>
                            <td><a href="delete?pid=${o.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                        </tr>
                    </c:forEach>
                </div>
                <div class="tab-pane fade in active" id="Complete">
                    <!--<p>There are no reviews for this product.</p>-->
                    <c:forEach items="${listCC}"var="o">

                        <tr>
                            <td>${o.productID}</td>
                            <td>${o.productName}</td>
                            <td>
                                <img src="assets/pages/img/products/${o.url}">
                            </td>
                            <th>${o.description}</th>
                            <th>${o.originalPrice}</th>
                            <th>${o.salePrice}</th>

                            <td>
                                <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

                            </td>
                            <td><a href="delete?pid=${o.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
                        </tr>
                    </c:forEach>
                    </div>
                <!-- BEGIN FORM-->

                <!-- END FORM--> 
            </div>
        </div>
    </div>

    <div class="sticker sticker-sale"></div>
</div>

<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="add" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Add Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>Name</label>
                        <input name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Image</label>
                        <input name="image" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input name="description" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Original Price</label>
                        <textarea name="originalPrice" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Sale Price</label>
                        <textarea name="salePrice" class="form-control" required></textarea>
                    </div>

                    <div class="form-group">
                        <label>Sub Category</label>
                        <textarea name="subCategory" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Amount</label>
                        <textarea name="amount" class="form-control" required></textarea>
                    </div>




                    <div class="form-group">
                        <label>Category</label>
                        <select name="category" class="form-select" aria-label="Default select example">
                            <c:forEach items="${listCC}" var="o">
                                <option value="${o.cate_id}" >${o.cate_name}</option>

                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Brand</label>
                        <select name="brand" class="form-select" aria-label="Default select example">
                            <c:forEach items="${listB}" var="o">
                                <option value="${o.brandID}" >${o.brandName}</option>

                            </c:forEach>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">						
                    <h4 class="modal-title">Edit Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" class="form-control" required>
                    </div>					
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
