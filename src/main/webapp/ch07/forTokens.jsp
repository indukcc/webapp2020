<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>forTokens 태그로 출력</h2>
<c:forTokens var="item" items="이 순신, 곽 재우, 전 봉준, 홍경래" delims=",">
    ${item}<br/> 
</c:forTokens> 
</body>
</html>