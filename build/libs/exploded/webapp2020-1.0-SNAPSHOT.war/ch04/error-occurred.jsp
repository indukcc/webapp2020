<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error-handling.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Occurred</title>
</head>
<body>
<%
	int dividend = 1000;
	int divisor = Integer.parseInt(request.getParameter("divisor"));
	int result = 0;
	result = dividend / divisor;
	out.println(dividend + "/" + divisor + " = " + result);
	out.println(request.getQueryString());
%>
</body>
</html>