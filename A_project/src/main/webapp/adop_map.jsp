<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Flower Dog</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Boardcss/css/adop_map.css" rel="stylesheet" />
</head>

<body>
	<!-- Navigation-->
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="main.jsp"><img
				src="./Boardcss/image/logo.png" alt="" style="width: 100px;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
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
                <form class="d-flex">
				</form>
			</div>
		</div>
	</nav>
	<!-- Header-->
	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder">유기견 보호센터</h1>
				<hr style="border: solid 3px;">
				<br>
			</div>
		</div>
	</header>

	<!-- Services-->
	<section class="page-section" id="services">
		<div class="container">
			<div class="text-center">
				<img src="Boardcss/image/guide1.png" alt="">
				<hr>
				<br>
				<h2 class="section-heading text-uppercase">유기견 보호 센터 위치 안내</h2>
				<h4> [ 광주, 전남 지역 안내 ] </h4>
				<br>
			</div>


			<p align="middle">
				<iframe src="http://localhost:8081/A_project/kakaomap.jsp"
					width="800px" height="700px" style="border:" allowfullscreen=""
					loading="lazy"> </iframe>
			</p>
			     	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
