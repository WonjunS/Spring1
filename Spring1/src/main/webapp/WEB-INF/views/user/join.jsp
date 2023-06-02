<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Signup Page</h1>
<!-- 휴대폰 인증: https://serverrefository.tistory.com/82
 -->
<form action="/user/join" method="post">
	<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
	<input type="text" id="email" name="email"/>
	<input type="password" id="password" name="password"/>
	<button>Signup</button>
</form>
</body>
</html>