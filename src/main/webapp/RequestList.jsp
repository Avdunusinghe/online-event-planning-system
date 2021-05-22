
                        
 <jsp:include page="adminHeader.jsp"/>                       
                        
					<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import Request java class and util -->
    				<%@ page import="java.util.*, com.request.model.Request" %>
    					
    			
           
             
					<div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Request List</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Request</li>
                        </ol> 
                        
                        
                </main>	
                
                
                
                
         <table class="table-hover"  style="width:90%" >

		<tr>
	      				<th scope="col">Request Id</th>
	      				<th scope="col"> Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Event</th>
	      				<th scope="col">Date</th>
	      				<th scope="col"> Time</th>
	      				<th scope="col">Venue</th>
	      				<th scope="col"> Address</th>
	      				<th scope="col">Attendees</th>
	      				<th scope="col">Payment</th>
	      				<th scope="col">Budget</th>
	      				<th scope="col">Tickets?</th>
	      				<th scope="col">Option</th>
	      				
    	</tr>
    		
    		 	  	
	<c:forEach var="ress" items="${Request}">
	
	<c:set var="requestId" value="${ress.requestId}"/>
	<c:set var="name" value="${ress.name}"/>
	<c:set var="email" value="${ress.email}"/>
	<c:set var="phone" value="${ress.phone}"/>
	<c:set var="event" value="${ress.event}"/>
	<c:set var="date" value="${ress.date}"/>
	<c:set var="time" value="${ress.time}"/>
	<c:set var="venue" value="${ress.venue}"/>
	<c:set var="address" value="${ress.address}"/>
	<c:set var="attendance" value="${ress.attendance}"/>
	<c:set var="pay" value="${ress.pay}"/>
	<c:set var="budget" value="${ress.budget}"/>
	<c:set var="tickets" value="${ress.tickets}"/>
	
	
	<tr>
	<c:url var = "AcceptRequestLink" value = "UpdateAcceptedListServlet">
	
	<c:param name =  "requestId" value = "${ress.requestId}"></c:param>
</c:url>

	    <td>${ress.requestId}</td>
		<td>${ress.name}</td>
		<td>${ress.email}</td>
		<td>${ress.phone}</td>
		<td>${ress.event}</td>
		<td>${ress.date}</td>
		<td>${ress.time}</td>
		<td>${ress.venue}</td>
		<td>${ress.address}</td>
		<td>${ress.attendance}</td>
		<td>${ress.pay}</td>
		<td>${ress.budget}</td>
		<td>${ress.tickets}</td>
	
	
	
	<c:url var="deleteRequestLink" value = "RequestDeleteServlet">
	 	
	 <c:param name="requestId" value="${ress.requestId}"/>
	<c:param name="name"   value="${ress.name}"/>
	<c:param name="email" value="${ress.email}"/>
	<c:param name="phone" value="${ress.phone}"/>
	<c:param name="event" value="${ress.event}"/>
	<c:param name="date" value="${ress.date}"/>
	<c:param name="time" value="${ress.time}"/>
	<c:param name="venue" value="${ress.venue}"/>
	<c:param name="address" value="${ress.address}"/>
	<c:param name="attendance" value="${ress.attendance}"/>
	<c:param name="pay" value="${ress.pay}"/>
	<c:param name="budget" value="${ress.budget}"/>
	<c:param name="tickets" value="${ress.tickets}"/>
			      
			      
			      </c:url>
	
		
		
		<td><a href="${AcceptRequestLink}" class="btn btn-success">Accept</a></td>
        <td><a href="${deleteRequestLink}" class="btn btn-danger">Delete</a></td>
		

			
	</tr>
	</c:forEach>
	</table>
	
	
              
<jsp:include page="adminFooter.jsp"/>           
    