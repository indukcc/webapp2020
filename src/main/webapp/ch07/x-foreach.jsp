<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<title>Title</title>
</head>
<body>
<c:import var="xmlDoc" url="x-member.xml" charEncoding="utf-8"/>

<x:parse var="doc" doc="${xmlDoc}"/>
<table border=1 width="500px">
<tr><th>x-member.xml 파일 읽기</th></tr>
<tr><td valign="top"><pre><c:out value="${xmlDoc}"/></pre></td></tr>
<tr><th>x:forEach로 선택해서 읽기</th></tr>
<x:forEach var="item" select="$doc//member" begin="0" end="2" step="1">
	<tr><td>
		<x:out select="$item/name" /><br/>
		<x:out select="$item/phone" /><br/>
		<x:out select="$item/department" /><br/>
	</td></tr>
</x:forEach>

</table>
</body>
</html>