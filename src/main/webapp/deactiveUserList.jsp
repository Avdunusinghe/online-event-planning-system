<jsp:include page="adminHeader.jsp"/>
              <!-- Define jstl  core -->
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                  <!-- Import user java class and util -->
    			<%@ page import="java.util.*, com.user.model.User" %>  
               
                <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Deactive Clients</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Clients</li>
                        </ol> 
                        
                        <c:if test="${message != null}">
	 							<div id="message">
	 								<div class="alert alert-success" role="alert">
    								<a href="#" class="close" data-dismiss="alert" aria-label="close"></a>
    								<strong>successful!</strong>${message}
 									</div>
	 								</div>
						</c:if>               
                </main>	
               
                <table class = "table table-hover" style="width:60%;" > 
    				<tr>
	      				<th scope="col">User Id</th>
	      				<th scope="col">Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Option</th>
    				</tr>
			    <c:forEach var="tempCustomer" items="${deactive_list}">
			    	<tr>
			    	
			    	<c:url var="reactiveCustomerLink" value = "">
			    		<c:param name="userId" value="${tempCustomer.userId}"></c:param>
			    	</c:url>
			    	
			     	<td> ${tempCustomer.userId}</td>
			     	<td> ${tempCustomer.name} </td>
			     	<td> ${tempCustomer.email} </td>
			     	<td> ${tempCustomer.phone} </td>
			     	<td> <a href="${reactiveCustomerLink}" class="btn btn-success">ReActive</a></td>

			     </tr>
			    </c:forEach>
			    
			    
			</table>
                

 <jsp:include page="adminFooter.jsp"/>   