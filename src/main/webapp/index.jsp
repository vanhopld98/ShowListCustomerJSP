<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
Created by IntelliJ IDEA.
User: Van Hop
Date: 9/28/2021
Time: 11:27 AM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Hop dep trai", "Lien Dam", "17-11-1998", "https://pbs.twimg.com/profile_images/831173492968140804/43M7c5j_.jpg"));
    customerList.add(new Customer("Hop dep trai 1", "Lien Dam", "17-11-1998", "https://pbs.twimg.com/profile_images/831173492968140804/43M7c5j_.jpg"));
    customerList.add(new Customer("Hop dep trai 2", "Lien Dam", "17-11-1998", "https://pbs.twimg.com/profile_images/831173492968140804/43M7c5j_.jpg"));
    customerList.add(new Customer("Hop dep trai 3", "Lien Dam", "17-11-1998", "https://pbs.twimg.com/profile_images/831173492968140804/43M7c5j_.jpg"));
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String dateOfBirth = request.getParameter("dateOfBirth");
    String image = request.getParameter("image");
    Customer customer = new Customer(name, address, dateOfBirth, image);
    customerList.add(customer);
    request.setAttribute("customerList", customerList);
%>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <th scope="row">${customer.name}</th>
            <td>${customer.address}</td>
            <td>${customer.dateOfBirth}</td>
            <td><img src="${customer.image}" alt="image" height="100" width="100"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="row">
    <div class="col-3">
        <div class="card">
            <div class="card-header">
                Add New Customer
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">
                    <form action="/index.jsp" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name"
                                   placeholder="Enter your name:">
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" id="address" placeholder="Enter your address:">
                        </div>
                        <div class="mb-3">
                            <label for="dateOfBirth" class="form-label">Date Of Birth</label>
                            <input type="text" class="form-control" id="dateOfBirth"
                                   placeholder="Enter your date of birth:" name="dateOfBirth">
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">URL Image</label>
                            <input type="text" class="form-control" id="image" name="image" placeholder="Enter your url image:">
                        </div>
                        <button type="submit" class="btn btn-outline-success">Submit</button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>