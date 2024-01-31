<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Menu</title>
<!-- 
Cafe House Template
http://www.templatemo.com/tm-466-cafe-house
-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Damion'
	rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

<style>
.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	border: 1px solid gray;
}

.pagination a.active {
	background-color:;
	color: aqua;
	border: 1px solid;
}

.pagination a:hover:not(.active) {
	background-color: aqua;
}

.pagination a:first-child {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
}

.pagination a:last-child {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}
</style>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="tm-main-section light-gray-bg">
		<div class="container" id="main">
			<!-- <section class="tm-section row">
          <div class="col-lg-9 col-md-9 col-sm-8">
            <h2 class="tm-section-header gold-text tm-handwriting-font">Variety of Menus</h2>
            <h2>Cafe House</h2>
            <p class="tm-welcome-description">This is free HTML5 website template from <span class="blue-text">template</span><span class="green-text">mo</span>. Fndimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Ettiam sit amet orci eget eros faucibus tincidunt.</p>
            <a href="#" class="tm-more-button margin-top-30">Read More</a> 
          </div>
          <div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
            <div class="inline-block shadow-img">
              <img src="img/1.jpg" alt="Image" class="img-circle img-thumbnail">  
            </div>              
          </div>            
        </section>    -->
			<section class="tm-section row">
				<div class="col-lg-12 tm-section-header-container margin-bottom-30">
					<h2 class="tm-section-header gold-text tm-handwriting-font">
						<img src="img/logo.png" alt="Logo" class="tm-site-logo"> Our
						Menus
					</h2>
					<div class="tm-hr-container">
						<hr class="tm-hr">
					</div>
				</div>
				<div>
					<div class="col-lg-3 col-md-3">
						<div class="tm-position-relative margin-bottom-30">
							<nav class="tm-side-menu">
								<ul>
									<li><a href="#" class="active">Cà Phê Highlight</a></li>
									<li><a href="#">Cà Phê Việt Nam</a></li>
									<li><a href="#">Cà Phê Máy</a></li>
									<li><a href="#">Trà Trái Cây</a></li>
									<li><a href="#">Trà Sữa</a></li>
									<li><a href="#">CloudTea Mochi</a></li>
									<li><a href="#">Hi-Tea Trà</a></li>
									<li><a href="#">Trà Xanh Tây Bắc</a></li>
									<li><a href="#">Đá xay Frosty</a></li>
									<li><a href="#">Chocolate</a></li>
									<li><a href="#">Cold Brew</a></li>
								</ul>
							</nav>
							<img src="img/vertical-menu-bg.png" alt="Menu bg"
								class="tm-side-menu-bg">
						</div>
					</div>
					<div class="tm-menu-product-content col-lg-9 col-md-9">
						<!-- menu content -->
						<c:forEach items="${page.content}" var="drink">
							<div class="tm-product">
								<img src="img/menu-1.jpg" alt="Product">
								<div class="tm-product-text">
									<h3 class="tm-product-title">${drink.name}</h3>
									<p class="tm-product-description">${drink.description }</p>
								</div>
								<div class="tm-product-price">
									<a href="#" class="tm-product-price-link tm-handwriting-font"><span
										class="tm-product-price-currency">$</span>30</a>
								</div>
							</div>
						</c:forEach>

						<div class="center">
							<div class="pagination">


								<%-- 	<a class="page-item ${page.first ? 'disabled' : ''}"
									href="/menu?p=${products.first}">&laquo;</a>
								 <a class="page-item ${page.first ? 'disabled' : ''}"
									href="/menu?p=${page.number-1}">Previous</a>
								 <a class="page-item ${page.last ? 'disabled' : ''}"
									href="/menu?p=${page.number+1}">Next</a>
								<a class="page-item ${page.last ? 'disabled' : ''}"
									href="/menu?p=${page.totalPages-1}">&raquo;</a> --%>

								<a class="page-item ${page.first ? 'disabled' : ''}"
									href="/menu?p=${drinks.first}">&laquo;</a>
								<c:forEach varStatus="i" begin="0" end="${page.totalPages - 1}">
									<a class="page-item ${drinks.number == i.index ? 'active' : ''}"
										href="/menu?p=${i.index}">${i.index + 1}</a>
								</c:forEach>
								<a class="page-item ${page.last ? 'disabled' : ''}"
									href="/menu?p=${page.totalPages-1}">&raquo;</a>



							</div>
						</div>


						<%-- <div class="pagination">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item ${page.first ? 'disabled' : ''}"><a
										class="page-link" href="/menu?p=${products.first}">First</a></li>
									<li class="page-item ${page.first ? 'disabled' : ''}"><a
										class="page-link" href="/menu?p=${page.number-1}">Previous</a></li>
									<li class="page-item ${page.last ? 'disabled' : ''}"><a
										class="page-link" href="/menu?p=${page.number+1}">Next</a></li>
									<li class="page-item ${page.last ? 'disabled' : ''}"><a
										class="page-link" href="/menu?p=${page.totalPages-1}">Last</a></li>
								</ul>
							</nav>
						</div> --%>
						<!-- <div class="tm-product">
                <img src="img/menu-2.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 2</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>20</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-3.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 3</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>15</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-4.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 4</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>25</a>
                </div>
              </div>
              <div class="tm-product">
                <img src="img/menu-5.jpg" alt="Product">
                <div class="tm-product-text">
                  <h3 class="tm-product-title">Americano 5</h3>
                  <p class="tm-product-description">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. Red ipsum.</p>
                </div>
                <div class="tm-product-price">
                  <a href="#" class="tm-product-price-link tm-handwriting-font"><span class="tm-product-price-currency">$</span>45</a>
                </div>
              </div> -->
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- JS -->
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="js/templatemo-script.js"></script>
	<!-- Templatemo Script -->

</body>
</html>