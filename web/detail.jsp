<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet"
		  href=" ${pageContext.request.contextPath}/css/detailUI.css">
	<link rel="stylesheet"
		  href=" ${pageContext.request.contextPath}/css/menu.css">
	<link rel="stylesheet"
		  href=" ${pageContext.request.contextPath}/css/likebutton.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet" />
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
		$(function(){
			$(document).one('click', '.like-review', function(e) {
				$(this).html('<i class="fa fa-heart" aria-hidden="true"></i> 눌러짐');
				$(this).children('.fa-heart').addClass('animate-like');
			});
		});
	</script>

</head>
<body>
<header>
	<h1>

		<a href="main.jsp">방방곡곡</a>
	</h1>
	<div class="search">
		<input type="text" placeholder="검색어 입력">
		<button style="font-size:1rem;" ><i class="fas fa-search"></i></button>
	</div>

	<p class="login">
		<a id="login" href="login.jsp">로그인</a> /
		<a id="regist" href="regist.jsp">회원가입</a>
		<script>
			var id = '${sessionId}'
			if (id == '') {

			}else{
				var str = document.getElementById("login");
				str.innerHTML = '<a style="color: teal;text-decoration: none;" href="logout.do">로그아웃</a>';
				var str = document.getElementById("regist");
				str.innerHTML = '<a style="color: teal;text-decoration: none;" href="Information.jsp">내 정보</a>';
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
		<p class="title">${post.postTitle }</p>
	</div>
	<div class= "pdate">
		<tr>
			<td class="name"><span>작성자</span> ${post.postAuthor }</td>
			<td class="day"><span>작성일</span> ${post.postDate }</td>
			<td class="count"><span>조회수</span> ${post.postViewCount }</td>
		</tr>
	</div>
	<div class="detailcontent">
		<p>${post.postText }</p>
	</div>
	<div class="detail">

		<tr>
			<span class="like-content">
				<button class="btn-secondary like-review">
					<i class="fa fa-heart" aria-hidden="true"></i>좋아요
				</button>
			</span>


			<td>
				<form action="main.jsp" method="post">
					<button class="next">목록</button>
				</form>
			</td>
			<td>
				<form action="UpdatePost.jsp" method="post" id="up">
					<button class="next">수정</button>
				</form>
			</td>

			<td>
				<form action="deletePost.do" method="post" id="del">
					<button class="next" >삭제</button>
				</form>
			</td>
			<script>
				var id = '${sessionId}'
				if (id == '${post.postAuthor }') {
				}else{
					var str = document.getElementById("up");
					str.innerHTML = '<button style="display:none"></button>';
					var str = document.getElementById("del");
					str.innerHTML = '<button style="display:none"></button>';
				}
			</script>
		</tr>
	</div>
	<div>
		<form action="detail.jsp" method="post">
				<textarea class="detailcomment" name="detailcomment"
						  placeholder="댓글을 입력하세요" cols="40" rows="10"></textarea>
			<button class="comment">등록</button>
		</form>
	</div>
	<div>
		<p class="commentcount">댓글1</p>
		<p class="commentlist">
			<span class="author">김성동</span><br>
			<br>
			테스트
			<span><a class="comment" href="댓글삭제.do">삭제</a></span>
			<span><a class="comment" href="댓글수정.do">수정</a></span>
		</p>
	</div>
</div>
</body>
</html>