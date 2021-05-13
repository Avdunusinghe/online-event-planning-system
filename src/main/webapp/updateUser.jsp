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
    img{
        border-top-left-radius: 30px;
        border-bottom-left-radius: 30px;
        
    }
    .img-fluid{
        
        height:15.5cm;
        width:100%;
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


   
  <section class="form my-4 mx-5">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-5">
                <img src="./assets/img/gallery/5.jpg" class="img-fluid">
            </div>
            <div class="col-lg-7 px-5 pt-5">
              <h1>User Profile</h1>
                <form id="registerForm" action=""  method="POST" >
                    <div class="form-group">
                            <label >User Id</label>
                            <input type="text"  
                                   class="form-control" 
                                   aria-label="name" 
                                   aria-describedby="basic-addon1" 
                                   id="name" 
                                   readonly
                                   name="name"> 

                    </div>
                    <div class="form-group">
                            <label>Name</label>
                            <input type="text"  
                            	    class="form-control"  
                            	    aria-label="email" 
                            	    aria-describedby="basic-addon1" 
                            	    id="email" 
                            	    name="email">                        
                    </div>
                    <div class="form-group">
                      <label>Phone</label>
                      <input type="text"  
                            class="form-control"  
                            aria-label="phone" 
                            aria-describedby="basic-addon1" 
                            id="email" 
                            name="phone">                        
              </div>
              <P>change Password</P>
                    <div class="form-group">
                            <label>Password</label>
                            <input type="password"
                                   class="form-control" 
                                   aria-label="password" 
                                   aria-describedby="basic-addon1"  
                                   id="password" 
                                   name="password">  
                    </div>
                               
                    <div class="form-row" >
                      <div><input type="submit" value="Update Profile" class="btn btn-success"  /></div>
                        <div><a href="https://www.w3schools.com"  class="btn btn-danger">Delete Account</a></div>  
                    </div>

                <br>
                    
                        
                </form>
            </div>
        </div>
    </div>
</section>
        
 
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