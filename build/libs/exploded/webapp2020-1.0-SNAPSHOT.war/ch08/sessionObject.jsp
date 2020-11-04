<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 202009-11
  Time: 오후 7:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Date time = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yy-mm-dd hh:mm:ss");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
세션ID:<%= session.getId() %><br>
세션 객체 유지 시간:<%= session.getMaxInactiveInterval() %><br>
<%
    time.setTime(session.getCreationTime());
%>
세션생성시간:<%= dateFormat.format(time) %>
<%
    time.setTime(session.getLastAccessedTime());
%>
최근접근시간:<%= dateFormat.format(time) %>

</body>
</html>
