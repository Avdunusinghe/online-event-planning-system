<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuccessRequest</title>
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

	<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import Request java class and util -->
    				<%@ page import="java.util.*, com.request.model.Request" %>

<br> <br> <br> <br> <br> <br> <br> <br> <br> <br>

<p><b>Event Request  submitted successfully!!!!!</b><p>


  <c:forEach var="ress" items="${RequestDetail}" >
              
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
				<c:set var="tickets" value="${ress.tickets}"/>

</c:forEach>
<c:url  value = "UpdateRequest.jsp"  var = "UpdateRequestLink" >
	
	<c:param name =  "requestId" value = "${ress.requestId}"></c:param>
	<c:param name =  "name" value = "${ress.name}"></c:param>
	<c:param name =  "email" value = "${ress.email}"></c:param>
	<c:param name =  "phone" value = "${ress.phone}"></c:param>
	<c:param name =  "event" value = "${ress.event}"></c:param>
	<c:param name =  "date" value = "${ress.date}"></c:param>
	<c:param name =  "time" value = "${ress.time}"></c:param>
	<c:param name =  "venue" value = "${ress.venue}"></c:param>
    <c:param name =  "address" value = "${ress.address}"></c:param>
	<c:param name =  "attendance" value = "${ress.attendance}"></c:param>
	<c:param name =  "pay" value = "${ress.pay}"></c:param>
	<c:param name =  "budget" value = "${ress.budget}"></c:param>
	<c:param name =  "tickets" value = "${ress.tickets}"></c:param>
				
</c:url>
<br> 
       <label> Do you want to Update?</label>
     <a href = "${UpdateRequestLink} "  class = "btn btn-warning"  value="Submit" ><b>Update</b></a><br>
      <label> Submitted succesfully</label>
       <a href = "UserAppHome.jsp"   class = "btn btn-warning"  value="Submit"><b>Done</b></a><br>
                                      
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