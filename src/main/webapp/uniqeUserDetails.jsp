<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script src="./Plugins/node_modules/jquery/dist/jquery.js"></script>
<script src="./Plugins/node_modules/@popperjs/core/dist/umd/popper.js"></script>
<script src="./Plugins/node_modules/bootstrap/dist/js/bootstrap.js"></script>
<script src="./Plugins/node_modules/toastr/build/toastr.min.js"></script>

<style>
  
    body{

      /*  background-color:rgb(20, 20, 49);*/

    }
    
    #center {
  		margin-left: auto; 
  		margin-right: auto;
	}
	
	#btn{
		margin: 0;
		padding: 10px 128px;
  		
  		
	}
</style>
</head>
<body>

<c:if test="${updateDetails != null}">
	 							
 			<script>
     	 		toastr.success('${updateDetails}')
   		 	</script>	 							
</c:if> 
  <footer id="footer" position: fixed; width: 100%;" >
    
    <div class="container">
      <div class="copyright">
        
      </div>
      <div class="credits">
        <a href="./UserAppHome.jsp"><img src="assets/img/NewLogo.png" width="100" height="50"></a>
      </div>
    </div>
  </footer>

  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- Import user java class and util -->
  <%@ page import="java.util.*, com.user.model.User" %>
	<br><br>
  <h2 style =" text-align: center;"> Hi, ${user.name} </h2>
<table  id="center" class="table table-striped" style="width:40%;">
	<c:forEach var="tempCustomer" items="${customer_detail}">
	  <c:set var = "userId" value = "${tempCustomer.userId}"/>
	  <c:set var = "name" value = "${tempCustomer.name}"/>
	  <c:set var = "email" value = "${tempCustomer.email}"/>
	  <c:set var = "phone" value = "${tempCustomer.phone}"/>
	  <c:set var = "password" value = "${tempCustomer.password}"/>
	  
	  <tr>
	  	<td> Customer Id </td>
	  	<td> CID${tempCustomer.userId} </td>
	  </tr>
	  
	  <tr>
	  	<td> Name </td>
	  	<td> ${tempCustomer.name} </td>
	  </tr>
	  
	  <tr>
	  	<td> Email </td>
	  	<td> ${tempCustomer.email} </td>
	  </tr>
	  
	  <tr>
	  	<td> Phone </td>
	  	<td> ${tempCustomer.phone} </td>
	  </tr>
  </c:forEach>	
</table>
  <br><br>
<c:url value = "updateUser.jsp" var="customerUpdateLink">
	<c:param name = "userId" value = "${userId}"/>
	<c:param name = "name" value = "${name}"/>
	<c:param name = "email" value = "${email}"/>
	<c:param name = "phone" value = "${phone}"/>
	<c:param name = "password" value = "${password}"/>
</c:url>
 
<a href = "${customerUpdateLink}"  class="d-flex justify-content-center">
	<input type="submit" value="Update Profile" class="btn btn-warning" id="btn" />
</a>


  


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



    










</body>
</html>