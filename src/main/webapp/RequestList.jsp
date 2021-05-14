<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Request List</title>
	<meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Eventer|Admin</title>
        <link href="./assets/css/Adminstyles.css" rel="stylesheet" />
        <link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
        <link href="./Plugins/node_modules/toastr/build/toastr.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet">
        
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, tr,th, td {
  			border: 1px solid black;
		}
		
	</style>
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
                            <a class="nav-link" href="RequestList.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                New Event Request
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
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    
                      <h1>New Requests</h1>

	<table class = "table table-hover"  style="width:10%" >
	
		<tr>
	      				<th scope="col">Request Id</th>
	      				<th scope="col">Customer Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Event</th>
	      				<th scope="col">Event date</th>
	      				<th scope="col">Event Time</th>
	      				<th scope="col">Description</th>
	      				<th scope="col">Venue</th>
	      				<th scope="col">Venue address</th>
	      				<th scope="col">No of Halls</th>
	      				<th scope="col">No of attendees</th>
	      				<th scope="col">Facilities needed</th>
	      				<th scope="col">Payment Method</th>
	      				<th scope="col">Budget Limit</th>
	      				<th scope="col">Tickets need?</th>
	      				<th scope="col">Option</th>
    				</tr>
    				
	<c:forEach var="ress" items="${request}">
	
	
	
	<c:set var="requestId" value="${ress.requestId}"/>
	<c:set var="name" value="${ress.name}"/>
	
	<c:set var="email" value="${ress.email}"/>
	<c:set var="phone" value="${ress.phone}"/>
	<c:set var="event" value="${ress.event}"/>
	<c:set var="date" value="${ress.date}"/>
	<c:set var="time" value="${ress.time}"/>
	<c:set var="description" value="${ress.description}"/>
	<c:set var="venue" value="${ress.venue}"/>
	<c:set var="address" value="${ress.address}"/>
	<c:set var="capacity" value="${ress.capacity}"/>
	<c:set var="attendance" value="${ress.attendance}"/>
	<c:set var="facilities" value="${ress.facilities}"/>
	<c:set var="pay" value="${ress.pay}"/>
	<c:set var="budget" value="${ress.budget}"/>
	<c:set var="tickets" value="${ress.tickets}"/>
	
	<tr>
		<c:url var="deleteRequest" value = "RequestDeleteServlet"></c:url>
		
			    		
		<td>${ress.requestId}</td>
		<td>${ress.name}</td>
			<td>${ress.email}</td>
		<td>${ress.phone}</td>
		<td>${ress.event}</td>
		<td>${ress.date}</td>
		<td>${ress.time}</td>
		<td>${ress.description}</td>
		<td>${ress.venue}</td>
		<td>${ress.address}</td>
		<td>${ress.capacity}</td>
		<td>${ress.attendance}</td>
		<td>${ress.facilities}</td>
		<td>${ress.pay}</td>
		<td>${ress.budget}</td>
		<td>${ress.tickets}</td>
		<td> <button ><a href="${deleteRequestLink}" class="btn btn-danger">Delete</a></button></td>
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
   
    