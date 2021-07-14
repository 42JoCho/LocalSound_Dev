<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String url = "jdbc:mysql://localhost/mysql";
	String id = "root";
	String password = "tjdehd450";

	String id_ = request.getParameter("id");

	String sql = "SELECT * FROM post where PID=?";

	// 1단계 클래스 JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");

	// 2단계 데이터베이스 접속
	Connection conn = DriverManager.getConnection(url, id, password);
	System.out.println("데이터베이스 접속 성공");
	// SQL 문장 객체 생성 및 설정
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, id_);
	ResultSet rs = stmt.executeQuery();
	rs.next();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet"
		  href=" ${pageContext.request.contextPath}/css/detailUI.css">
	<link rel="stylesheet"
		  href=" ${pageContext.request.contextPath}/css/menu.css">
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
				<li><a href="#home">원대동동</a></li>
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
		<li><a href="#home">달서구 </a>
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
<div class="write">
	<div>
		<p class="title"><%=rs.getNString("TITLE")%></p>
	</div>
	<div>
		<tr>
			<td class="name"><%=rs.getNString("AUTHOR")%></td>
			<td class="day"><%=rs.getTimestamp("PDATE")%></td>
			<td class="count"><%=rs.getInt("VIEWCOUNT")%></td>
		</tr>
	</div>
	<div class="detailcontent">
		<%=rs.getNString("PMAIN_TEXT")%>
	</div>
	<div class="detail">
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<button class="next">목록</button>
				</form>
			</td>
			<td>
				<form action="main.jsp" method="post">
					<button class="next">수정</button>
				</form>
			</td>
			<td>
				<form action="main.jsp" method="post">
					<button class="next">삭제</button>
				</form>
			</td>
		</tr>
	</div>
	<div>
		<form id="frm" action="detail.jsp" method="post">
				<textarea class="detailcomment" name="detailcomment"
						  placeholder="댓글을 입력하세요" cols="40" rows="10"></textarea>
			<button class="comment">등록</button>
		</form>
	</div>
	<div>
		<p class="commentcount">댓글1</p>
		<p class="commentlist">
			<button class="commentedit">수정</button>
			<button class="commentdel">삭제</button>
		</p>
	</div>
</div>
</body>
</html>