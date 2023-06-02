<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Index page</h1>
<sec:authorize access="isAnonymous()">
	<a href="/user/login">로그인</a>
	<a href="/user/join">회원가입</a>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
	<a href="/user/detail">User Detail</a>
	<a href="/admin/page">Admin page</a>
	<p>username: <sec:authentication property="principal.username"/></p>
	<form action="/user/logout" method="post">
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
		<button>로그아웃</button>
	</form>
</sec:authorize>
</body>
</html>