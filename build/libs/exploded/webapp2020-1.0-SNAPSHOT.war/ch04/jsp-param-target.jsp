<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp-param-target</title>
</head>
<body>
<h3> 전달된 매개변수 값은  : <%= request.getParameter("name") %></h3>
</body>
</html>