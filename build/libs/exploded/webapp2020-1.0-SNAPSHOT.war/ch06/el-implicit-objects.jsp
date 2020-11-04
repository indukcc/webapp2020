<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 2020-10-14
  Time: 오후 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>JSP 2.0 Expression Language - Implicit Objects</title>
</head>
<body>
<h1>JSP 2.0 Expression Language - Implicit Objects</h1>
<hr>
This example illustrates some of the implicit objects available
in the Expression Language.  The following implicit objects are
available (not all illustrated here):
<ul>
    <li>pageContext - the PageContext object</li>
    <li>pageScope - a Map that maps page-scoped attribute names to
        their values</li>
    <li>requestScope - a Map that maps request-scoped attribute names
        to their values</li>
    <li>sessionScope - a Map that maps session-scoped attribute names
        to their values</li>
    <li>applicationScope - a Map that maps application-scoped attribute
        names to their values</li>
    <li>param - a Map that maps parameter names to a single String
        parameter value</li>
    <li>paramValues - a Map that maps parameter names to a String[] of
        all values for that parameter</li>
    <li>header - a Map that maps header names to a single String
        header value</li>
    <li>headerValues - a Map that maps header names to a String[] of
        all values for that header</li>
    <li>initParam - a Map that maps context initialization parameter
        names to their String parameter value</li>
    <li>cookie - a Map that maps cookie names to a single Cookie object.</li>
</ul>

<blockquote>
    <u><b>Change Parameter</b></u>
    <form action="el-implicit-objects.jsp" method="GET">
        foo = <input type="text" name="foo" value="${fn:escapeXml(param["foo"])}">
        <input type="submit">
    </form>
    <br>
    <code>
        <table border="1">
            <thead>
            <td><b>EL Expression</b></td>
            <td><b>Result</b></td>
            </thead>
            <tr>
                <td>\${param.foo}</td>
                <td>${fn:escapeXml(param["foo"])}&nbsp;</td>
            </tr>
            <tr>
                <td>\${param["foo"]}</td>
                <td>${fn:escapeXml(param["foo"])}&nbsp;</td>
            </tr>
            <tr>
                <td>\${header["host"]}</td>
                <td>${fn:escapeXml(header["host"])}&nbsp;</td>
            </tr>
            <tr>
                <td>\${header["accept"]}</td>
                <td>${fn:escapeXml(header["accept"])}&nbsp;</td>
            </tr>
            <tr>
                <td>\${header["user-agent"]}</td>
                <td>${fn:escapeXml(header["user-agent"])}&nbsp;</td>
            </tr>
        </table>
    </code>
</blockquote>
</body>
</html>