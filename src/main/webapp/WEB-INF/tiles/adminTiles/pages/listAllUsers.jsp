<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>



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

					<h3 class="box-title">User List</h3>
					<h1>
						<!-- Hello <b><c:out value="${user.firstName}" /></b>  -->
					</h1>
					<div class="col-md-6">
					
					
			 	<table id="plist" class="table table-striped table-bordered" >
					<thead>
						<tr>
							<th>Id</th>
						    <th>First Name</th> 
						    <th>Last Name</th>
						    <th>Address</th>
						    <th>Role</th>
						    <th>Action</th>
						<tr>
					</thead>
					<tbody>
						 <c:forEach items="${listUsers}" var="item">
					            <tr>
					            	<td><c:out value="${item.id}"/></td>
					            	<td><c:out value="${item.firstName}"/></td>
					            	<td><c:out value="${item.lastName}"/></td>
					            	<td><c:out value="${item.address}"/></td>
					            	<td><c:out value="${item.role}"/></td>
					            	<td>
					            		<%-- <button value="${notice.id}" onclick="deleteProduct(this)" class="btn btn-danger btn-xs">Delete</button> --%>
					            		<a class="btn btn-warning btn-xs" href="user/edit/${item.id}">Edit</a>
					            		<a class="btn btn-warning btn-xs" href="deleteUser/${item.id}">Delete</a>
					            	</td>
					            </tr>
					     </c:forEach> 
				     </tbody>
			     </table>		
					
					
					
		
					
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
