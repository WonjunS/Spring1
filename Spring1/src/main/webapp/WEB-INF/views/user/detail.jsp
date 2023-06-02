<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>User Detail Page</h1>
<p>principal: <sec:authentication property="principal"/></p>
<p>user: <sec:authentication property="principal.user"/></p>
<p>email: <sec:authentication property="principal.user.email"/></p>
<p>role: <sec:authentication property="principal.user.role"/></p>
<p>username: <sec:authentication property="principal.username"/></p>
<a href="/user/logout">Logout</a>
</body>
</html>