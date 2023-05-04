<%@page import="Model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flower Dog</title>
<link rel="stylesheet" href="./Boardcss/css/adopting.css">
<style>
	body {
	margin-top: 100px;
	min-height: 100vh;
	background: url("./Boardcss/image/back2.jpg") fixed no-repeat center;
	background-size: cover;
	}
</style>
</head>

<body>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	
%>
<form action="Adopting_Service" method="post">
        <div class="container">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto">
                    <h4 class="mb-3">입양신청서</h4>
                    <form class="validation-form" novalidate>
                        <div class="mb-3">
                            <label for="serialnum">입양하려는 아이의 일련번호를 입력해주세요</label>
                            <input type="text" class="form-control" id="serialnum" name="serialnum" placeholder="ex)22-1337" required>
                            <div class="invalid-feedback">
                                일련번호를 입력해주세요.
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name">이름</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="" value="<%=info.getName() %>" required
                                    readonly />
                                <br>
                                <label for="gender">성별</label><br>
                                <input type="radio" id="gender" name="gender" value="남"
                                    required><span>남</span>
                                <input type="radio" id="gender" name="gender" value="여"
                                    required><span>여</span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="age">나이</label>
                            <input type="number" class="form-control" id="age" name="age" placeholder="" required>
                            <div class="invalid-feedback">
                                나이를 입력해주세요.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="tel">전화번호<span class="text-muted"></span></label>
                            <input type="text" class="form-control" id="tel" name="tel" placeholder="" required>
                        </div>

                        <div class="mb-3">
                            <label for="email">이메일</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="you@example.com" required>
                        </div>

                        <div class="mb-3">
                            <label for="city">살고있는 지역</label>
                            <input type="text" class="form-control" id="city" name="city" placeholder="" required>
                        </div>
                        
                        
                        <div class="col-md-4 mb-3">
                            <label for="code">결혼여부</label><br>
                            <input type="radio" name="merry" value="미혼"><span>미혼</span>
                            <input type="radio" name="merry" value="기혼"><span>기혼</span>
                        </div>
                        <div class="row">
                            <div class="col-md-8 mb-3">
                                <label for="job">신청인 직업</label>
                                <input type="text" class="form-control" id="job" name="job" placeholder="" required>
                            </div>
                            
                        </div>
                        <hr class="mb-4">
                        <div class="mb-4"></div>
                        <button class="btn btn-primary btn-lg btn-block" type="submit">신청 완료</button>
                    </form>
                </div>
            </div>
        </div>
    </form>
         	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>