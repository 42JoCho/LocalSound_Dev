<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Information.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	var didScroll;
	var lastScrollTop = 0;
	var delta = 5;
	var navbarHeight = $('nav').outerHeight();

	$(window).scroll(function(event) {
		didScroll = true;
	});

	setInterval(function() {
		if (didScroll) {
			hasScrolled();
			didScroll = false;
		}
	}, 250);

	function hasScrolled() {
		var st = $(this).scrollTop();

		// Make sure they scroll more than delta
		if (Math.abs(lastScrollTop - st) <= delta)
			return;

		// If they scrolled down and are past the navbar, add class .nav-up.
		// This is necessary so you never see what is "behind" the navbar.
		if (st > lastScrollTop && st > navbarHeight) {
			// Scroll Down
			$('nav').removeClass('nav-down').addClass('nav-up');
		} else {
			// Scroll Up
			if (st + $(window).height() < $(document).height()) {
				$('nav').removeClass('nav-up').addClass('nav-down');
			}
		}
		lastScrollTop = st;
	}
</script>
</head>
<body>
	<header>
		<h1>
			<a href="main.jsp">방방곡곡</a>
		</h1>
		<div class="search">
			<input type="text" placeholder="검색어 입력">
			<button>검색</button>
		</div>

		<p class="login">
			<a id="login" href="login.jsp">로그인</a> /
			<script>
				var id = '${sessionID}';
				if (id == '') {
					return false;
				} else {
					var str = document.getElementById("login");
					str.innerHTML = '<a style="color: teal;text-decoration: none;" href="main.jsp">로그아웃</a>';
				}
			</script>
			<a id="regist" href="regist.jsp">회원가입</a>
			<script>
				var id = '${sessionID}';
				if (id == '') {
					return false;
				} else {
					var str = document.getElementById("regist");
					str.innerHTML = '<a style="color: teal;text-decoration: none;" href="index.jsp">내 정보</a>';
				}
			</script>
		</p>

	</header>
	<nav>
		<ul id="main_menu">
			<li><a href="#home">동구</a>
				<ul id="sub_menu">
					<li><a href="#home">신암동</a></li>
					<li><a href="#home">신천동</a></li>
					<li><a href="#home">효목동</a></li>
					<li><a href="#home">도평동</a></li>
					<li><a href="#home">불로봉무동</a></li>
					<li><a href="#home">지저동</a></li>
					<li><a href="#home">동촌동</a></li>
					<li><a href="#home">방촌동</a></li>
					<li><a href="#home">해안동</a></li>
					<li><a href="#home">안심동</a></li>
					<li><a href="#home">혁신동</a></li>
					<li><a href="#home">공산동</a></li>
				</ul></li>
			<li><a href="#home">북구</a>
				<ul id="sub_menu">
					<li><a href="#home">고성동</a></li>
					<li><a href="#home">칠성동</a></li>
					<li><a href="#home">침산동</a></li>
					<li><a href="#home">삼격동</a></li>
					<li><a href="#home">대현동</a></li>
					<li><a href="#home">복현동</a></li>
					<li><a href="#home">검단동</a></li>
					<li><a href="#home">무태조야동</a></li>
					<li><a href="#home">관문동</a></li>
					<li><a href="#home">태전동</a></li>
					<li><a href="#home">구암동</a></li>
					<li><a href="#home">관음동</a></li>
					<li><a href="#home">읍내동</a></li>
					<li><a href="#home">동천동</a></li>
					<li><a href="#home">노원동</a></li>
					<li><a href="#home">국우동</a></li>
				</ul></li>
			<li><a href="#home">서구</a>
				<ul id="sub_menu">
					<li><a href="#home">내당동</a></li>
					<li><a href="#home">비산동</a></li>
					<li><a href="#home">평리동</a></li>
					<li><a href="#home">상중이동</a></li>
					<li><a href="#home">원대동</a></li>
				</ul></li>
			<li><a href="#home">중구</a>
				<ul id="sub_menu">
					<li><a href="#home">동인동</a></li>
					<li><a href="#home">삼덕동</a></li>
					<li><a href="#home">성내동</a></li>
					<li><a href="#home">대신동</a></li>
					<li><a href="#home">남산동</a></li>
					<li><a href="#home">대봉동</a></li>
				</ul></li>
			<li><a href="#home">남구</a>
				<ul id="sub_menu">
					<li><a href="#home">이천동</a></li>
					<li><a href="#home">봉덕동</a></li>
					<li><a href="#home">대명동</a></li>
				</ul></li>
			<li><a href="#home">수성구</a>
				<ul id="sub_menu">
					<li><a href="#home">범어동</a></li>
					<li><a href="#home">만촌동</a></li>
					<li><a href="#home">수성가동</a></li>
					<li><a href="#home">황금동</a></li>
					<li><a href="#home">중동</a></li>
					<li><a href="#home">상동</a></li>
					<li><a href="#home">파동</a></li>
					<li><a href="#home">두산동</a></li>
					<li><a href="#home">지산동</a></li>
					<li><a href="#home">범물동</a></li>
					<li><a href="#home">고산동</a></li>
				</ul></li>
			<li><a href="#home">달서구</a>
				<ul id="sub_menu">
					<li><a href="#home">성당동</a></li>
					<li><a href="#home">두류동</a></li>
					<li><a href="#home">본리동</a></li>
					<li><a href="#home">감삼동</a></li>
					<li><a href="#home">죽전동</a></li>
					<li><a href="#home">장기동</a></li>
					<li><a href="#home">용산동</a></li>
					<li><a href="#home">이곡동</a></li>
					<li><a href="#home">신당동</a></li>
					<li><a href="#home">월성동</a></li>
					<li><a href="#home">진천동</a></li>
					<li><a href="#home">상인동</a></li>
					<li><a href="#home">도원동</a></li>
					<li><a href="#home">송현동</a></li>
					<li><a href="#home">본동</a></li>
				</ul></li>
			<li><a href="#home">달성군</a>
				<ul id="sub_menu">
					<li><a href="#home">화원읍</a></li>
					<li><a href="#home">논공읍</a></li>
					<li><a href="#home">다사읍</a></li>
					<li><a href="#home">유가읍</a></li>
					<li><a href="#home">옥포읍</a></li>
					<li><a href="#home">현풍읍</a></li>
					<li><a href="#home">가창면</a></li>
					<li><a href="#home">하빈면</a></li>
					<li><a href="#home">구지면</a></li>
				</ul></li>
		</ul>
	</nav>
	<div class="rayout1">
        <p class = "information">회원정보</p>
        <table class="membership" cellpadding="18" cellspacing="0">
		<thead>
            <thead>
            <tr>
              <td>아이디</td>
              <td><input class="text1" type="text" name="id" value="${loginUser.id }" readonly="readonly"></td>
            </tr>
            <tr>
              <td>비밀번호</td>
              <td><input class="text1" type="password" name="pass"></td>
            </tr>
            <tr>
              <td>이름</td>
              <td><input class="text1" type="text" name="name" value="${loginUser.name }"></td>
            </tr>
            <tr>
              <td>이메일</td>
              <td><input class="text3" type="text" name="e-mail" value="${loginUser.email }">
            </tr>
            <tr>
              <td>성별</td>
              <td><select name="gender">
                  <c:choose>
                    <c:when test="${loginUser.gender == 1}">
                      <option value="1" selected="selected">Male</option>
                      <option value="2">Female</option>
                    </c:when>
                    <c:otherwise>
                      <option value="1">Male</option>
                      <option value="2" selected="selected">Female</option>
                    </c:otherwise>
                  </c:choose>
              </select></td>
            </tr>
            <tralign="center">
            <td colspan="2"><input class="submit" type="submit" value="수정"> &nbsp; <input class="submit" type="submit" value="취소"></td></tr>
            </tbody>
          </table>
          </thead>
    </div>
    <div class="rayout2" nowrap>
            <p class = "information2">내 글</p>
        <table class="membership2" cellpadding="18" cellspacing="0">
    	<thead>
    	<tr>
        <th>번호</th>
        <th>지역명</th>
        <th>제목</th>
        <th>게시일</th>
        <th>조회수</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>2021-07-02</td>
        <td>12</td>
    <tr>

          </thead>
    </div>
	
</body>
</html>