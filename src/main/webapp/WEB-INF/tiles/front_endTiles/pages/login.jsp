  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
  <section class="banner">
    	<div class="container">           
            
            <div class="top_form">
                <h1><spring:message code='login.form.title'/></h1>
                <form method="" action="">
                    <input type="text" placeholder="Username" required>
                    <input type="password" placeholder="Password" required>
                  
                    <input type="checkbox" placeholder="" >Remember me
                    <input type="submit" value="Login">
                    
                </form>
    		</div>
        </div><!-- container end -->
    </section><!-- banner end -->