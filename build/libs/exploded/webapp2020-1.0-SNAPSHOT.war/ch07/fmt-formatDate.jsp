<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<body>
<c:set var="current" value="<%= new java.util.Date() %>" />

dateStyle short : <fmt:formatDate value="${current }" type="date" dateStyle="short"/><br/>
dateStyle medium : <fmt:formatDate value="${current }" type="date" dateStyle="medium"/><br/>
dateStyle default : <fmt:formatDate value="${current }" type="date" /><br/>
dateStyle long : <fmt:formatDate value="${current }" type="date" dateStyle="long"/><br/>
dateStyle full : <fmt:formatDate value="${current }" type="date" dateStyle="full"/><br/>

timeStyle short : <fmt:formatDate value="${current }" type="time" timeStyle="short"/><br/>
timeStyle medium : <fmt:formatDate value="${current }" type="time" timeStyle="medium"/><br/>
timeStyle default : <fmt:formatDate value="${current }" type="time" /><br/>
timeStyle long : <fmt:formatDate value="${current }" type="time" timeStyle="long"/><br/>
timeStyle full : <fmt:formatDate value="${current }" type="time" timeStyle="full"/><br/>

type both : <fmt:formatDate value="${current }" type="both" dateStyle="long" timeStyle="full"/><br/>
pattern : <fmt:formatDate value="${current }" pattern="yyyy년 MM월 dd일, hh시:mm분:ss초 a z"/><br/>

</body>
</html>