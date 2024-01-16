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
		      <form action="/otp" method="post" class="form-horizontal templatemo-login-form-2 templatemo-container" role="form">
                <div class="mb-3">
                    <h2 align="middle">CONFIRM OTP</h2>
                </div>
                <div class="col-4 ps-5">
                    <label for="staticEmail2" class="visually-hidden">Confirm OTP:</label>
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="Confirm OTP:">
                </div>
                <div class="col-4">
                    <label for="inputPassword2" class="visually-hidden">OTP</label>
                    <input type="text" class="form-control" name="otp" placeholder="OTP">
                </div>
                <div class="col-3">
                    <button type="submit" class="btn btn-secondary">Resend OTP</button>
                </div>
                <div class="row justify-content-md-end my-4 pe-5">
                    <div class="col-md-7">
                        <button type="submit" class="btn btn-secondary">Submit</button>
                        <button type="submit" class="btn btn-secondary me-4">Cancel</button>
                    </div>
                </div>
            </form>
		</div>
	</div>
</body>
</html>