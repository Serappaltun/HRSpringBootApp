<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

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

	<h1>List of JobList</h1>
	<form:form method="POST" action="/showDetails">
		<table class="table table-bordered" style="width: 500px">
			<tr>
				<th>Job Title</th>
				<th>Job Description</th>
				<th>Details</th>
			</tr>
			<c:forEach items="${joblist}" var="job">
				<tr>
					<td align="center">${job.jobtitle}</td>
					<td align="center">${job.jobdescription}</td>
					<!-- 				<td align="center"><a href="details.html">Details</a></td> -->
					<td align="center"><input type="submit" value="Submit" /></td>
				</tr>
			</c:forEach>
		</table>
	</form:form>
</body>
</html>

