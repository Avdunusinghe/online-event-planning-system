<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>User Profile</title>
<meta content="" name="description">
  <meta content="" name="keywords">
  
<link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./Plugins/node_modules/toastr/build/toastr.css">
<link href="assets/css/style.css" rel="stylesheet">

<style>
  
    body{

      /*  background-color:rgb(20, 20, 49);*/

    }
</style>
</head>
<body>

  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- Import user java class and util -->
  <%@ page import="java.util.*, com.user.model.User" %>
  <table class = "table table-hover" style="width:60%;" > 
      <tr>
            <th scope="col">User Id</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">Option</th>
      </tr>
  <c:forEach var="tempCustomer" items="${customer_detail}">
      <tr>
       <td> ${tempCustomer.userId}</td>
       <td> ${tempCustomer.name} </td>
       <td> ${tempCustomer.email} </td>
       <td> ${tempCustomer.phone} </td>
       <td> ${tempCustomer.password} </td>
   </tr>
  </c:forEach>
  
  
</table>
  


   <footer id="footer" style="bottom: 0; position: fixed; width: 100%;" >
   
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>TheEventer</strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href=""> MLB_OOP_G259</a>
      </div>
    </div>
  </footer><!-- End  Footer -->



    





<script src="./Plugins/node_modules/jquery/dist/jquery.js"></script>
<script src="./Plugins/node_modules/@popperjs/core/dist/umd/popper.js"></script>
<script src="./Plugins/node_modules/bootstrap/dist/js/bootstrap.js"></script>
<script src="./Plugins/node_modules/toastr/build/toastr.min.js"></script>




</body>
</html>