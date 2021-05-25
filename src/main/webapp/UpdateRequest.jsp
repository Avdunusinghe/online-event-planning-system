<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    		
    				
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Request </title>
<link href="./Plugins/node_modules/bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="./Plugins/node_modules/toastr/build/toastr.css">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/Request.css" rel="stylesheet">



<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="./assets/js/Request.js" type="text/javascript"></script>
</head>
<body>

<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                  <!-- Import user java class and util -->
    				<%@ page import="java.util.*, com.request.model.Request" %>  
    			

<% 
        String requestId = request.getParameter("requestId"); 
        String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String event = request.getParameter("event");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String venue = request.getParameter("venue");
		String address = request.getParameter("address");
		String attendance = request.getParameter("attendance");
		String pay = request.getParameter("pay");
		String budget = request.getParameter("budget");
		String tickets = request.getParameter("tickets");
		
		
		%>
  
  <section class="form my-4 mx-5">

 
      <form   action="RequestUpdateServlet" method = "GET"  >
      <table  class="table table-striped table-dark" id = "boarder">
      <div class="banner">
		<img  src="assets/img/events2.jpg"  width="100%" height = "200px">
          <h1>Event Request Update Form</h1>
        </div>
     
       <tr>
			<th>
				<td ><b>RequestID</b></td> 
				<td><input type = "text" name = "requestId" value = "<%= requestId %>" style = "width:60%" readonly > <br></td>
					</th>
					</tr>
			<tr>
			<th>
					<td><b>Customer Name</b></td>
								<td><input type = "text" name = "name" value = "<%= name %>" style = "width:60%""> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Contact email</b> </td>
								<td><input type = "text" name = "email" value = "<%= email %>" style = "width:60%">  <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Contact number</b></td>
								<td><input type = "text" name = "phone" value = "<%= phone %>" style = "width:60%"> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Select the event</b> </td>
								<td><select name = "event"  value ="<%= event %>">
						            <option value=""></option>
						            <option value="1">*Please select*</option>
						            <option value="2">Wedding</option>
						            <option value="3">A speaker session</option>
						            <option value="4">Networking Sessions</option>
						            <option value="5">Seminar or half-day event</option>
									 <option value="6">Workshops</option>
						            <option value="7">Award and Competitions</option>
						            <option value="8">Festivals</option>
						            <option value="9">Parties</option>
						            <option value="10">Conferences</option>
									 <option value="11">Exhibition or trade show</option>
						            <option value="12">ReUnion</option>
						            <option value="13">Talent or Variety show</option>
						            <option value="4">Networking Sessions</option>
						            <option value="5">Seminar or half-day event</option>
						          </select> <br> </td>
							</th>
						</tr>
						<tr>
							<th>
							 <div class="item">
								<td><b>Event date</b></td>
								<td><input type = "date" name = "date" value = "<%= date %>" style = "width:60%"> <i class="fas fa-calendar-alt"></i><br></td>
							</div>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Event time</b></td>
								<td><input type = "time" name = "time" value = "<%= time %>" style = "width:60%"><i class="fas fa-clock"></i> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Venue</b></td>
								<td><input type = "text" name = "venue" value = "<%= venue %>" style = "width:60%"> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Venue address</b></td>
								<td><input type = "text" name = "address" value = "<%= address %>" style ="width:60%"> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Attendance</b></td>
								<td><input type = "text" name = "attendance" value = "<%= attendance %>" style = "width:60%"> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Payment method</b></td>
								<td><select name = "pay"  value ="<%= pay %>">
						            <option value=""></option>
						            <option value="1">*Please select*</option>
						            <option value="2">Pre-payment</option>
						            <option value="3">Post-payment</option>
									<option value="4">Advance and Post-payment</option>
						            
						          </select> <br></td>
							</th>
						</tr>
						<tr>
							<th>
								<td><b>Budget Limit</b></td>
								<td><input type = "text" name = "budget" value = "<%= budget %>" style = "width:60%"> <br></td>
							</th>
						</tr>
						<tr>
					        <td><b>Will tickets issued?</b></td>
					        <td>
					        <div>
					            <input type="radio" value="<%=tickets %>" id="radio_1" name="tickets"/ checked required>
					            <label for="radio_1" class="radio"><span>Yes</span></label>
					          </div>
					          <div>
					            <input type="radio" value="<%=tickets %>" id="radio_2" name="tickets"/>
					            <label for="radio_2" class="radio"><span>No</span></label>
					          </div>
					        </td>
                           </tr>
						<tr>
							<th><th>
								<td><input type = "submit" name = "submit" value = "UPDATE EVENT REQUEST" class="btn btn-warning" > <br> </td>
							</th></th>
						</tr>
						
						
					</table>
	
		 

</section>
      
</body>
</html>