<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록 출력</title>
</head>
<body>
최신 출간된 책 목록
<table>
    <tr>
        <td>제목</td>
    </tr>
    <c:forEach items="${requestScope.booklist}" var="book">
    <tr>   
        <td>${book.isbn}</td>
        <td>${book.title}</td>
    </tr>    
    </c:forEach> 
</table> 
<br/> 
스타일을 입힌 표로 표시한 책 목록
<table>
    <tr style="background:#ababff">        
     	<td>ISBN</td>        
     	<td>제목</td>    
    </tr>    
    <c:forEach items="${requestScope.booklist}" var="book" 
            varStatus="status">        
    	<c:if test="${status.count%3 == 0}">            
    		<tr style="background:#eeeeff">        
    	</c:if>        
    	<c:if test="${status.count%3 == 1}">        
    	    <tr style="background:#ffdeaa">        
    	</c:if>     
    	<c:if test="${status.count%3 == 2}">        
    	    <tr style="background:#bbeeff">        
    	</c:if>     
    	<td>${book.isbn}</td>        
    	<td>${book.title}</td>    
   	</tr>    
    </c:forEach> 
</table> 
<br/> 
ISBN만 표시:   
<c:forEach items="${requestScope.booklist}" var="book" varStatus="status">
    ${book.isbn}
    <c:if test="${!status.last}">,
    </c:if>    
</c:forEach>     
</body>
</html>