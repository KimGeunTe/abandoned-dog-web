<%@page import="Model.MemberDTO"%>
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
        <link href="./Boardcss/css/adop_intro.css" rel="stylesheet" />
    </head>
    
    <body>
    <script>
	function fndog(bolder) {
		
			sessionStorage.setItem("bolder", bolder);
		
	}
</script>


	<%
	 MemberDTO info = (MemberDTO)session.getAttribute("info");
	
	String bolder = request.getParameter("bolder");
	String img = request.getParameter("img");
	String info_img = request.getParameter("info_img");
%>
    
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="adop_list.jsp"><img src="./Boardcss/image/logo.png" alt="" style="width:80px; height:80px;"></a>
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
                <form class="d-flex">
                    </form>
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<%=img %>" alt="..." /></div>
                    <div class="col-md-6 " >
                        <span><img src="<%=info_img %>" alt=""></span>
                        <br>
                        
                    </div>
                    
                    <div class="fs-5 mb-5">
                        <br>
                            <h1><%=bolder %></h1>
                            <hr>
                        </div>
                        <div class="intro">
                        <p class="lead"><%= bolder%>를 소개합니다!<br>

                            <%=bolder%>를 사랑으로 보듬어 줄 수 있는<br>
                            
                            새로운 가족을 찾습니다.</p>
                        </div>
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <br>
                         <div class="text-center">
                          <%if(info !=null){ %>
                          <a class="btn btn-outline-dark mt-auto" href="adopting.jsp" onclick='fndog("<%=bolder%>")' > 입양신청하기</a>
                          <%}else{ %>
                          <a class="btn btn-outline-dark mt-auto" href="login.jsp"> 입양신청하기</a>
                          <%} %>
                        	<a class="btn btn-outline-dark mt-auto" href="./adop_guide.jsp">입양 절차 및 책임비 가이드 보기</a></div> 
                     
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
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
