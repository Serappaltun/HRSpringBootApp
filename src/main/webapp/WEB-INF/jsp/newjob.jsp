<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">

<title>HR Application</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">


</head>
<body>
	<div role="navigation">
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
	</div>

	<h1>Add new Job</h1>

	<form:form modelAttribute="form">
		<div class="table-responsive">
			<table class="table table-bordered" style="width: 300px">
				<tr>
					<td>Job Title :</td>
					<td><form:input type="text" path="jobtitle" /></td>
				</tr>
				<tr>
					<td>Job Description:</td>
					<td><form:input type="text" path="jobdescription" /></td>
				</tr>
				<tr>
					<td>Date :</td>
					<td><form:input type="date" path="lastdate" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input class="btn btn-primary btn-sm" name="Save"
						type="submit" value="submit" /></td>
				</tr>
			</table>
		</div>
	</form:form>

	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>





