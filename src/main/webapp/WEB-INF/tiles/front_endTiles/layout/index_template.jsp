<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Test Notice Board</title>
<!-- Bootstrap Core CSS -->
<link href="/resources/front_end/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/front_end/css/style.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/front_end/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- header section sanjay-->
	<tiles:insertAttribute name="header" />
	<!-- header section sanjay-->

	<!-- Content Wrapper. Contains page content -->

	<!-- content sanjay template -->
	<tiles:insertAttribute name="content" />
	<!-- content sanjay template -->

	<!-- footer sanjay template -->
	<tiles:insertAttribute name="footer" />
	<!-- footer sanjay template -->

	<!-- jQuery -->
	<script src="/resources/front_end/js/jquery.js"></script>
	<script src="/resources/front_end/js/bootstrap.min.js"></script>
	
	  <script type="text/javascript" src="https://cdn.datatables.net/r/bs-3.3.5/jqc-1.11.3,dt-1.10.8/datatables.min.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').DataTable();
			} );
		</script>

</body>
</html>