<%@page import="Model.MemberDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Model.BoardDTO" %>
<%@ page import="Model.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flower Dog</title>
<link rel="stylesheet" type="text/css" href="Boardcss/css/shopping.css">
<link href="./Boardcss/css/bootstrapMK.min.css" rel="stylesheet">
		<!-- Font awesome CSS -->
		<link href="./Boardcss/css/font-awesomeMK.min.css" rel="stylesheet">		
		<!-- Custom CSS -->
		<link href="./Boardcss/css/styleMK.css" rel="stylesheet">
		<!-- Font awesome CSS -->
<link href="./Boardcss/css/font-awesomeMK.min.css" rel="stylesheet">
  <!-- Favicon -->
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="./Boardcss/css/styleMK.css">
<link rel="stylesheet" href="./Boardcss/css/shopping.css">
<link rel="stylesheet" href="./Boardcss/css/btn.css">
<script type="text/javascript" src="script/board.js"></script>
<style>

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
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		request.setCharacterEncoding("utf-8");
		int number = Integer.parseInt(request.getParameter("number"));

		BoardDTO dto = new BoardDTO();
		BoardDAO dao = new  BoardDAO();
		dto = dao.getNumber(number);
		
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
	<br><br>
	<div id="wrap" align="center">

		<h1>게시글 상세보기</h1>
		<table border="2" style="height: 300px; font-size: 15px;">
			<tr>
				<th style="width: 80px;">작성자</th>
				<td><%=dto.getWriter()%></td>
			</tr>
			
			<tr>
				<th>작성일</th>
				<td><%=dto.getTime()%></td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3"><%=dto.getTitle()%></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3"><%=dto.getContent()%></td>
			</tr>
		</table>
		<br><br>
		<%if(info !=null) {%>
			<div style="margin: 0; display: flex; margin-top: 10px; justify-content: center;">
				<div class="reserve_btn">
					<input type="button" value="게시글 수정" onclick="location.href='BoardUpdate.jsp?number=<%=dto.getNumber()%>'">
				</div>
				<div class="reserve_btn" style="margin-left: 10px;">
					<input type="button" value="게시글 삭제" onclick="location.href='Board_Removal?number=<%=dto.getNumber()%>'">
				</div>
				<div class="reserve_btn" style="margin-left: 10px;">
					<input type="button" value="게시글 리스트" onclick="location.href='noticeboard.jsp'">
				</div>
				<div class="reserve_btn" style="margin-left: 10px;">
					<input type="button" value="게시글 등록" onclick="location.href='BoardWrite.jsp'">
				</div>
				
			</div>
		<%} else{%>
			<div class="reserve_btn">
				<input type="button" value="게시글 리스트" onclick="location.href='noticeboard.jsp'">
			</div>
		<%} %>	
	</div>
	
		<!-- footer -->
	<footer style="margin-top: 30px;">
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
</body>
</html>