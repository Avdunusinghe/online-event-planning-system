<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page import="java.util.*, com.user.model.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>TheEvent</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="##" rel="icon">
  <link href="##" rel="apple-touch-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
  <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <!-- =======================================================
  * Template Name: TheEvent - v2.3.1
  * Template URL: https://bootstrapmade.com/theevent-conference-event-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

 
</head>

<body>
  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <!-- Uncomment below if you prefer to use a text logo -->
        <!-- <h1><a href="#intro">The<span>Event</span></a></h1>-->
        <a href="index.html" class="scrollto"><img src= "assets/img/NewLogo.png"></a>
      </div>
	
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="##">HOME</a></li>
          <li><a href="#about">ABOUT</a></li>
          <li><a href="#speakers">PLANNERS</a></li>
          <li><a href="#schedule">SCHEDULE</a></li>
          <li><a href="#venue">VENUE</a></li>
          <li><a href="#hotels">HOTELS</a></li>
          <li><a href="#gallery">GALLERY</a></li>
          <!-- check session not null and visible request link -->
          <c:choose>
          	<c:when test="${user.userId != null }">
          		<li><a href="Requests.jsp">REQUEST</a></li>
          	</c:when>
          </c:choose>
          <li><a href="#contact">CONTACT</a></li>
         <!--<li class="buy-tickets"><a href="#buy-tickets">Buy Tickets</a></li>--> 
          <li class="">     <i style='font-size:20px' id="userIcon" class='fas'style="font-size: 20%;" >&#xf406;</i>
            <ul>
             <!-- check session not null and visible request links -->
              <c:choose>
              	<c:when test="${user.userId != null }">
              	
              		<c:url var="userProfileLink" value = "UserProfileDetailsServlet">
			    		<c:param name="userId" value="${user.userId}"></c:param>
			    	</c:url>
              		<li><a href="${userProfileLink}">User profile</a></li>
             		 <li><a href="UserLogOutServlet">Logout</a></li>
              	</c:when>
              	<c:otherwise>
              		<li><a href="./login.jsp">Login</a></li>
              		<li><a href="./clientRegister.jsp">Sign Up</a></li>
              	</c:otherwise>
              </c:choose>
              
             
              
              <li>${user.userId} ${user.name}</li>
              
              
			     	

			    
              
            </ul>
          </li>
        
         
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header>