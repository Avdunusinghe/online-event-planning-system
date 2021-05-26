<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Eventer|Admin</title>
        <link href="./assets/css/Adminstyles.css" rel="stylesheet" />
        <link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
        <link href="./Plugins/node_modules/toastr/build/toastr.css" rel="stylesheet" />
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Admin</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
              <a class="navbar-brand" href="UserLogOutServlet"><i class="fa fa-power-off" style="font-size:24px"></i></i></a>
           
                
            
 
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Management</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                  Event
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                     <a class="nav-link" href="GetRequestListServlet">Event List</a>
                                    <a class="nav-link" href="GetAcceptedListServlet">Approved Event List</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                 User Management
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                       Employee
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                             <a class="nav-link" href="Employee.jsp">Employee Register</a>
                                            <a class="nav-link" href="EmployeeListServlet">Employee List</a>
                                            <a class="nav-link" href="password.html"></a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                          Client
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                             <a class="nav-link" href="UserListServlet">Client List</a>
                                            <a class="nav-link" href="GetDeactiveUserDetailsServlet">Deactivated Clients</a>
                                            <a class="nav-link" href="500.html"></a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Customer messages</div>
                            <a class="nav-link" href="ContactListServlet">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Message List
                            </a>
                         
                           
                        </div>

                        


                      
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                       <p> ${user.name}</p>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">EMPLOYEE</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Employee</li>
                        </ol>












					<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import user java class and util -->
    				<%@ page import="java.util.*, com.user.model.User" %>
    			
    				<!-- employee list table -->
    				<table border = "" class="table table-hover">
    				<!-- <thead class="thead-dark">-->
						<tr>
							<th scope = "col">User ID</th>
							<th scope = "col">Name</th>
							<th scope = "col">Email Address</th>
							<th scope = "col">Contact Number </th>
							<th scope = "col"> Password </th>
						</tr>
						
						<c:forEach var = "empList" items = "${employee_list}">
						<!-- update details-->
							<c:set var = "ID" value = "${empList.userId }" ></c:set>
							<c:set var = "Name" value = "${empList.name }" ></c:set>
							<c:set var = "Email" value = "${empList.email }" ></c:set>
							<c:set var = "Phone" value = "${empList.phone }" ></c:set>
							<c:set var = "Password" value = "${empList.password }" ></c:set>
						
						
						<tr>
													
						
							<c:url var = "deleteEmployeeLink" value = "EmployeeDeleteServlet">
								<c:param name =  "userId" value = "${empList.userId}">
								</c:param>
							</c:url>
							
							 
			    			
							<td> ${empList.userId}</td>
							<td> ${empList.name}</td>
							<td> ${empList.email}</td>
							<td> ${empList.phone}</td> 
							<td> ${empList.password}</td>
							
							
							<c:url value = "EmployeeUpdate.jsp" var="updateEmployeeLink" >
			    				<c:param name = "userId" value = "${empList.userId}"/>
			    				<c:param name = "name" value = "${empList.name}"/>
								<c:param name = "email" value = "${empList.email}"/>
								<c:param name = "phone" value = "${empList.phone}"/>
								<c:param name = "password" value = "${empList.password}"/>
			    			</c:url>
							
							
							
							
							
							<td> <a href = "${updateEmployeeLink}" class ="btn btn-success">Update</a></td>
							<td> <a href = "${deleteEmployeeLink}" class ="btn btn-danger">Delete</a></td>
						</tr>
						</c:forEach>
						
					</table>

                    </div>
                <br>
                
                                
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; MLB_OOP_G259</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
        <script src="./Plugins/node_modules/jquery/dist/jquery.slim.min.js"></script>
        <script src="./Plugins/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js" ></script>
        <script src="./Plugins/node_modules/jquery/dist/jquery.js" ></script>
        <script src="./Plugins/node_modules/@popperjs/core/dist/umd/popper.js"></script>
        <script src="./Plugins/node_modules/bootstrap/dist/js/bootstrap.js"></script>
        <script src="./Plugins/node_modules/toastr/build/toastr.min.js"></script>
        <script src="./assets/js/Adminscripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        
    </body>
</html>
