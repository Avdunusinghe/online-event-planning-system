<jsp:include page="adminHeader.jsp"/>
              <!-- Define jstl  core -->
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                  <!-- Import user java class and util -->
    			<%@ page import="java.util.*, com.user.model.User" %>  
               <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Registered Clients</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Clients</li>
                        </ol> 
                        
                              
                </main>
              
               <div class="card" style="width:100%;">
			               	<div class="card-body">
			               	
			               
					                <table class = "table table-hover" style="width:100%;" > 
					    				<tr>
						      				<th scope="col" style="width:10%;">User Id</th>
						      				<th scope="col" style="width:30%;">Name</th>
						      				<th scope="col" style="width:25%;">Email</th>
						      				<th scope="col" style="width:15%;">Phone</th>
						      				<th scope="col" style="width:10%;"></th>
						      				<th scope="col" style="width:10%;"></th>
					    				</tr>
								    <c:forEach var="tempCustomer" items="${customers_list}">
								    	<tr>
								    	
								    	<c:url var="deleteCustomerLink" value = "UserDeleteServlet">
								    		<c:param name="userId" value="${tempCustomer.userId}"></c:param>
								    	</c:url>
								    	<c:url var="deactiveCustomerLink" value = "CustomerDeactiveServlet">
								    		<c:param name="userId" value="${tempCustomer.userId}"></c:param>
								    	</c:url>
								     	<td> ${tempCustomer.userId}</td>
								     	<td> ${tempCustomer.name} </td>
								     	<td> ${tempCustomer.email} </td>
								     	<td> ${tempCustomer.phone} </td>
								     	<td> <a href="${deleteCustomerLink}" class="btn btn-danger" >Delete</a></td> 
								     	<td><a href="${deactiveCustomerLink}" class="btn btn-warning">Deactive</a></td> 
								     	
					
								     </tr>
								    </c:forEach>
								    
								    
								</table>
			             </div>
               
               </div>
               
                
  <c:if test="${message != null}">
	 							
 			<script>
     	 		toastr.success('${message}')
   		 	</script>	 							
</c:if> 

 <c:if test="${deActivatedMsg != null}">
	 							
 			<script>
     	 		toastr.warning('${deActivatedMsg}')
   		 	</script>	 							
</c:if>       
 <jsp:include page="adminFooter.jsp"/>   