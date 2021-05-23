<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updateRequest</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
  <meta content="" name="keywords">
  
<link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./Plugins/node_modules/toastr/build/toastr.css">
<link href="assets/css/style.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">


<style>

  *{
        padding: 0px;
        margin: 0px;
        box-sizing:border-box;
    }
    
    body{
         background-image:url("assets/img/events1.jpg" );
       background-size: cover;
		  height: 100%;
		  overflow: hidden;
		         
		}

    
    p{
    	color:black;
    	text-align:center;
    	font-size: 40px;
    }
     label{
    	color:black;
    	text-align:center;
    	font-size: 40px;
    }
    #bg {
  position: fixed; 
  top: 0; 
  left: 0; 
	
  /* Preserve aspet ratio */
  min-width: 100%;
  min-height: 100%;
}
    
</style></head>

<style>
 body
{
  
}
</style>
<body>
<br><br><br><br><br><br>
	<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import Request java class and util -->
    				<%@ page import="java.util.*, com.request.model.Request" %>
                 <table class="table table-bordered table-dark"  style="width:90%" >
                 
                 
            
         <table class="table table-bordered table-dark"  style="width:90%" >

		<tr>
	      				<th scope="col">Request Id</th>
	      				<th scope="col"> Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Event</th>
	      				<th scope="col">Date</th>
	      				<th scope="col"> Time</th>
	      				<th scope="col">Venue</th>
	      				<th scope="col"> Address</th>
	      				<th scope="col">Attendees</th>
	      				<th scope="col">Payment</th>
	      				<th scope="col">Budget</th>
	      				<th scope="col">Option</th>
	      				
    	</tr>
    		
    		 	  	
	<c:forEach var="ress" items="${Request}">
	
	<c:set var="requestId" value="${ress.requestId}"/>
	<c:set var="name" value="${ress.name}"/>
	<c:set var="email" value="${ress.email}"/>
	<c:set var="phone" value="${ress.phone}"/>
	<c:set var="event" value="${ress.event}"/>
	<c:set var="date" value="${ress.date}"/>
	<c:set var="time" value="${ress.time}"/>
	<c:set var="venue" value="${ress.venue}"/>
	<c:set var="address" value="${ress.address}"/>
	<c:set var="attendance" value="${ress.attendance}"/>
	<c:set var="pay" value="${ress.pay}"/>
	<c:set var="budget" value="${ress.budget}"/>

	
	
	<tr>
	<c:url var = "UpdateRequestLink" value = "UpdateRequest.jsp">
	
	<c:param name =  "requestId" value = "${ress.requestId}"></c:param>
</c:url>


	    <td>${ress.requestId}</td>
		<td>${ress.name}</td>
		<td>${ress.email}</td>
		<td>${ress.phone}</td>
		<td>${ress.event}</td>
		<td>${ress.date}</td>
		<td>${ress.time}</td>
		<td>${ress.venue}</td>
		<td>${ress.address}</td>
		<td>${ress.attendance}</td>
		<td>${ress.pay}</td>
		<td>${ress.budget}</td>
	
	

		
		
		<td><a href="${UpdateRequestLink}" class="btn btn-success">Update</a></td>
        
		

			
	</tr>
	</c:forEach>
	</table>
	
               
<br> <br> <br> <br>  

   <footer id="footer" style="bottom: 0; position: fixed; width: 100%;" >
   
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>TheEventer</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
        All the links in the footer should remain intact.
        You can delete the links only if you purchased the pro version.
        Licensing information: https://bootstrapmade.com/license/
        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=TheEvent
      -->
        Designed by <a href=""> MLB_OOP_G259</a>
      </div>
    </div>
  </footer><!-- End  Footer -->
</body>
</html>