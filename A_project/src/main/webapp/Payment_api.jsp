<%@page import="Model.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
  <title>결제하기</title>
  <script src="https://js.tosspayments.com/v1/payment"></script>
</head>
<body>



  <script>

  var bolder = sessionStorage.getItem("bolder");
  
    clientKey = 'test_ck_5GePWvyJnrKaj1AD7o13gLzN97Eo'
    tossPayments = TossPayments(clientKey) 
    tossPayments.requestPayment('카드', { 
    	
    	  amount: 150000,
    	  orderId: '1RPUbUDqwRNYi9Rej_kIi',
    	  orderName: bolder+'입양비',
    	  customerName: '입양비',
    	  successUrl: 'http://localhost:8080/success',
    	  failUrl: 'http://localhost:8080/fail',
    	})
    	.catch(function (error) {
    	  if (error.code === 'USER_CANCEL') {
    	  } else if (error.code === 'INVALID_CARD_COMPANY') {
    	  }
    	})
  </script>
  
  

  
  
</body>