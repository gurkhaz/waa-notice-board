<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Notice <small>Control panel</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Dashboard</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- Main row -->
	<div class="row">
		<!-- Left col -->
		<section class="col-lg-12 connectedSortable">
			<!-- TO DO List -->
			<div class="box box-primary">
				<div class="box-header">
					<i class="ion ion-clipboard"></i>

					<h3 class="box-title">Add Notice</h3>
					<h1>
						<!-- Hello <b><c:out value="${user.firstName}" /></b>  -->
					</h1>
					<div class="col-md-6">
						<form:form action="addNotification" modelAttribute="notice"  method="POST"> 
						<div class="form-group">
								<label for="exampleInputEmail1"><spring:message code='notification.form.title'/></label>
								<form:input path="title" cssClass="form-control" />
								<%-- <form:errors path="firstName"></form:errors> --%>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><spring:message code='notification.form.eventDate'/></label>
								<form:input path="eventDate" type="text" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1"><spring:message code='notification.form.addDate'/></label>
								<form:input path="addDate" type="text" cssClass="form-control"  />
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1"><spring:message code='notification.form.venue'/></label>
								<form:input path="venue" type="text" cssClass="form-control"  />
							</div>
						
						 <div class="form-group">
								<label for="exampleInputEmail1"><spring:message code='notification.form.faculty'/></label>
								  <form:select path="faculty" cssClass="form-control">
								<form:option value="" label="Select Faculty" />
								<form:option value="Compro" label="Compro" />
								<form:option value="MBA" label="MBA" />
							</form:select>
							</div> 
							
							<div class="form-group">
								<label for="exampleInputEmail1"><spring:message code='notification.form.description'/></label>
								<form:textarea path="description" rows="5" cols="30" cssClass="form-control"  />
							</div>
							<div class="form-group">
								<input type="submit" value="Submit"
									class="btn btn-success btn-sm" />
							</div>
						</form:form>
					</div>
				</div>
				<!-- /.box -->
		</section>
		<!-- /.Left col -->
	</div>
	<!-- /.row (main row) -->
	</div>
</section>
<!-- /.content -->
