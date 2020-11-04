<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 2020-10-05
  Time: 오전 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>response-sendredirect-tester.jsp</title>
</head>
<body>
<%
    String name = "induksoft";
    response.sendRedirect("jsp-request-tester.jsp?name=" + name);
%>
</body>
</html>
