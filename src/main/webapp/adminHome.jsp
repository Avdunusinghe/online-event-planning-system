<jsp:include page="adminHeader.jsp"/>
               
               
                
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    			<%@ page import="java.util.*, com.user.model.User" %>
       			
       			 <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Welcome Admin,${user.name}</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Admin</li>
                        </ol> 
                        
                              
                </main>
                <c:if test = "${loginMsg != null}">
     				<script>
     	 				toastr.success('${loginMsg}')
   		 			</script>
     			</c:if> 

 <jsp:include page="adminFooter.jsp"/>  
           
                
            
         