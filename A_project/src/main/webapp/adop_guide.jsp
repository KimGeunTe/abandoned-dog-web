<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="./Boardcss/css/adop_guide.css" rel="stylesheet" />
</head>

<body>
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="main.jsp"><img src="./Boardcss/image/logo.png" alt="" style="width: 70px;" ></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                  <li class="nav-item"><a href="main.jsp" class="nav-link active" aria-current="page" href="#!">메인</a></li>
                    <li class="nav-item"><a href="Product_list.jsp" class="nav-link" href="#!">상품</a></li>
                    <li class="nav-item"><a href="noticeboard.jsp" class="nav-link" href="#!">게시판</a></li>
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
                <h1 class="display-4 fw-bolder">입양절차 안내</h1>
                <hr style="border:solid 3px;">
                <br>
                <p class="lead fw-normal text-white-10 mb-0"></p>
            </div>
        </div>
    </header>

        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <img src="Boardcss/image/guide1.png" alt="">
                    <hr >
                    <br>
                    <h2 class="section-heading text-uppercase"> 입양 자격 </h2>
                    <br>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="">
                            <i class=""></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        
                        <h4 class="my-3">책임 입양이 가능한 18세 이상 신원확인 가능한 성인</h4>
                        <div class="adop-text">
                        <p class="text-muted">반려동물을 맞이할 환경적 경제적 준비, 마음의 각오가 되어있는 분이 필요해요</p>
                    </div>
                    </div>
                    <div class="col-md-4">
                        <span class="">
                            <i class=""></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">경제적 능력이 있고 반려동물을 사랑하는 가정</h4>
                        <p class="text-muted">아플 때 적절한 치료를 해주고,모든 가족과의 합의가 되어있는 반려동물을 진심으로 사랑해 줄 가정이 필요해요 </p>
                    </div>
                    <div class="col-md-4">
                        <span class="">
                            <i class=""></i>
                            <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">입양 후 1년/6회 아이 생활사진을 보내주실 수 있는 분</h4>
                        <p class="text-muted">반려동물은 10~15년 이상 삽니다.결혼, 임신, 유학, 이사 등으로 가정환경이 바뀌어도 한번 인연을 맺은 동물은 끝까지 책임지고 보살펴줄 가정이 필요해요</p>
                    </div>
                </div>
            </div>
        </section>
      
                  
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <img src="Boardcss/image/guide2.png" alt="">
                    <hr>
                    <h2 class="section-heading text-uppercase">입양 절차 안내</h2>
                    <h3 class="section-subheading text-muted"> 꽃개에서 보호중인 아이들을 가족으로 맞이하기 위한 입양절차</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="./Boardcss/image/g1.png"  alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>공고 확인</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">꽃개를 통해 보호소에서 보호중인 아이들을 간편하게 확인해 보세요!</p></div>
                            <a href="./adop_list.jsp">공고 확인 바로가기</a>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="./Boardcss/image/2.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading"> 방문예약 & 입양 문의</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">보호소의 아이들은 실시간으로 입양이 이루어지고 있기 떄문에 방문예약 및 입양 문의글을 남겨주세요.</p></div>
                           
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="./Boardcss/image/3.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">입양 전 상담</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">입양을 원하는 아이를 대상으로 입양 상담이 진행되며 아이에 대한 정보를 상세하게 안내해 드려요.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="./Boardcss/image/4.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">계약서 작성 및 입양</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted">전문 관리사를 통한 자세한 상담 후 계약서 작성을 도와드려요.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                                Flower
                                <br />
                                <br />
                                Dog
                            </h4>
                        </div>
                    </li>
                </ul>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
 
    
    </body>
</html>
