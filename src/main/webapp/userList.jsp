<jsp:include page="adminHeader.jsp"/>
               
               
                
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    			<%@ page import="java.util.*, com.user.model.User" %>
                <table class = "table table-hover" style="width:60%;" > 
    				<tr>
	      				<th scope="col">User Id</th>
	      				<th scope="col">Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Phone</th>
	      				<th scope="col">Option</th>
    				</tr>
			    <c:forEach var="tempCustomer" items="${customers_list}">
			    	<tr>
			    	
			    	<c:url var="deleteCustomerLink" value = "UserDeleteServlet">
			    		<c:param name="userId" value="${tempCustomer.userId}"></c:param>
			    	</c:url>
			     	<td> ${tempCustomer.userId}</td>
			     	<td> ${tempCustomer.name} </td>
			     	<td> ${tempCustomer.email} </td>
			     	<td> ${tempCustomer.phone} </td>
			     	<td> <a href="${deleteCustomerLink}" class="btn btn-danger">Delete</a></td>

			     </tr>
			    </c:forEach>
			    
			    
			</table>
                

 <jsp:include page="adminFooter.jsp"/>   