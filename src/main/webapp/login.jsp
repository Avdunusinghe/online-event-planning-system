<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page import="java.util.*, com.user.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>login</title>
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
    *{
        padding: 0px;
        margin: 0px;
        box-sizing:border-box;
    }
    body{
        background-color:rgb(20, 20, 49);

    }
    .row{

        background: white;
        border-radius: 30px;
    }
    img{
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
        
    }
    .img-fluid{
        
        height:13cm;
    }
    .btn btn-danger{
        border:none;

    }
    #message {
    
    	float: right;
    	top: 0;
    	left: 0;
    	width: 25%;
    	
}
</style>
<script>

window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 3000);
</script>
</head>
<body>
<br>
<c:if test="${message != null}">
	 
	  <script>
     	 	toastr.warning('${message}')
   		 </script>

</c:if>
<br><br>
<section class="form my-4 mx-5">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-5">
                <img src="./assets/img/venue-gallery/7.jpg" class="img-fluid">
            </div>
            <div class="col-lg-7 px-5 pt-5">
                <h1>Login</h1>
                <form id="formValidation" action="LoginControllerServlet" class="needs-validation" method="POST" novalidate>
                    <div class="form-row">
                            <label>Email</label>
                            <input type="email" 
                                   placeholder="example@gmail.com" 
                                   class="form-control"  
                                   id="email" name="email" 
                                   required>
                            <div class="invalid-feedback">Please enter a valid email address.</div>                        
                    </div>
                    <div class="form-row">
                            <label>Password</label>
                            <input type="password" 
                                   placeholder="******" 
                                   class="form-control"  
                                   id="password" 
                                   name="password" 
                                   required> 
                            <div class="invalid-feedback">Please enter your password to continue.</div>
                    </div><br>     
                                
                    <div class="form-row">
                        <button type="submit"class="btn btn-danger">Login</button>
                    </div><br>
                    <div class="form-row">
                        <p>Don't have an account? <a href="./clientRegister.jsp">Register here</a></p>
                    </div>    
                </form>
            </div>
        </div>
    </div>
</section>


    

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
	
<script>
//login form validation
(function() {
  'use strict';
  window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                 toastr.error('Please enter valid Email and password')
              }
              else if(form.checkValidity() === true){

                toastr.success('Logging Succusfull');
                console.log('validate')
              }
              form.classList.add('was-validated');
              
          }, false);
      });
  }, false);
})();




</script>
    










</body>
</html>