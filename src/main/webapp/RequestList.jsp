
                        
 <jsp:include page="adminHeader.jsp"/>                       
                        
					<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import user java class and util -->
    				<%@ page import="java.util.*, com.user.model.User" %>
    			
               <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">New Event Requests</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Requests</li>
                        </ol> 
                        
                    
             
	<table class="table table-dark"  style="width:10%" >
	<thead >
		<tr>
	      				<th scope="col">Request Id</th>
	      				<th scope="col"> Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Event</th>
	      				<th scope="col">Date</th>
	      				<th scope="col"> Time</th>
	      				<th scope="col">Description</th>
	      				<th scope="col">Venue</th>
	      				<th scope="col"> Address</th>
	      				<th scope="col">Halls</th>
	      				<th scope="col">Attendees</th>
	      				<th scope="col">Payment</th>
	      				<th scope="col">Budget</th>
	      				<th scope="col">Tickets?</th>
	      				<th scope="col">Accept</th>
	      				<th scope="col">Delete</th>
    				</tr>
    		 </thead>
    		 	  	
	<c:forEach var="ress" items="${request}">
	<c:url var = "AcceptRequestLink" value = "UpdateAcceptedListServlet">
			<c:param name =  "requestId" value = "${ress.requestId}">
								</c:param>
								</c:url>
	<c:url var = "deleteRequestLink" value = "RequestDeleteServlet">
								<c:param name =  "requestId" value = "${ress.requestId}">
								</c:param>
								</c:url>
	
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
	<c:set var="pay" value="${ress.pay}"/>
	<c:set var="budget" value="${ress.budget}"/>
	<c:set var="tickets" value="${ress.tickets}"/>
	<tbody>
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
		<td>${ress.pay}</td>
		<td>${ress.budget}</td>
		<td>${ress.tickets}</td>
		<td> <button ><a href="${AcceptRequestLink}" class="btn btn-info">Accept</a></button></td>
		<td> <button ><a href="${deleteRequestLink}" class="btn btn-dangerr">Delete</a></button></td>
	</tr>
	</tbody>
	</c:forEach>
	</table>
	</div>
	</main>
	</div>
              
     <jsp:include page="adminFooter.jsp"/>           
    