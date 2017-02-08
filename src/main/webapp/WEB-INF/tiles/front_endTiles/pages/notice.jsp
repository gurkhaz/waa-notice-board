<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
 <section class="banner">
    	<div class="container">
		<div >
        	<div>
            	<h2 style="font-size: 46px;  color: #ffffff;   margin-bottom: 30px !important;   margin-top: 30px !important;">Notification</h2>
                 
            </div>
        <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Title</th>
                       <th>Event Date</th> 
					    <th>Venue</th>
					    <th>Faculty</th>
                       
                        <th>Description</th>
                         <th>Published Date</th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${Notice}" var="notice">
                                       <tr>
                        <td><c:out value="${notice.title}"/></td>
                        <td><c:out value="${notice.eventDate}"/></td>
                        <td><c:out value="${notice.venue}"/></td>
                        <td><c:out value="${notice.faculty}"/></td>
                        <td><c:out value="${notice.description}"/></td>
                        <td><c:out value="${notice.addDate}"/></td>
                        
                    </tr>
        
              </c:forEach> 
                   
                </tbody>
            </table>
			
		</div>
		</div>

</div>

    </section><!-- banner end -->
    