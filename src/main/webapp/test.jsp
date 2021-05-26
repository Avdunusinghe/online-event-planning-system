<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   
   
    .btn btn-danger{
        border:none;

    }
    #updateBtn{
     
      background-color: #4CAF50; 
      /*border: none;*/
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;

  }
  #deleteBtn{
      background-color: red; 
      border: none;
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
  }
   

</style>
</head>
<body>

 <%
 		String userId = request.getParameter("userId");
 		String name = request.getParameter("name");
 		String email = request.getParameter("email");
 		String phone = request.getParameter("phone");
 		String password = request.getParameter("password");
 %>

 <div class="card -center" style="width: 50%; float: right;" >
        <div class="card-body">
                    
                        <form id="registerForm" action="UserUpdateServlet"  method="POST" >
	                            <div class="form-group">
	                                    <label >User Id</label>
	                                    <input type="text"  
	                                           class="form-control" 
	                                           aria-label="name" 
	                                           aria-describedby="basic-addon1" 
	                                           id="userId" 
	                                           readonly
	                                           name="userId"
	                                           value = "<%= userId %>"> 
	        
	                            </div>
	                            <div class="form-group">
	                                    <label>Name</label>
	                                    <input type="text"  
	                                          class="form-control"  
	                                          aria-label="name" 
	                                          aria-describedby="basic-addon1" 
	                                          id="name" 
	                                          name="name"
	                                          value = "<%= name %>">                        
	                            </div>
	                            <div class="form-group">
	                              <label>Email</label>
	                              <input type="text"  
	                                    class="form-control"  
	                                    aria-label="email" 
	                                    aria-describedby="basic-addon1" 
	                                    id="email" 
	                                    name="email"
	                                    value = "<%= email %>">                        
	                      </div>
	                            <div class="form-group">
	                              <label>Phone</label>
	                              <input type="text"  
	                                    class="form-control"  
	                                    aria-label="phone" 
	                                    aria-describedby="basic-addon1" 
	                                    id="phone" 
	                                    name="phone"
	                                    value = "<%= phone %>">                        
	                      </div>
	                      <P>Change Password</P>
	                            <div class="form-group">
	                                    <label>Password</label>
	                                    <input type="password"
	                                           class="form-control" 
	                                           aria-label="password" 
	                                           aria-describedby="basic-addon1"  
	                                           id="password" 
	                                           name="password"
	                                           value = "<%= password %>">  
	                            </div>
	                                       
	                            <div class="form-row" >
	                              <div><input type="submit" value="Update Profile" class="btn btn-success"  /></div> 
	                            </div>     
                        </form>
             
                
          
     
        </div>
</div>
 
        
 
    <br> <br> <br> <br> <br>  <br> <br> <br> <br> <br>

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