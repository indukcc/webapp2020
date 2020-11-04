<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 202009-11
  Time: 오전 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url value="https://stackoverflow.com/search" var="searchUrl">
    <c:param name="q" value="c url" />
    <c:param name="s" value="1e5748a5-7eaa-4e26-9293-d2ceb146ce64" />
</c:url>
<c:out value="${searchUrl }" /><br/>

</body>
</html>
