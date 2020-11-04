<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/jquery.slim.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<title>Responsive Form</title>
</head>
<body>
<div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">환영합니다.</h3>
<%
    Cookie[] cookies = request.getCookies();
    String cookie_id = null;
    String cookie_pw = null;
    if(cookies != null){
        for(Cookie tempCookie : cookies){
            if(tempCookie.getName().equals("id")){
                request.setAttribute("cookie_id", tempCookie.getValue());
            }
            if(tempCookie.getName().equals("pw")){
                request.setAttribute("cookie_pw", tempCookie.getValue());
            }
        }
    }
%>

<c:choose>
<c:when test="${sessionScope.login == null}">              
              <form action="./sessionLogin2.do" method="post">
                  <c:choose>
                  <c:when test="${cookie == null}">
                    <div class="form-label-group">
                      <input type="email" name="id" id="inputEmail" class="form-control" placeholder="Email address" required>
                      <label>Email address</label>
                    </div>
                    <div class="form-label-group">
                      <input type="password" name="pw" id="inputPassword" class="form-control" placeholder="Password" required>
                      <label>Password</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-3">
                      <input type="checkbox" name="checked" class="custom-control-input" id="customCheck1" value="yes">
                      <label class="custom-control-label" for="customCheck1">Remember password</label>
                    </div>
                  </c:when>
                  <c:otherwise>
                    <div class="form-label-group">
                      <input type="email" name="id" value="${cookie_id}" id="id" class="form-control" placeholder="Email address" required>
                      <label>Email address</label>
                    </div>
                    <div class="form-label-group">
                      <input type="password" name="pw" value="${cookie_pw}" id="inputPassword" class="form-control" placeholder="Password" required>
                      <label >Password</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-3">
                      <input type="checkbox" name="checked" class="custom-control-input" id="customCheck1" value="yes">
                      <label class="custom-control-label" for="customCheck1">Remember password</label>
                    </div>

                  </c:otherwise>
              </c:choose>
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Sign in</button>
                <div class="text-center">
                  <a class="small" href="#">Forgot password?</a></div>
              </form>
</c:when>
<c:otherwise>
	<jsp:forward page="./session-logined-page2.jsp"/>
</c:otherwise>
</c:choose>              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>