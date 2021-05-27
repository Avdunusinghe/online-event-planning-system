<jsp:include page="adminHeader.jsp"/>
              <!-- Define jstl  core -->
                <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
               
    			<%@ page import="java.util.*, com.sponsors.model.Sponsor" %>  
               <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Sponsor List</h1>
                        
                        
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Sponsor</li>
                        </ol> 
                        
                                      
                </main>
              
               <div class="card" style="width:100%;">
			               	<div class="card-body">
			               		
			               		
			               			
								    	
					                <table class = "table table-hover" style="width:100%;" > 
					    				<tr>
						      				<th scope="col" style="width:10%;">Sponsor Id</th>
						      				<th scope="col" style="width:20%;">Name</th>
						      				<th scope="col" style="width:20%;">Email</th>
						      				<th scope="col" style="width:20%;">address</th>
						      				<th scope="col" style="width:10%;">Phone</th>
						      				<th scope="col" style="width:10%;"></th>
						      				<th scope="col" style="width:10%;"></th>
					    				</tr>
								    <c:forEach var="spons" items="${sponsor_list}">
								    	<tr>
								    	<c:url var="deleteSponsorLink" value = "SponsorDeleteServlet">
								    		<c:param name="sponsorId" value="${spons.sponsorId}"></c:param>
								    	</c:url>
								    	
								     	<td> ${spons.sponsorId}</td>
								     	<td> ${spons.name} </td>
								     	<td> ${spons.email} </td>
								     	<td> ${spons.address} </td>
								     	<td> ${spons.phone} </td>
								     	
								     	<c:url value = "updateSponsor.jsp" var = "updateSponsorLink">
								     			<c:param name = "sponsorId" value = "${spons.sponsorId}"/>
							    				<c:param name = "name" value = "${spons.name}"/>
												<c:param name = "email" value = "${spons.email}"/>
												<c:param name = "address" value = "${spons.address}"/>
												<c:param name = "phone" value = "${spons.phone}"/>
			    						</c:url>
								     		
								     	<td> <a href="${updateSponsorLink}" class="btn btn-success" >Update</a></td> 
								     	<td><a href="${deleteSponsorLink}" class="btn btn-danger">Delete</a></td> 
								     	
					
								     </tr>
								    </c:forEach>
								    
								    
								</table>
			             </div>
               
               </div>
               
                

 <jsp:include page="adminFooter.jsp"/>   