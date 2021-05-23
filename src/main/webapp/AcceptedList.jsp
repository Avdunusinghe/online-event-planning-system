 <jsp:include page="adminHeader.jsp"/>                       
                        
					<!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import Request java class and util -->
    				<%@ page import="java.util.*, com.request.model.Request" %>
    					
    			
           
             
					<div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Accepted Request List</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Request</li>
                        </ol> 
                        
                        
                </main>	
                
                
                
                
         <table class="table table-striped"  style="width:90%" >

		<tr>
	      				<th scope="col">Request Id</th>
	      				<th scope="col"> Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Event</th>
	      				<th scope="col">Option</th>
	      				
    	</tr>
    		
    		 	  	
	<c:forEach var="ress" items="${Request}">
	
	<c:set var="requestId" value="${ress.requestId}"/>
	<c:set var="name" value="${ress.name}"/>
	<c:set var="email" value="${ress.email}"/>
	<c:set var="phone" value="${ress.phone}"/>
	<c:set var="event" value="${ress.event}"/>

	<c:url var="RequestLink" value = "GetAcceptedListServlet">
			    		<c:param name="requestId" value="${ress.requestId}"></c:param>
			    	</c:url>
	
	<tr>

	    <td>${ress.requestId}</td>
		<td>${ress.name}</td>
		<td>${ress.email}</td>
		<td>${ress.phone}</td>
		<td>${ress.event}</td>
	
	

		
		
		<td><a href="GetRequestListServlet" class="btn btn-info">Done</a></td>
       
		

			
	</tr>
	</c:forEach>
	</table>
	
	
              
<jsp:include page="adminFooter.jsp"/>           
