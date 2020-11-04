<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 2020-10-14
  Time: 오후 4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("egyou", 95);
    map.put("shhan", 97);
    map.put("sj-ko", new Integer(96));
    request.setAttribute("hashmap", map);
%>

${hashmap.egyou}<br/>
${hashmap["shhan"]}<br/>
${hashmap["sj-ko"]}<br/>
${hashmap.sj-ko} <%-- 정상적으로 처리되지 않음 --%>

</body>
</html>
