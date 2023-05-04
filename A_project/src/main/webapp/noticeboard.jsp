<%@page import="Model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.BoardDAO"%>
<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Flower Dog</title>
<!-- Description, Keywords and Author -->
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Styles -->
<!-- Bootstrap CSS -->
<link href="./Boardcss/css/bootstrapMK.min.css" rel="stylesheet">
<!-- Font awesome CSS -->
<link href="./Boardcss/css/font-awesomeMK.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="./Boardcss/css/styleMK.css" rel="stylesheet">
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />

<!-- Favicon -->
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="./Boardcss/css/styleMK.css">
<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
	position: relative;
	top: 25px;
}

li {
	display: inline-block;
	padding: 20px;
	box-sizing: border-box;
	font-weight: bold;
	font-size: 20px;
}
</style>
</head>
<body>

	<%
	request.setCharacterEncoding("utf-8");
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardDTO> list = new ArrayList<>();
	list.clear();
	list = dao.Listofposts();
	%>

	<div class="wrapper">
		<!-- header -->
		<header>
			<!-- navigation -->

			<nav class="navbar navbar-default" role="navigation">

				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header" style="display: inline;">
						<a class="navbar-brand" href="main.jsp"><img class="img-responsive"
							src="./Boardcss/image/logo.png" alt="Logo" style="width: 100px; height: 100px;"/></a>
						<!-- menu start -->
						<div class="menu" style="justify-content: center; left: 25%;">
							<ul class="snip1555">
							    <li class="nav-item"><a href="main.jsp" class="nav-link active" aria-current="page" href="#!">메인</a></li>
								<li class="current"><a href="#" data-hover="소개">소개</a></li>
								<li><a href="adop_list.jsp" data-hover="입양">입양</a></li>
								<li><a href="Product_list.jsp" data-hover="상품">상품</a></li>
								<li></li>
								<!-- <li><a href="#" data-hover="후원">후원</a></li>-->
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</header>

		<!-- banner -->
		<div class="banner">
			<img src="./Boardcss/image/dogbanner.jpg" alt="강아지">
			<div class="container">
				<!-- heading -->
				<h2></h2>
				<!-- paragraph -->
				<p></p>
			</div>
		</div>
	</div>
	<!-- banner end -->

		<div style="position: absolute; left: 0px; bottom: 400px;">
				<a href="#"><img src="./Boardcss/image/dogbbb.png" alt="강아지"></a>
		</div>

	<!-- events -->
	<div class="event" id="event">
		<div class="container">
			<div class="default-heading">
				<section class="notice">
					<div class="page-title">
						<div class="container">
							<h3>지식공유방</h3>
						</div>
					</div>

					<!-- board seach area -->
					<div id="board-search">
						<div class="container">
							<div class="search-window">
								<form action="">
									<div class="search-wrap">
										<label for="search" class="blind">지식공유방 내용 검색</label> <input
											id="search" type="search" name="" placeholder="검색어를 입력해주세요."
											value="">
										<button type="submit" class="btn btn-dark">검색</button>
									</div>
								</form>
							</div>
						</div>
					</div>

					<!-- board list area -->
					
					<div id="board-list">
						<div class="container">
							<table class="board-table">
								<thead>
									<tr>
										<th scope="col" class="th-num">번호</th>
										<th scope="col" class="th-title">제목</th>
										<th scope="col" class="th-date">작성자</th>
										<th scope="col" class="th-date">등록일</th>
									</tr>
								</thead>
								<tbody>
									<%
									for (int i = 0; i < list.size(); i++) {
									%>
									<tr>
										<td><%=i + 1%></td>
										<td><a href ="boardView.jsp?number=<%=list.get(i).getNumber()%>"><%=list.get(i).getTitle()%></a></td>
										<td><%=list.get(i).getWriter()%></td>
										<td><%=list.get(i).getTime()%></td>
									</tr>
									<%
									}
									%>
									<tr>
										<td>
											<%if(info != null) {%>
											<button class="btn btn-dark">
												<a href="BoardWrite.jsp" class="cnt" style="color:#ffffff;">글쓰기</a>
											</button>
											<%} %>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					
				</section>
			</div>
		</div>
	</div>
	<!-- events end -->

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




	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="js/jqueryMK.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrapMK.min.js"></script>
	<!-- Respond JS for IE8 -->
	<script src="js/respondMK.min.js"></script>
	<!-- HTML5 Support for IE -->
	<script src="js/html5shivMK.js"></script>
	<!-- Custom JS -->
	<script src="js/customMK.js"></script>
	<script>
		cntEl = document.getSelection(".cnt")
		cntEl.addEventListener("click", function{
		  cnt+1;
		});
	</script>
</body>
</html>