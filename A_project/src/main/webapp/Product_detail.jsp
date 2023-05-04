<%@page import="Model.CartDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
 String[] img ={"./Boardcss/image/goods_01.jpg", "./Boardcss/image/goods_02.jpg", "./Boardcss/image/goods_13.jpg", "./Boardcss/image/goods_19.jpg", "./Boardcss/image/goods_05.jpg", "./Boardcss/image/goods_06.jpg", "./Boardcss/image/goods_15.jpg", "./Boardcss/image/goods_23.jpg"};
 String[] product ={"Flower Dog 파우치", "Flower Dog 파우치 (제작)", "2023년도 Flower Dog 벽걸이 달력 (블랙)", "Flower Dog 에코백 (제작)", "2023년도 Flower Dog벽걸이 달력 (컬러)", "2023년도 Flower Dog벽걸이 달력 (제작)", "Flower Dog 텀블러", "Flower Dog 폰케이스"};
 String[] price ={"8500", "18500", "14000", "15000", "20000", "20000", "25000", "9000"};
 %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Flower Dog</title>
<!-- Font awesome CSS -->
<link href="./Boardcss/css/font-awesomeMK.min.css" rel="stylesheet">
  <!-- Favicon -->
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="./Boardcss/css/styleMK.css">

        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./Boardcss/css/product_detail.css" rel="stylesheet" />
        


</head>
<script>
function fnCart(img, name, price) {
	if (confirm("장바구니에 담으시겠습니까?")) {
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price +"&img=" + img;
	}
}
</script>
<script>
	function fnView() {
		if (confirm("장바구니를 보시겠습니까?")) {
			location.href = "CartView.jsp";
		}
	}
</script>
<body>
    <% ArrayList<CartDTO> cart = (ArrayList<CartDTO>)session.getAttribute("cart"); %>
    
        <!-- Navigation-->
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="main.jsp"><img src="./Boardcss/image/logo.png" height="100px" width="100px"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                  <li class="nav-item"><a href="main.jsp" class="nav-link active" aria-current="page" href="#!">메인</a></li>
                    <li class="nav-item"><a href="Product_list.jsp" class="nav-link" href="#!">상품</a></li>
                    <li class="nav-item"><a href="noticeboard.jsp" class="nav-link" href="#!">지식공유방</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">입양리스트</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a href="adop_guide.jsp" class="dropdown-item" href="#!">입양가이드</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a href="adop_benefit .jsp" class="dropdown-item" href="#!">입양혜택</a></li>
                            <li><a href="adop_list.jsp" class="dropdown-item" href="#!">입양 아이들</a></li>
                            <li><a class="dropdown-item" href="adop_map.jsp">주변 보호소 찾기</a></li>
                        </ul>
                    </li>
                </ul>
                    <form class="d-flex" action="" method="post">
                        <button class="btn btn-outline-dark" onclick="fnView(); return false;">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            
                      <% if (cart != null){%> 
                      <span class="badge bg-dark text-white ms-1 rounded-pill">
                      <%= cart.size()%></span>
                      <%}else { %>
                      <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                      <% }%>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
 
 
 				<jsp:include page="Product_include.jsp"/>
 
 
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">연관상품</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="<%=img[5] %>"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=product[5] %></h5>
                                    <!-- Product price-->
                                   <%=price[5] %>
                                </div>
                            </div>
                            
                            
                            
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick='fnCart("<%=img[5]%>","<%=product[5]%>", "<%=price[5]%>")'>장바구니</a></div>
                           
                            </div>
                        </div>
                    </div>
                            <%for(int i = 3; i<6; i++){ %>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <% // 세일스티커 <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>%>
                            <!-- Product image-->
                            <img class="card-img-top" src="<%=img[i] %>" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><%=product[i] %></h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through"></span>
                                    <%=price[i] %>
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick='fnCart("<%=img[i]%>","<%=product[i]%>", "<%=price[i]%>")'>Add to cart</a></div>
                             
                            </div>
                        </div>
                    </div>
                    <%} %>
                    
                 
                </div>
            </div>
            
        </section>
        <!-- footer -->
	<footer>
		<div class="container-footer">
			<p>
				<a href="main.jsp">Home</a> | <a href="product_list.jsp">Product</a> | <a href="adop_list.jsp">Adoption</a>
				| <a href="noticeboard.jsp">Sharing</a>
			</p>
			<div class="social">
				<a href="https://ko-kr.facebook.com/"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/?lang=ko"><i
					class="fa fa-twitter"></i></a>  <a href="https://www.instagram.com/"><i
					class="fa fa-linkedin"></i></a> <a href="https://www.google.com/"><i
					class="fa fa-google-plus"></i></a>
			</div>
			<!-- copy right -->
			<!-- This theme comes under Creative Commons Attribution 4.0 Unported. So don't remove below link back -->
			<p class="copy-right">
				inception &FlowerDog; 2023 <a href="#홈페이지소개">Your Site</a> | Team Member : <a
					href="#홈페이지소개">Flower Dog</a>, Have a happy day.
			</p>
		</div>
	</footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

</html>