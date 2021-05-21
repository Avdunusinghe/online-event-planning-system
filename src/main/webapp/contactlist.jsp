<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.*, com.user.model.User" %>
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
		<meta charset="ISO-8859-1">
</head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Eventer Admin</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
           
                
            
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0" >
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw" ></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Settings</a>
                        <a class="dropdown-item" href="#">Activity Log</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
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
                            <div class="sb-sidenav-menu-heading">Planning</div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Messages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">Customer messages</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">Employee messages</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Add New Event
                            </a>
                            <a class="nav-link" href="Add Employee.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Employee
                            </a>
                            <a class="nav-link" href="tables.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Leave mmm
                            </a>
                            
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Eventer Admin
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Our Contact Us Clients</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Contact Clients</li>
                        </ol>                
               
                <!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import contact java class and util -->
    				<%@ page import="java.util.*, com.contact.model.Contact" %>
    			
    			<!-- contact list table -->
                <table border = "2" class="table table-striped" style="width:60%;">
    				<tr>
	      			<th scope="col">Contact Id</th>
	      				<th scope="col">Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Subject</th>
	      				<th scope="col">Message</th>
    				</tr>
    			<c:forEach var="Contactlist" items="${contact_list}">
    				<c:set var = "ID" value = "${ContactList.messageId }" ></c:set>
    				<c:set var = "Name" value = "${ContactList.name }" ></c:set>
					<c:set var = "Name" value = "${ContactList.email }" ></c:set>
					<c:set var = "Email" value = "${ContactList.subject }" ></c:set>
					<c:set var = "Phone" value = "${ContactList.message }" ></c:set>
			    <tr>
			    	<c:url var="deleteContactLink" value = "ContactDeleteServlet">
			    		<c:param name="messageId" value="${ContactList.messageId}"></c:param>
			    	</c:url>
			      <th scope="row">1</th>
			      <td>${ContactList.messageId}</td>
			      <td>${ContactList.name}</td>
			      <td>${ContactList.email}</td>
			      <td>${ContactList.subject}</td>
			      <td>${ContactList.message}</td>
			      
			      <c:url value = "Updatecontact.jsp" var="updateContactLink" >
			    		<c:param name = "userId" value = "${ContactList.messageId}"/>
			    		<c:param name = "name" value = "${ContactList.name}"/>
						<c:param name = "email" value = "${ContactList.email}"/>
						<c:param name = "phone" value = "${ContactList.subject}"/>
						<c:param name = "password" value = "${ContactList.message}"/>
			      </c:url>
			      <td> <a href="${updateContactLink}" class ="btn btn-success">Update</a></td>		
			      <td> <a href="${deleteContactLink}" class="btn btn-danger">Delete</a></td>
			    </tr>
			  </c:forEach>
			</table>
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