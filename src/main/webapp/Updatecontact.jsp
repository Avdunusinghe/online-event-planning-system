<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update contact</title>
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
        background-color:rgb(20, 20, 49);

    }
    
    p{
    	color:white;
    	text-align:center;
    	font-size: 40px;
    }
	
	button[type="submit"] {
		background: #f82249;
		border: 0;
		padding: 10px 40px;
		color: #fff;
		transition: 0.4s;
		border-radius: 50px;
		cursor: pointer;
	}

	button[type="submit"]:hover {
		background: #e0072f;
	}
    
	button[type="reset"] {
		background: green;
		border: 0;
		padding: 10px 40px;
		color: #fff;
		transition: 0.4s;
		border-radius: 50px;
		cursor: pointer;
	}

	button[type="reset"]:hover {
		background: #054701;
	}
	
		
	.error-message {
		display: none;
		color: #fff;
		background: #ed3c0d;
		text-align: left;
		padding: 15px;
		font-weight: 600;
	}

	.error-message br + br {
		margin-top: 25px;
	}

	.sent-message {
		display: none;
		color: #fff;
		background: #18d26e;
		text-align: center;
		padding: 15px;
		font-weight: 600;
	}

	.loading {
		display: none;
		background: #fff;
		text-align: center;
		padding: 15px;
	}

	.loading:before {
		content: "";
		display: inline-block;
		border-radius: 50%;
		width: 24px;
		height: 24px;
		margin: 0 10px -6px 0;
		border: 3px solid #18d26e;
		border-top-color: #eee;
		-webkit-animation: animate-loading 1s linear infinite;
		animation: animate-loading 1s linear infinite;
	}
	
	form input, form textarea {
		border-radius: 0;
		box-shadow: none;
		font-size: 14px;
	}

	form input::focus, form textarea::focus {
		background-color: #f82249;
	}

	form input {
		padding: 20px 15px;
		width:50%;
	}

	form textarea {
		padding: 12px 15px;
	}
    
    
</style>
</head>
<body>
<br><br>
<p>Contact Us Update Form<p>


<!-- Define jstl  core -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Import contact java class and util -->
<%@ page import="java.util.*, com.contact.model.Contact" %> 


<%
	String messageId = request.getParameter("messageId");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String subject = request.getParameter("subject");
	String message = request.getParameter("message");				
%>


<div class="form">
    <form action="ContactUpdateServlet" method="POST" role="form" class="contactform">
            <div class="form-group">
              <input type="text" class="form-control" name="messageid" id="messageid"  value = "<%= messageId %>" />
             
        	</div>
            <div class="form-group">
              <input type="text" class="form-control" name="name" id="name" value = "<%= name %>"  />
            
        	</div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" value = "<%= email %>" />
              
            </div>
        <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" value = "<%= subject %>" />
              
        </div>
        <div class="form-group">
             <!-- <textarea class="form-control" name="message" value = "" rows="5" data-rule="required" data-msg="Please write something for us" ></textarea> --> 
             <input type="text" class="form-control" name="message" id="message" value = "<%= message %>" />
             
        </div>
              
        <div class="text-center">
        	<button type="submit" value="updated">Update Message</button>
        	<button type="reset">Delete Message</button>
        </div>
    </form>
</div>

<br> <br> <br> <br> <br> 

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