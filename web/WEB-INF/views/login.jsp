<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로그인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginUI.css">
</head>

<body>
<h1 class="logo"><a href="main.jsp" class="title">방방곡곡</a></h1>

<form action="/login.do" method="post">
    <div class="login">
        <div>
            <input class="login_data" type="text" placeholder="아이디">
        </div>
        <div>
            <input class="login_data" type="password" placeholder="비밀번호">
        </div>
        <button class="login_button"type="submit">로그인</button>
    </div>
</form>


<div class="login_option">
    <div class="login_option_1">
        <div>
            <input type="checkbox" name="" id="">
            <span class="checkbox_name">로그인 상태 유지</span>
        </div>

    </div>
</div>
<div class="login_help">
    <a class="sign" href="id_find.jsp">아이디 찾기</a>
    <span class="bar">|</span>
    <a class="sign" href="pass_find.jsp">비밀번호 찾기</a>
    <span class="bar">|</span>
    <a class="sign" href="regist.jsp">회원가입</a>
</div>

</body>


</html>