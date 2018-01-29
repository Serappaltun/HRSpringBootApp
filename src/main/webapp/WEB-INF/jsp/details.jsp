<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HR Application</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
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

	<h3>List of job lists</h3>


	<form:form commandName="job" method="post"
		class="form-horizontal form-width">
		<table>
			<tr>
				<td align="center">${job.jobtitle}</td>
				<td align="center">${job.jobdescription}</td>
			</tr>
		</table>
		<%--     <form:select id="categoryList" path="id"> --%>
		<%-- 			<c:forEach items="${joblist}" var="joblist"> --%>
		<%-- 				<form:option value="${joblist.jobtitle}" label="${joblist.jobtitle}" /> --%>
		<%-- 			</c:forEach> --%>
		<%-- 		</form:select> --%>
	</form:form>
	<h3>BASVURU</h3>
	<form:form modelAttribute="form">
		<div class="table-responsive">
			<table class="table table-bordered" style="width: 300px">
				<tr>
					<td>Name :</td>
					<td><form:input type="text" path="name" /></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><form:input type="text" path="email" /></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><form:input type="text" path="address" /></td>
				</tr>
				<tr>
					<td>Thoughts on Job :</td>
					<td><form:input type="textarea" path="thoughts" /></td>
				</tr>
				<tr>
					<td>Date :</td>
					<td>
						<form method="POST" action="/details"
							enctype="multipart/form-data">
							<input type="file" name="file" /><br /> <br /> <input
								type="submit" value="Submit" />
						</form>
					</td>
					<td><span>${message}</span></td>

				</tr>


				<tr>
					<td></td>
					<td><input class="btn btn-primary btn-sm" name="Save"
						type="submit" value="submit" /></td>
				</tr>
			</table>

		</div>
	</form:form>


</body>
</html>