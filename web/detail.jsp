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
				$(this).html('<i class="fa fa-heart" aria-hidden="true"></i>완료');
				$(this).children('.fa-heart').addClass('animate-like');
			});
		});
	</script>

</head>
<body>
<header>
	<h1>
		<a href="getPostList.do">방방곡곡</a>
	</h1>
	<form class="search" method="post" action="searchPost.do">
		<input type="text" name="mainText" placeholder="검색어 입력">
		<button style="font-size:1.5rem;" ><i class="fas fa-search"></i></button>
	</form>

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
	<div class="dropmenu">
		<ul id="main_menu">
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="동구">
				<button class="gu">동구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="북구">
				<button class="gu">북구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="서구">
				<button class="gu">서구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="중구">
				<button class="gu">중구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="남구">
				<button class="gu">남구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="수성구">
				<button class="gu">수성구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="달서구">
				<button class="gu">달서구</button>
			</form>
			</li>
			<li><form method="post" action="searchPost.do">
				<input name="mainText" type="hidden" value="달성군">
				<button class="gu">달성군</button>
			</form>
			</li>
		</ul>
	</div>
</nav>
<script type="text/javascript">
	$(".dropmenu ul li").hover(function(){
		$(this).find("ul").stop().fadeToggle(300);
	});
</script>
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
				<form action="IncreaseRecoCount.do?pid=${post.postId }" method="post">
					<input name="pid" type="hidden" value="${post.postId }"/>
				<button class="btn-secondary like-review">
					<i class="fa fa-heart" aria-hidden="true"></i>추천
				</button>
				</form>
			</span>


			<td>
				<form action="main.jsp" method="post">
					<button class="next">목록</button>
				</form>
			</td>
			<td>
				<form action="editPost.do" method="post" id="up">
					<input name="pid" type="hidden" value="${post.postId }"/>
					<button class="next">수정</button>
				</form>
			</td>

			<td>
				<form action="deletePost.do" method="post" id="del">
					<input name="pid" type="hidden" value="${post.postId }"/>
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
		<form action="insertComment.do" method="post">
			<input name="pid" type="hidden" value="${post.postId }"/>
			<input name="cid" type="hidden" value="${sessionId}"/>
				<textarea class="detailcomment" name="cmtText"
						  placeholder="댓글을 입력하세요" cols="40" rows="10"></textarea>
			<button class="comment">등록</button>
		</form>
	</div>
	<div>
		<p class="commentcount">댓글</p>
		<c:forEach items="${commentList }" var="comment">
			<p class="commentlist">
			<td><p style="font-weight: bold;">${comment.commentAuthor }</p></td>
			<td>${comment.commentText }
				<p class="comment">${comment.commentDate }
				<a href="deleteComment.do">삭제</a>
				<a id="cmtup" class="comment" href="updateComment.do">수정</a></p>
			</td>
			</p>
		</c:forEach>

	</div>
</div>
</body>
</html>