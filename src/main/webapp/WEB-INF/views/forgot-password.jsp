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
<title>Forgot Password</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	

</head>
<body class="templatemo-bg-gray templatemo-bg-image-1">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">Password Reset</h1>
		        </div>
		        <form:form action="/otp" method="post" modelAttribute="account"
				class="form-horizontal templatemo-forgot-password-form templatemo-container" role="form">
			         <div class="form-group">
			          <div class="col-md-12">
			          	<form:input path="email" class="form-control" placeholder="Your email"/>
	               		<form:errors path="email" style="color:red;"/>
			          </div>              
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <input type="submit" value="Send OTP" class="btn btn-warning">
	                    <br><br>
	                    <a href="/login">Login</a> |
	                    <a href="/sign-up">Sign Up</a> |
	                    <a href="/index">Home</a>
			          </div>
			        </div>
			      </form:form>
				</div>
		
</body>
</html>