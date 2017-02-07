<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <section class="banner">
    	<div class="container">           
            
            <div class="top_form  pull-left">
                <h1>Sign Up</h1>
               <form:form modelAttribute="student" method="post" action="signup">
                    <div class="small_input left">
                       
                        <form:input path="firstName"  type="text" placeholder="First name" />
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
                    <select path="faculty">
                      <option value="">Faculty</option>
                      <option value="Compro">Compro</option>
                      <option value="MBA">MBA</option>
                      
                    </select>
                     </div>
                    <div class="small_input right">
                    <select path="entry">
                      <option value="">Entry</option>
                      <option value="January">January</option>
                      <option value="April">April</option>
                      <option value="August">August</option>
                      <option value="October">October</option>
                    </select>
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