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
                            <li class="breadcrumb-item active">Requests</li>
                        </ol> 
                        
                        
                </main>	
                
                
                
                
         <table class="table-hover"  style="width:80%" >

		<tr>
	      				<th scope="col">RequestId</th>
	      				<th scope="col"> Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Event</th>
	      				<th scope="col">Option</th>
	      				
	      				
    	</tr>
    		
    		 	  	
	<c:forEach var="ress" items="${Request}">
	
	<c:url var = "AcceptRequestLink" value = "UpdateAcceptedListServlet">
	
			<c:param name =  "requestId" value = "${ress.requestId}"></c:param>
	</c:url>
	
	<c:url var = "deleteRequestLink" value = "RequestDeleteServlet">
			<c:param name =  "requestId" value = "${ress.requestId}"></c:param>
	</c:url>
	
	<c:set var="requestId" value="${ress.requestId}"/>
	<c:set var="name" value="${ress.name}"/>
	<c:set var="email" value="${ress.email}"/>
	<c:set var="phone" value="${ress.phone}"/>
	<c:set var="event" value="${ress.event}"/>
	
	
	<tr>
		<c:url var="deleteRequest" value = "RequestDeleteServlet"></c:url>
		
			    		
		<td>${ress.requestId}</td>
		<td>${ress.name}</td>
		<td>${ress.email}</td>
		<td>${ress.phone}</td>
		<td>${ress.event}</td>
		
		
		<td>
			<a href="${deleteRequestLink}" class="btn btn-danger">Delete</a></td>
			
	</tr>
	</c:forEach>
	</table>
	
	
              
<jsp:include page="adminFooter.jsp"/>           
    