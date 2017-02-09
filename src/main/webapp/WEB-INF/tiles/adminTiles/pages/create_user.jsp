<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		User <small>Control panel</small>
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

					<h3 class="box-title">Add User</h3>
					<h1>
						<!-- Hello <b><c:out value="${user.firstName}" /></b>  -->
					</h1>
					<div class="col-md-6">
						<form:form action="createUser" method="POST" modelAttribute="user"> 
						<div class="form-group">
								<label for="exampleInputEmail1">First Name</label>
								<form:input path="firstName" cssClass="form-control" />
								<%-- <form:errors path="firstName"></form:errors> --%>
							</div>
							<div class="form-group">
								<label for="lastName">Last Name</label>
								<form:input id="lastName" path="lastName" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label for="address">Address</label>
								<form:input id="address" path="address" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label for="username">UserName</label>
								<form:input id="username" path="username" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label for="password">Password</label>
								<form:input id="password" path="password" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label for="role">Role</label>
								<form:select path="role" cssClass="form-control">
								<form:option value="" label="Select User" />
								<form:option value="user" label="User" />
								<form:option value="admin" label="Admin" />
							</form:select>
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
