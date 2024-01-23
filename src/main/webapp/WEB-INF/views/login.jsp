<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-social.css" rel="stylesheet" type="text/css">	
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	

</head>
<body class="templatemo-bg-image-1">
	<div class="container">
		<div class="col-md-12">
		<form:form action="/login" method="post" modelAttribute="account"
			class="form-horizontal templatemo-login-form-2 templatemo-container" role="form">
				<div class="row">
					<div class="col-md-12">
						<h1>Login</h1>
					</div>
				</div>
				<div class="row">
					<div class="templatemo-one-signin col-md-6">
				        <div class="form-group">
				          <div class="col-md-12">		          	
				            <label for="username" class="control-label">Email</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-user"></i>
				            	<form:input type="email" name = "email" class="form-control"/>
               					<form:errors path="email" style="color:red;"/>
				            </div>		            		            		            
				          </div>              
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <label for="password" class="control-label">Password</label>
				            <div class="templatemo-input-icon-container">
				            	<i class="fa fa-lock"></i>
				            	<form:input type="password" name = "password" class="form-control"/>
               					<form:errors path="password" style="color:red;"/>
				            </div>
				          </div>
				        </div>
				        <div class="form-group">
				          <div class="col-md-12">
				            <div class="checkbox">
				                <label>
				                  <input type="checkbox"> Remember me
				                </label>
				            </div>
				          </div>
				        </div>
				        <label class="text-dark">${notification}</label>
				        <div class="form-group">
				          <div class="col-md-12">
				            <input type="submit" value="LOG IN" class="btn btn-warning">
				          </div>
				        </div>
				        <div class="form-group">
				          	<div class="col-md-12">
				        		<a href="/forgot-password" class="text-center">Cannot login?</a>
				        		<a href="/sign-up" class="pull-right">Sign up</a> <br>
				        		<a href="/index" class="pull-right">Home</a>
				       	 	</div>
				    	</div>
					</div>
					<div class="templatemo-other-signin col-md-6">
						<label class="margin-bottom-15">
							One-click sign in using other services. Credit goes to <a rel="nofollow" href="http://lipis.github.io/bootstrap-social/">Bootstrap Social</a> for social sign in buttons.
						</label>
						<a class="btn btn-block btn-social btn-facebook margin-bottom-15">
						    <i class="fa fa-facebook"></i> Sign in with Facebook
						</a>
						<a class="btn btn-block btn-social btn-twitter margin-bottom-15">
						    <i class="fa fa-twitter"></i> Sign in with Twitter
						</a>
						<a class="btn btn-block btn-social btn-google-plus">
						    <i class="fa fa-google-plus"></i> Sign in with Google
						</a>
					</div>   
				</div>	
			</form:form>		      		      
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
  crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular-route.min.js"></script>

</body>
</html>