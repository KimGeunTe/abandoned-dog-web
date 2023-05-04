<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flower Dog</title>
<link  rel ="stylesheet" type = "text/css" href ="./login.css">
</head>
<body>

<div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">로그인</button>
                    <button type="button" class="togglebtn" onclick="register()">회원가입</button>
                </div>
                <form id="login" action="Login_Service" class="input-group" method = "post">
                    <input type="text" class="input-field" name="id" placeholder="아이디">
                    <input type="password" class="input-field" name="pw" placeholder="비밀번호">
                    <input type="checkbox" class="checkbox">ID 기억하기<br>
                    <button class="submit" type="submit">로그인</button><br>
                    <button class="submit">아이디, 비번 잊었니?</button><br>
                    <button class="kakao">?</button><br>
                </form>
                
                <form class="input-group" id="register" action="Join_Service" method="post">
                    <input class="input-field" type="text" name="id" placeholder="아이디" required>
                    <input class="input-field" type="password" name="pw" placeholder="비밀번호" required>
                    <input class="input-field" type="text" name="name" placeholder="이름" required>
                    
                    <input type="text" class="input-field" name="rrn" placeholder="주민등록번호" required>
                    
                    <select class="input-field" name = "gender" arai-lable ="gender" >
                    	<option value selected>성별</option>
                    	<option value = "M">M</option>
                    	<option value = "W">W</option>
                    </select>
                 
                    <input class="input-field" type="email" name = "email" placeholder="이메일" required>
                    <input class="input-field" type="text" name = "address" placeholder="주소" required>
                    <input class="input-field" type="text" name = "tel" placeholder="전화번호" required>
                    <br><br><br><br>

				

				<button class="submit" type="submit">REGISTER</button>
                </form>
            </div>
        </div>
       
       
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }
            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }         
        </script>

</body>
</html>

