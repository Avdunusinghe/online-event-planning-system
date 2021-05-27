
                        
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
                
                
                
                
         <table class="table table-striped"  style="width:100%" >

		<tr>
	      				<th scope="col" style="width:3%">Request Id</th>
	      				<th scope="col" style="width:6%;"> Name</th>
	      				<th scope="col" style="width:12%;">Email</th>
	      				<th scope="col" style="width:6%;">Phone</th>
	      				<th scope="col" style="width:6%;">Event</th>
	      				<th scope="col" style="width:6%;">Date</th>
	      				<th scope="col" style="width:3%;"> Time</th>
	      				<th scope="col" style="width:3%;">Venue</th>
	      				<th scope="col" style="width:9%;"> Address</th>
	      				<th scope="col" style="width:6%;">Attendees</th>
	      				<th scope="col" style="width:6%;">Payment</th>
	      				<th scope="col" style="width:6%;">Budget</th>
	      				<th scope="col" style="width:6%;">Tickets?</th>
	      				<th scope="col" style="width:6%;"></th>
	      		
	     
	      				
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

<c:url var="deleteRequestLink" value = "RequestDeleteServlet">
 <c:param name="requestId" value="${ress.requestId}"/>
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
	

		
		
		<td><a href="${AcceptRequestLink}" class="btn btn-success">Accept</a><br><br>
       <a href="${deleteRequestLink}" class="btn btn-danger">Delete</a></td>
		

			
	</tr>
	</c:forEach>
	</table>
	
	
              
<jsp:include page="adminFooter.jsp"/>           
    