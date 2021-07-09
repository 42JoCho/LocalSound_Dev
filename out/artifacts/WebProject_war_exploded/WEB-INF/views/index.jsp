<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}

@font-face {
	font-family: 'WandohopeB';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/WandohopeB.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'NEXON Lv1 Gothic OTF';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'NEXON Lv1 Gothic OTF';
	background-image:
		url('${pageContext.request.contextPath}/image/dal1.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	background-attachment: fixed;
}

.column {
	float: left;
	padding: 20px;
}
/* Left and right column */
.column.left {
	padding-top: 800px;
	width: 30%;
}

h {
	font-weight: bold;
	font-size: 145pt;
	color: white;
}

.column.right {
	text-align: right;
	width: 48%;
}

.column.right>.title {
	font-family: 'WandohopeB';
	color: teal;
}
/* Middle column */
.column.middle {
	width: 22%;
}

a {	
	padding:10px;
	text-decoration: none;
	font-weight: bold;
	font-size: 25pt;
	color: white;
}
</style>
</head>
<body>
	<div class="row">
		<div class="column left">
			<a href="login.jsp">로그인</a><br> 
			<a href="regist.jsp">회원가입</a><br>
			<a href="main.jsp">구경하기</a>
		</div>
		<div class="column middle"></div>
		<div class="column right">
			<h>대구</h>
			<br>
			<h>사람들</h>
			<br>
			<h>모여라</h>
			<br>
			<h class="title">방방곡곡</h>
		</div>
	</div>

</body>
</html>