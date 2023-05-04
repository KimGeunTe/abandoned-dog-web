<%@page import="Model.MemberDTO"%>
<%@page import="Model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
  <title>Flower Dog</title>
  <script src="https://js.tosspayments.com/v1/payment"></script>
</head>
<body>


<%  int pay = (int)session.getAttribute("pay") ; 
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	
%>

  <script>
 
 
  	<%if(info == null){%>
  	alert("로그인이 필요합니다.")
  	location.href='login.jsp'
  	<%;}else{%>
  	
    clientKey = 'test_ck_5GePWvyJnrKaj1AD7o13gLzN97Eo'
    tossPayments = TossPayments(clientKey) 
    tossPayments.requestPayment('카드', { 
    	
    	  amount: <%=pay%>,
    	  orderId: '1RPUbUDqwRNYi9Rej_kIi',
    	  orderName: '상품 총 금액',
    	  customerName: '상품총금액',
    	  successUrl: 'http://localhost:8080/success',
    	  failUrl: 'http://localhost:8080/fail',
    	})
    	.catch(function (error) {
    	  if (error.code === 'USER_CANCEL') {
    	  } else if (error.code === 'INVALID_CARD_COMPANY') {
    	  }
    	}) 
  	<%}%>
  	
  	
  	
  </script>
  
  

  
  
</body>