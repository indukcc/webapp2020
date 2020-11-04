<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-include</title>
</head>
<body>
<h3>인클루드 동작 전입니다.</h3>
<jsp:include page="jsp-include-target.jsp" flush="false" />
<h3>인클루드 동작 후입니다.</h3>
</body>
</html>