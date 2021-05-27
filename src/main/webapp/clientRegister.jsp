<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Register</title>
<meta content="" name="description">
  <meta content="" name="keywords">
  
<link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./Plugins/node_modules/toastr/build/toastr.css">
<link href="assets/css/style.css" rel="stylesheet">


<script src="./Plugins/node_modules/jquery/dist/jquery.js"></script>
<script src="./Plugins/node_modules/jquery/dist/jquery.min.js"></script>
<script src="./Plugins/node_modules/@popperjs/core/dist/umd/popper.js"></script>
<script src="./Plugins/node_modules/bootstrap/dist/js/bootstrap.js"></script>
<script src="./Plugins/node_modules/toastr/build/toastr.min.js"></script>
<script src="./Plugins/node_modules/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="./assets/js/registerValidation.js" type="text/javascript"></script>



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
        border-radius: 20px;
    }
    img{
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
        
    }
    .img-fluid{
        
        height:18cm;
        width:100%;
    }
    .btn btn-danger{
        border:none;

    }
   

</style>
</head>
<body>


   
  <section class="form my-4 mx-5">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-5">
                <img src="./assets/img/c.jpg" class="img-fluid">
            </div>
            <div class="col-lg-7 px-5 pt-5">
                <form id="registerForm" action="UserInsetServlet" method="POST" >
                    <div class="form-group">
                            <label>Name</label>
                            <input type="text" 
                                   placeholder="Name" 
                                   class="form-control" 
                                   aria-label="name" 
                                   aria-describedby="basic-addon1" 
                                   id="name" 
                                   name="name">                           
                    </div>
                    <div class="form-group">
                            <label>Email</label>
                            <input type="email" 
                            	    placeholder="example@gmail.com" 
                            	    class="form-control"  
                            	    aria-label="email" 
                            	    aria-describedby="basic-addon1" 
                            	    id="email" 
                            	    name="email">                       
                    </div>
                    <div class="form-group">
                            <label>Mobile Number</label>
                            <input type="tel" 
                            	    placeholder="(+94)703375581" 
                            	    class="form-control"  
                            	    aria-label="phone" 
                            	    aria-describedby="basic-addon1" 
                            	    id="phone" 
                            	    name="phone">                        
                    </div>
                    <div class="form-group">
                            <label>Password</label>
                            <input type="password"
                                   placeholder="*********" 
                                   class="form-control" 
                                   aria-label="password" 
                                   aria-describedby="basic-addon1"  id="password" name="password">  
                    </div>
                    <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password" 
                                   placeholder="*********" 
                                   class="form-control" 
                                   aria-label="confirmpassword" 
                                   aria-describedby="basic-addon1" 
                                   id="confirmpassword" 
                                   name="confirmpassword"> 
                    </div>               
                    <div class="form-row">
                          <button type="submit"  
                                  value="Submit"  
                                  class="btn btn-danger" 
                                  onclick="validateNullValues();">
                          Register</button>
                    </div><br>
                    
                        
                </form>
            </div>
        </div>
    </div>
</section>
	
	<c:if test = "${emailMsg != null}">
     	<script>
     	 	toastr.warning('${emailMsg}')
   		 </script>
     </c:if> 

    
    
    <br> <br> <br> <br> <br>

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