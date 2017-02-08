<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Product <small>Control panel</small>
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

					<h3 class="box-title">Add Product</h3>
					<h1>
						<!-- Hello <b><c:out value="${user.firstName}" /></b>  -->
					</h1>
					<div class="col-md-6">
						<form:form action="editNotification" modelAttribute="notice"  method="POST"> 
						<div class="form-group">
								<label for="exampleInputEmail1">Title</label>
								<form:input path="title"  cssClass="form-control" />
								<%-- <form:errors path="firstName"></form:errors> --%>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Event Date</label>
								<form:input path="eventDate" type="text" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Add date</label>
								<form:input path="addDate" type="text" cssClass="form-control"  />
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">Venue</label>
								<form:input path="venue" type="text" cssClass="form-control"  />
							</div>
						
						 <div class="form-group">
								<label for="exampleInputEmail1">Faculty</label>
								  <form:select path="faculty" cssClass="form-control">
								<form:option value="" label="Select Faculty" />
								<form:option value="Compro" label="Compro" />
								<form:option value="MBA" label="MBA" />
							</form:select>
							</div> 
							
							<div class="form-group">
								<label for="exampleInputEmail1">Description</label>
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
