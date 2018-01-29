<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

</head>
<body>

		<div class="navbar navbar-inverse">
			<a href="/index" class="navbar-brand">HR Application</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="addNewJob">New Job</a></li>
					<li><a href="listJobs">All Jobs</a></li>
					<li><a href="login">Login</a></li>
				</ul>
			</div>
		</div>
		
		<div class="row text-center">

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <h3>Gradle</h3>
            <div class="card-body">
              
              <p class="card-text">
              Gradle Android uygulamasi gelistirme asamalarini otomatize eden bir build sistemidir. </p>
            </div>
           
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
           <h3>Spring Framework</h3>
            <div class="card-body">
              
              <p class="card-text">
              Spring Framework Java ve .NET için gelistirilmis 
               </p> <br/>
              <br/>
              <br/>
            </div>
           
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            <h3>Spring Boot</h3>
            <div class="card-body">
              <p class="card-text"> Spring Boot vakit kaybini en aza indiren bir Spring Freamework'udur.</p>
             
              
            </div>
          
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
           <h3>MAVEN</h3>
            <div class="card-body">
                <p class="card-text">
              Maven için kütüphaneler yani JAR dosyalari birer bagimlilik(dependency) olarak adlandirilir. 
              </p> </div>
          
          </div>
        </div>

      </div>
      <!-- /.row -->

  
    <!-- /.container -->

    <!-- Footer -->
   
      <div class="container">
        <p class="m-0 text-center text-white">2018</p>
      </div>
      <!-- /.container -->


	
	<script src="static/js/jquery-1.11.1.min.js"></script>    
    <script src="static/js/bootstrap.min.js"></script>
</body>
</html>