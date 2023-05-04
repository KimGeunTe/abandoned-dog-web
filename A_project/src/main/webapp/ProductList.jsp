<%@page import="Model.ProductDAO"%>
<%@page import="Model.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
	request.setCharacterEncoding("utf-8");
	ProductDAO dao = new ProductDAO();
	List<ProductDTO> ProductList = dao.selectAllProducts();
	ProductDTO dto = new ProductDTO();
%>

<html>
<head>
<meta charset="UTF-8">
<title>Flower Dog</title>
<link  rel ="stylesheet" type ="text/css" href ="./Boardcss/css/shopping.css">
</head>
<body>

	<div id="warp" align="center">
	<h1>상품 리스트 - 관리자페이지</h1>
	<table class="list">
		<tr>
			<td colspan="5" style="border:white; text-align:right">
				<a href="Product_Insert.jsp">상품 등록</a>
			</td>
		</tr>
	
		<tr><th>번호</th><th>이름</th><th>가격</th><th>수정</th><th>삭제</th></tr>
		
		<%
			for(int i=0; i<ProductList.size(); i++) {
			dto = ProductList.get(i);
		%>
		
		<tr class="record">
			<td><%=dto.getPro_seq()%></td>
			<td><%=dto.getPro_name()%></td>
			<td><%=dto.getPro_price()%></td>
			<td>
				<a href="ProductUpdate.jsp?pro_seq=<%=dto.getPro_seq()%>">상품 수정</a>
			</td>
			<td>
				<a href="Product_Delete_Service?pro_seq=<%=dto.getPro_seq()%>">상품 삭제</a>
			</td>
		</tr>

		<%} %>
		
	</table>
	</div>
	
</body>
</html>