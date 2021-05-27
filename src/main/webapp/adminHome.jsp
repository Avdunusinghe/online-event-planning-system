<jsp:include page="adminHeader.jsp"/>
               
               
                
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    			<%@ page import="java.util.*, com.user.model.User" %>
       
                <c:if test = "${loginMsg != null}">
     				<script>
     	 				toastr.success('${loginMsg}')
   		 			</script>
     			</c:if> 

 <jsp:include page="adminFooter.jsp"/>  
           
                
            
         