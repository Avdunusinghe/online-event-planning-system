<jsp:include page="adminHeader.jsp"/>
              <!-- Define jstl  core -->
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                  <!-- Import user java class and util -->
    			<%@ page import="java.util.*, com.user.model.User" %>  
               <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Add Sponsors</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Sponsor</li>
                        </ol> 
                        
                                     
                </main>
              
               <div class="card" style="width:50%;">
			               	<div class="card-body">
			               	
			         			<form  action="SponsorInserServlet" method="POST">
									  <div class="form-group">
									    <label>Name</label>
									    <input type="text" class="form-control" name="name" id="name"  placeholder="Sponsor name">
									  </div>

									  <div class="form-group">
									    <label>Email</label>
									    <input type="email" class="form-control" name="email" id="email"  placeholder="email">
									  </div>

									  <div class="form-group">
									    <label>Address</label>
									    <input type="text" class="form-control" name="address" id="address"  placeholder="Address">
									  </div>

									  <div class="form-group">
									    <label>Phone</label>
									    <input type="text" class="form-control" name="phone" id="phone"  placeholder="Phone Number">
									  </div>

									  <button type="submit" class="btn btn-warning btn-lg btn-block">Register</button>
							</form>
			             </div>
               
               </div>
               
                

 <jsp:include page="adminFooter.jsp"/>   