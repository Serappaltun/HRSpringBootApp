<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>HR Application</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<title>HR Application</title>
</head>
<body>

	<div class="navbar navbar-inverse">
		<a href="/index.html" class="navbar-brand">HR Application</a>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="addNewJob">New Job</a></li>
				<li><a href="listJobs">All Jobs</a></li>
				<li><a href="login">Login</a></li>
			</ul>
		</div>
	</div>

	<div class="container">
		<form:form modelAttribute="form">
			<h2 class="form-heading">Log in</h2>
			<form:input type="text" path="name" class="form-control"
				autofocus="true" />
			<form:input type="password" path="password" class="form-control" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Log
				In</button>
		</form:form>
	</div>
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>