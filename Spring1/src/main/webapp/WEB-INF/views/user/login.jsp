<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Login page</h1>
<!-- Kakao: https://tyrannocoding.tistory.com/49
https://cookinghoil.tistory.com/109?category=905374
 -->
<form action="/user/login" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	 <input type="text" id="email" name="email" placeholder="이메일 입력" />
	 <input type="password" id="password" name="password" placeholder="비밀번호 입력" />
	 <button type="submit">로그인</button>
</form>
</body>
</html>