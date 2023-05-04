<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
ArrayList<CartDTO> cart = null;

Object obj = session.getAttribute("cart"); //세션 객체에서 cart 값을 가져온다.

if (obj == null) { //세션 정보가 없으면 배열을 생성 : 주문한 제품이 없다
	cart = new ArrayList<CartDTO>();
} else { //세션 정보가 있으면 강제로 캐스팅 : 주문한 제품이 있다
	cart = (ArrayList<CartDTO>) obj;
}
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
    <link href="./Boardcss/css/cart.css" rel="stylesheet" />

    
</head>

<body>
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
                
            </div>
        </div>
    </nav>
    <!-- Header-->
    <header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="text-center text-white">
                <h1 class="display-4 fw-bolder">장바구니</h1>
                <hr style="border:solid 3px;">
                <br>
                <p class="lead fw-normal text-white-10 mb-0"><b></b></p>
            </div>
        </div>
    </header>


    <script type="text/javascript">
        function fnPay() {
            location.href = "pay_info.jsp";
        }
    
        function fnClear() {
            if (confirm("장바구니를 비우시겠습니까?")) {
                location.href = "CartClear.jsp";
                
            }
        }
    
        function fnGo() {
            location.href = "main.jsp";
        }
    </script>

    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
                <li>주문자 정보를 정확하게 기입 부탁드립니다.</li>
            </ul>
        </div>
        
        <table class="cart__list">
            <form>
                <thead>
                    <tr>
                        
                        <td>번호</td>
                        <td>상품이미지</td>
                        <td>단가</td>
                        <td>상품명</td>
                        <td>가격</td>
                        <td>주문수량</td>
                    </tr>
                </thead>
                      <% if (cart.size() == 0) { %>
                    <tbody>
                        <tr class="cart__list__detail" align = 'center'>
                            <td colspan="6" ><span class="price">장바구니에 담긴 상품이 없습니다.</span></td>
                            <% out.println("<a href= 'Product_list.jsp'>주문하기</a>");%>
                        </tr>
                    </tbody>
                     <% } else {
                    	  int totalSum = 0 , total = 0 ;%>
				

				<% for (int i = 0; i < cart.size(); i++) {
                     CartDTO dto = cart.get(i);%>
				
                <tbody>
                    <tr class="cart__list__detail">
                    <td align = center ><%=i+1 %></td>
                        <td ><img  src=<%=dto.getImg() %> alt=""></td>
                        <td><%=dto.getPrice() %>원</td>
                        <td class="cart__list__option">
                            <p><%=dto.getName() %></p>
                        
                        <td><span class="price"><%=dto.getPrice() %>원</span></td>
                       <td><%=dto.getCnt() %>개 </td>
                        <% total = dto.getPrice() * dto.getCnt();%>
                        <%totalSum += total; %>
                             </tr>
                </tbody>
                <%} %>
                
                
                <tfoot>
                    <tr>
                        
                        <td colspan="5"></td>
                     <td  name = "pay"><b class="total_price" > 총액 : <%=totalSum %>원 </b></td> 
                       
                         <%out.println("<input type='button' value='장바구니 비우기' onclick='fnClear()' />"); %> 
                    </tr>
                </tfoot>
            </form>
                       <%session.setAttribute("pay", totalSum); %>
                <%} %>
                
                
                
        </table>
        <div class="cart__mainbtns">
        
            <button class="cart__bigorderbtn left"><a onclick='fnPay()'>결제하기</a></button>
            <button class="cart__bigorderbtn right"><a href= 'Product_list.jsp'> 계속 쇼핑하기</a></button>
        </div>
    </section>
    	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
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
</body>
</html>