<%@page import="java.util.List"%>
<%@page import="Model.ProductDAO"%>
<%@page import="Model.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Flower Dog</title>
<link  rel ="stylesheet" type = "text/css" href ="./Boardcss/css/shopping.css">
</head>
<body>
	<%
		int pro_seq = Integer.parseInt(request.getParameter("pro_seq"));
		ProductDAO dao = new ProductDAO();
		ProductDTO dto = new ProductDTO();
		dto = dao.selectOne(pro_seq);
	%>
	<div id="warp" align="center">
	<h1>상품 수정 - 관리자 페이지</h1>
	<form method="post" action="ProductUpdateService?pro_seq=<%=pro_seq%>">
	<input type="hidden" name="pro_seq" value="<%=pro_seq%>">
	<input type="hidden" name="nonmakeImg" value="">
	<table>
	<tr>
		<td>
			<img src="upload/noimage.gif">
		</td>
		<td>
			<table>
				<tr>
					<th style="width:80px"> 상품명 </th>
					<td>
						<input type="text" name="name" value="<%=dto.getPro_name()%>" size="80">
					</td>				
				</tr>
				<tr>
					<th> 가 격 </th>
					<td><input type="number" name="price" value="<%=dto.getPro_price()%>"> 원</td>				
				</tr>
				<tr>
					<th> 사 진 </th>
					<td>
						<input type="file" name="pro_img"><br>
					</td>				
				</tr>
				<tr>
					<th> 설 명 </th>
					<td>
						<textarea cols="90" rows="10" name="desc"><%=dto.getPro_desc() %></textarea>
					</td>				
				</tr>
			</table>
		</td>
	</tr>
	</table>
	<br>
	<input type="submit" value="수정">
	<input type="reset" value="다시작성">
	<input type="button" value="목록" onclick="location.href='ProductList.jsp'">
		
	</form>
	</div>

</body>
</html>