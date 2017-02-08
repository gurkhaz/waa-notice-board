<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<spring:message code="user.firstName" var="firstname"/>
<spring:message code="user.lastName" var="lastname"/>
<spring:message code="user.email" var="email"/>
<spring:message code="user.userName" var="username"/>
<spring:message code="user.password" var="password"/>
<spring:message code="user.address" var="address"/>
<spring:message code="user.faculty" var="faculty"/>

 <section class="banner">
    	<div class="container">           
            
            <div class="top_form  pull-left">
                <h1><spring:message code='signUp.signUp'/></h1>
               <form:form modelAttribute="student" method="post" action="signup">
                    <div class="small_input left">
                       
                        <form:input path="firstName"  type="text" placeholder="${firstname}" />
                    </div>
                    <div class="small_input right">
                       
                        <form:input path="lastName"  type="text" placeholder="Last name" />
                    </div>
                    <br class="clear">
                  
                      <form:input path="email"  type="email" placeholder="Email" />
                      <form:input path="username"  type="text" placeholder="Username" />
                      <form:input path="password"  type="password" placeholder="Password" />
                   <form:input path="address"  type="text" placeholder="Address" />
                   
                    
                     <div class="small_input left">
                                      
                     <form:select path="faculty" >
								<form:option value="" label="Select Faculty" />
								<form:option value="Compro" label="Compro" />
								<form:option value="MBA" label="MBA" />
							</form:select>
                     </div>
                    <div class="small_input right">
                   <form:select path="entry" >
                      <form:option value="" label="Select Entry"/>
                      <form:option value="January" label="January"/>
                      <form:option value="April" label="April"/>
                      <form:option value="August" label="August"/>
                      <form:option value="October" label="October"/>
                   </form:select>
                    </div> <br class="clear">
                    <input type="submit" value="Sign Up">
                    
                </form:form>
    		</div>
            
            <div class="why_chose  pull-right">
            	<h1>Features</h1>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                
                <ul class="fa-ul">
                	<li><i class="fa-li fa fa-angle-right"></i>Get notification on email</li>
                    <li><i class="fa-li fa fa-angle-right"></i>All notification at one place</li>
                    <li><i class="fa-li fa fa-angle-right"></i>Link with all student</li>
                    <li><i class="fa-li fa fa-angle-right"></i>Filter notification</li>
                </ul>
                
            </div><!-- why choose  -->
            
        </div><!-- container end -->
    </section><!-- banner end -->