<%-- 
    Document   : CustomerList
    Created on : Jun 9, 2022, 3:01:11 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>

        </title>
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
                            <h2>Customer <b>List</b></h2>
                        </div>
                       
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>


                        <tr>
                            
                            <th>Name customer</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Phone number</th>
                        </tr>

                    </thead>
                    <tbody>
                        <c:forEach items="${listP}"var="o">

                            <tr>
                                <td>${o.userName}</td>
                                <td>${o.email}</td>
                                <th>${o.address}</th>
                              
                                <th>${o.phone}</th>

                              
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="ManagerProduct?index=${tag-1}">Previous</a></li>
                        <c:forEach  begin="${1}" end="${endP}" var="i">
                            <li class="page-item"><a href="ManagerProduct?index=${i}" class="${tag==i?"active":""}">${i}</a></li>
                            </c:forEach>
                        <li class="page-item"><a href="ManagerProduct?index=${tag+1}" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <a href="HomeControl"><button type="button" class="btn btn-primary">Back to home</button>






        </div>
        

    </body>
</html>

