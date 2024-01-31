<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style >
#mySlider {
  overflow: hidden;
  position: relative;
  width: 100%;
  height: 300px;
}

.singleSlide {
  background-size: cover;
  height: 300px;
  position: absolute;
  left: 100%;
  width: 100%;
  top: 0px;
}

.slideOverlay {
  background-color: rgba(0, 0, 0, 0.5);
  padding: 50px;
}

#sliderNav {
  position: relative;
  top: -175px;
}

#sliderNav:hover {
  cursor: pointer;
}

#sliderPrev {
  position: relative;
  float: left;
  left: 50px;
}

#sliderNext {
  position: relative;
  float: right;
  right: 50px;
}

#sliderNext img,
#sliderPrev img {
  width: 32px;
}

@-webkit-keyframes slideIn {
  100% {
    left: 0;
  }
}

@keyframes slideIn {
  100% {
    left: 0;
  }
}

.slideInRight {
  left: -100%;
  -webkit-animation: slideIn 1s forwards;
  animation: slideIn 1s forwards;
}

.slideInLeft {
  left: 100%;
  -webkit-animation: slideIn 1s forwards;
  animation: slideIn 1s forwards;
}

@-webkit-keyframes slideOutLeft {
  100% {
    left: -100%;
  }
}

@keyframes slideOutLeft {
  100% {
    left: -100%;
  }
}

.slideOutLeft {
  -webkit-animation: slideOutLeft 1s forwards;
  animation: slideOutLeft 1s forwards;
}

@-webkit-keyframes slideOutRight {
  100% {
    left: 100%;
  }
}

@keyframes slideOutRight {
  100% {
    left: 100%;
  }
}

.slideOutRight {
  -webkit-animation: slideOutRight 1s forwards;
  animation: slideOutRight 1s forwards;
}

</style>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<section class="tm-welcome-section">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="img/light.png" alt="Light" class="light light-1">
          <img src="img/light.png" alt="Light" class="light light-2">
          <img src="img/light.png" alt="Light" class="light light-3">  
        </div>        
        <div class="row tm-welcome-content">
          <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="img/header-line.png" alt="Line" class="tm-header-line">&nbsp;Welcome To&nbsp;&nbsp;<img src="img/header-line.png" alt="Line" class="tm-header-line"></h2>
          <h2 class="gold-text tm-welcome-header-2">Cafe House</h2>
          <a href="#main" class="tm-more-button tm-more-button-welcome">Details</a>      
        </div>
        <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
      </div>      
    </section>
    <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
          <div class="col-lg-8 col-md-8 col-sm-6">
            <h2 class="tm-section-header gold-text tm-handwriting-font">The Best Coffee for you</h2>
            
            <div id="mySlider">
            
            </div>
				<div id="sliderNav">
				  <div id="sliderPrev" onclick="prevSlide();"><img src="img/left-arrow.png"></div>
				  <div id="sliderNext" onclick="nextSlide();"><img src="img/right-arrow.png"></div>
				</div>
            
   
            <a href="/menu" class="tm-more-button margin-top-30">Read More</a> 
          </div>
          <div class="col-lg-2 col-md-2 col-sm-3 tm-welcome-img-container">
            <div class="inline-block shadow-img">
              <img src="img/drink/ColdBrewPhuCBonTu.webp" alt="Image" class="img-circle img-thumbnail">  
            </div>  
            <div class="inline-block shadow-img">
              <img src="img/drink/CloudTeaBerry.webp" alt="Image" class="img-circle img-thumbnail">  
            </div>  
            <div class="inline-block shadow-img">
              <img src="img/drink/HiTeaDaoKombucha.webp" alt="Image" class="img-circle img-thumbnail">  
            </div> 
                        
          </div>    
          <div class="col-lg-2 col-md-2 col-sm-3 tm-welcome-img-container">
            <div class="inline-block shadow-img">
              <img src="img/drink/CaramelDa.webp" alt="Image" class="img-circle img-thumbnail">  
            </div>  
            <div class="inline-block shadow-img">
              <img src="img/drink/ColdBrewTruyenThong.webp" alt="Image" class="img-circle img-thumbnail">  
            </div> 
            <div class="inline-block shadow-img">
              <img src="img/drink/FrostyCaramel.webp" alt="Image" class="img-circle img-thumbnail">  
            </div>  
                        
          </div>          
        </section>          

        </section>         
       <%--  <section class="tm-section tm-section-margin-bottom-0 row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Popular Items</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div class="col-lg-12 tm-popular-items-container">
          	<c:forEach var="product" items="${bestsells}" varStatus="status">
			    <c:if test="${status.index < 3}">
			        <div class="tm-popular-item">
		              <img src="img/drink/${product.images.name}" alt="Popular" class="tm-popular-item-img">
		              <div class="tm-popular-item-description">
		                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">a</span>mericano</h3><hr class="tm-popular-item-hr">
		                <p>${product.description}</p>
		                <div class="order-now-container">
		                  <a href="/best-sell" class="order-now-link tm-handwriting-font">Order Now</a>
		                </div>
		              </div>              
		            </div>
			    </c:if>
            </c:forEach>
          </div>          
        </section> --%>

        <%-- <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Today's Special</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>          
          <div class="col-lg-12 tm-special-container margin-top-60">
            <div class="tm-special-container-left"> <!-- left -->
              <div class="tm-special-item">
                <div class="tm-special-img-container">
                  <img src="img/drink/${bestsells[0].image}" style="width:520px;height:400px;" alt="Special" class="tm-special-img img-responsive">  
                  <a href="#">
                    <div class="tm-special-description">
                      <h3 class="tm-special-title">Donec pede justo</h3>
                      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>  
                    </div>            
                  </a>
                </div>
              </div>
            </div>
            <div class="tm-special-container-right"> <!-- right -->
              <div>
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="img/drink/${bestsells[1].image}" style="width:360px;height:207px;" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <h3 class="tm-special-title">Etiam sit amet</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                      </div>
                    </a>
                  </div>
                </div>  
              </div>
              <div class="tm-special-container-lower">
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="img/drink/${bestsells[2].image}" style="width:155px;height:155px;" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <p>Vivamus elementum</p>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="img/drink/${bestsells[3].image}" style="width:155px;height:155px;" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <p>Quisque rutrum.</p>
                      </div>
                    </a>
                  </div>
                </div>  
              </div>              
            </div>
          </div>
        </section> --%>
        <section class="tm-section">
          <div class="row">
            <div class="col-lg-12 tm-section-header-container">
              <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Daily Menu</h2> 
              <div class="tm-hr-container"><hr class="tm-hr"></div> 
            </div>  
          </div>          
          <div class="row">
            <div class="tm-daily-menu-container margin-top-60">
              <div class="col-lg-4 col-md-4">
                <img src="img/menu-board.png" alt="Menu board" class="tm-daily-menu-img">      
              </div>            
              <div class="col-lg-8 col-md-8">
               
                 <c:forEach items="${page.content}" var="drink" >
							<div class="tm-product">
							<%-- <c:forEach items="${DRINK}" var="image">
								<img src="img/drink/${image.name}" alt="Product" width="130" >
							</c:forEach> --%>
								<img src="img/drink/CFDenDa.jpg" alt="" width="130" >
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
                <a href="/menu" class="tm-more-button margin-top-30">Read More</a>    
              </div>
            </div>
          </div>          
        </section>
      </div>
    </div> 
</body>

<script >
//Mỗi slide sẽ có một chỉ số của riêng nó, để đơn giản chúng ta sẽ gán chỉ số mảng cho các slide
var slideIndex = 0;
// Cho ta biết chúng ta đang ở slide nào
var currentSlideIndex = 0;
// Mảng lưu các slide của chúng ta
var slideArray = [];

// Hàm này sẽ giúp chúng ta tạo ra các đối tượng slide
// bao gồm: tiêu đề, mô tả, ảnh, đường dẫn khi nhấp vào button trên slide, 
// và id của mỗi slide
function Slide(background) {
  
  this.background = background;
  
  // we need an id to target later using getElementById
  this.id = "slide" + slideIndex;
  // Add one to the index for the next slide number
  slideIndex++;
  // Add this Slide to our array
  slideArray.push(this);
}


// Tạo các đối tượng slide, bạn có thể tạo nhiều hơn

var slide1 = new Slide(
  "img/slide1.webp"
);

var slide2 = new Slide(
		"img/slide2.webp"
);

var slide3 = new Slide(
		"img/slide3.webp"
);

// Từ mảng slide đã tạo, ta tiến hành đưa nó vào source HTML
function buildSlider() {
  // A variable to hold all our HTML
  var myHTML;

  // Go through the Array and add the code to our HTML
  for (var i = 0; i < slideArray.length; i++) {
    myHTML +=
      "<div id='" +
      slideArray[i].id +
      "' class='singleSlide' style='background-image:url(" +
      slideArray[i].background +
      ");'>" +

      "</div>" +
      "</div>";
  }

  // Đưa HTML chúng ta vừa tạo vào id #mySlider
  document.getElementById("mySlider").innerHTML = myHTML;

  // Đồng thời hiển thị slide đầu tiên
  document.getElementById("slide" + currentSlideIndex).style.left = 0;
}

// Gọi hàm thực thi
buildSlider();
</script>
<script >
//Xử lý bấm nút chuyển slide trước đó
function prevSlide() {
  // Tìm slide trước đó
  var nextSlideIndex;
  // Nếu chỉ số slide là 0, về slide cuối
  if (currentSlideIndex === 0) {
    nextSlideIndex = slideArray.length - 1;
  } else {
    // Nếu không thì giảm chỉ số đi 1
    nextSlideIndex = currentSlideIndex - 1;
  }

  // Ẩn slide hiện tại, hiện slide "currentSlideIndex"
  document.getElementById("slide" + nextSlideIndex).style.left = "-100%";
  document.getElementById("slide" + currentSlideIndex).style.left = 0;

  // Thêm class để chuyển slide có animation đã định nghĩa ở bước 3
    document
    .getElementById("slide" + nextSlideIndex)
    .setAttribute("class", "singleSlide slideInLeft");
  document
    .getElementById("slide" + currentSlideIndex)
    .setAttribute("class", "singleSlide slideOutRight");

  // Cập nhật giá trị slide hiện tại
  currentSlideIndex = nextSlideIndex;
}

// Xử lý bấm nút chuyển slide tiếp theo
// Cách xử lý tương tự như prevSlide đã trình bày ở trên
function nextSlide() {
  var nextSlideIndex;
  if (currentSlideIndex === slideArray.length - 1) {
    nextSlideIndex = 0;
  } else {
    nextSlideIndex = currentSlideIndex + 1;
  }

  document.getElementById("slide" + nextSlideIndex).style.left = "100%";
  document.getElementById("slide" + currentSlideIndex).style.left = 0;

  document
    .getElementById("slide" + nextSlideIndex)
    .setAttribute("class", "singleSlide slideInRight");
  document
    .getElementById("slide" + currentSlideIndex)
    .setAttribute("class", "singleSlide slideOutLeft");

  currentSlideIndex = nextSlideIndex;
}
setInterval("nextSlide()", 4000);
</script>
</html>