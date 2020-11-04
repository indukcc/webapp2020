<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 2020-10-05
  Time: 오전 7:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>JSP Reqeust Tester</title>
</head>
<body>
getServerName : <%= request.getServerName()%> <br/>
getServerPort : <%= request.getServerPort()%> <br/>
getRequestURI : <%= request.getRequestURI()%> <br/>
getQueryString : <%= request.getQueryString()%> <br/>
getRemoteAddress : <%= request.getRemoteAddr()%>
<%--
<%
    // System.out : Java 기본 객체 - 콘솔을 통한 표준 출력 객체, out : JSP 기본 객체 - 웹 페이지 형태의 출력 객체
    out.print("<h1>Email : " + request.getParameter("email") + "</h1>"); // <input type="text"의 name의 속성값
%>
<h1>Email : <%= request.getParameter("email") %> </h1>
<%= "Email : " + request.getParameter("passwd") %>
--%>
</body>
</html>
