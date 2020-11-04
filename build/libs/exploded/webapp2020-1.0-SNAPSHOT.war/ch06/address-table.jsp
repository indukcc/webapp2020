<%--
  Created by IntelliJ IDEA.
  User: egyou@office.induk.ac.kr
  Date: 2020-10-05
  Time: 오전 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Address Table : Clean Blog - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="../egy-blog/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="../egy-blog/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="../egy-blog/css/clean-blog.min.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<jsp:include page="../egy-blog/index-nav.jsp" />

<!-- Page Header -->
<header class="masthead" style="background-image: url('../egy-blog/img/about-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="page-heading">
                    <h1>Address Table</h1>
                    <span class="subheading">Written by egyou</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
            <table class="table table-striped table-sm">
                <thead>
                <tr>
                    <th>사용자 이름</th>
                    <th>이메일</th>
                    <th>우편번호</th>
                    <th>시도</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${requestScope.member.name }</td>
                    <td>${member.email }</td>
                    <td>${member["address"].zipcode}</td>
                    <td>${member.address.sido }</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<hr>

<!-- Footer -->
<%@ include file="../egy-blog/index-footer.jsp" %>

</body>

</html>
