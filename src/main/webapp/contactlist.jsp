<jsp:include page="adminHeader.jsp"/>
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Our Contact Us Clients</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Contact Clients</li>
                        </ol>                
               </main>
                <!-- Define jstl  core -->
               		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
                 	
                 	<!-- Import contact java class and util -->
    				<%@ page import="java.util.*, com.contact.model.Contact" %>
    			
    			<!-- contact list table -->
                <table  class="table table-hover" style="width:100%;">
    				<tr>
	      			<th scope="col">Contact Id</th>
	      				<th scope="col">Name</th>
	      				<th scope="col">Email</th>
	      				<th scope="col">Subject</th>
	      				<th scope="col">Message</th>
	      				<th scope="col"></th>
	      				
    				</tr>
    			<c:forEach var="contactlist" items="${contact}">
    				<c:set var = "messageId" value = "${contactlist.messageId }" ></c:set>
    				<c:set var = "name" value = "${contactlist.name }" ></c:set>
					<c:set var = "email" value = "${contactlist.email }" ></c:set>
					<c:set var = "subject" value = "${contactlist.subject }" ></c:set>
					<c:set var = "message" value = "${contactlist.message }" ></c:set>
			    <tr>
			    	<c:url var="deleteContactLink" value = "ContactDeleteServlet">
			    		<c:param name="messageId" value="${contactlist.messageId}"></c:param>
			    	</c:url>
			      <td>${contactlist.messageId}</td>
			      <td>${contactlist.name}</td>
			      <td>${contactlist.email}</td>
			      <td>${contactlist.subject}</td>
			      <td>${contactlist.message}</td>
			      
			      <c:url value = "Updatecontact.jsp" var="updateContactLink" >
			    		<c:param name = "messageId" value = "${contactlist.messageId}"/>
			    		<c:param name = "name" value = "${contactlist.name}"/>
						<c:param name = "email" value = "${contactlist.email}"/>
						<c:param name = "subject" value = "${contactlist.subject}"/>
						<c:param name = "message" value = "${contactlist.message}"/>
			      </c:url>
			      <td> <a href="${deleteContactLink}" class="btn btn-danger">Delete</a></td>
			    </tr>
			  </c:forEach>
			</table>
 <jsp:include page="adminFooter.jsp"/>                