<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	 <div class="tm-top-header">
      <div class="container">
        <div class="row">
          <div class="tm-top-header-inner">
            <div class="tm-logo-container"> 
              <img src="/img/logo.png" alt="Logo" class="tm-site-logo">
              <h1 class="tm-site-name tm-handwriting-font">Cafe House</h1>
            </div>
            <div class="mobile-menu-icon">
              <i class="fa fa-bars"></i>
            </div>
            <nav class="tm-nav">
              <ul>
                <li><a href="/index" class="${active == '1' ? 'active' : ''}">Home</a></li>
                <li><a href="/best-sell" class="${active == '2' ? 'active' : ''}">Best Sell</a></li>
                <li><a href="/menu" class="${active == '3' ? 'active' : ''}">Menu</a></li>
                <li><a href="/contact" class="${active == '4' ? 'active' : ''}">Contact</a></li>
                <li><a href="/admin/index" class="${active == '5' ? 'active' : ''}">Manager</a></li>
                <li><a href="/login" >Login</a></li>
                <li><a href="/sign-up">Sign Up</a></li>
              </ul>
            </nav>   
          </div>           
        </div>    
      </div>
    </div>
    
    
    
    
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
   <script type="text/javascript" src="js/templatemo-script.js"></script> 
    
    
</body>
</html>