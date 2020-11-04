<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주석처리 비교</title>
</head>
<body>
<%
	String htmlComment = "HTML 주석";
	String jspComment = "JSP 주석";
	String scriptletCommment = "스크립틀릿 주석";
%>
<h1>주석처리 비교</h1><br> 
&lt;%-- JSP 주석 : 웹 컨테이너에서 처리할 때 제외된다. --%&gt;<br> 
<%--
	<%
		out.print(jspCommment + "<br>");
		System.out.println("htmlComment");
	%>
--%> 
 
&lt;!-- HTML 주석 : 웹 브라우저에서 처리할 때 제외된다.(웹 컨테이너에서는 실행됨) --&gt;<br>
<!--
<%
	out.print(htmlComment + "<br>");
	System.out.println("<!-- ~ --> htmlComment");
%>
 --> 
<%
	out.print("// 스크립틀릿 주석은 : 웹 컨테이너에서 처리할 때  제외된다.");	
%>
<%
	//out.print(scriptletCommment + "<br>");
%>
</body>
</html>
