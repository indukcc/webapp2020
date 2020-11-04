<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	HashMap<String, Object> hashMap = new HashMap<String, Object>();
	hashMap.put("강감찬", "귀주대첩");
	hashMap.put("권율", "행주대첩");
	hashMap.put("김시민", "진주대첩");
	hashMap.put("을지문덕", "살수대첩");
%>
<c:set var="mapItems" value="<%= hashMap %>" />

<c:forEach var="map" items="${mapItems}">
	${map.key} 장군이  ${map.value }에서 승전하셨다.<br/>
</c:forEach>

</body>
</html>