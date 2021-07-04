<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%    
    //제대로 utf-8환경이 아니라 한글 깨짐 그래서 임의로 추가                                                   
    request.setCharacterEncoding("utf-8");
    
    String title = request.getParameter("title");
    String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/detailUI.css">
<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/menu.css">
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
	function selectOnChange() { /* 구 이름 selector 변경에 따라 동 이름 selector 변경을 처리하는 함수 */
		var guName = document.querySelector('.guName');
		var dongName = document.querySelector('.dongName');
		var guOption = guName.options[guName.selectedIndex].innerText;
		$('.dongName').empty(); /* 구 이름이 변경되면 기존에 들어가 있던 동 이름 selector 비움 */
		var dongOption = {
			donggu : [ '신암동', '신천동', '효목동', '도평동', '불로봉무동', '지저동', '동촌동',
					'방촌동', '해안동', '안심동', '혁신동', '공산동' ],
			bukgu : [ '고성동', '칠성동', '침산동', '산격동', '대현동', '복현동', '검단동', '무태조야동',
					'관문동', '태전동', '구암동', '관음동', '읍내동', '동천동', '노원동', '국우동' ],
			seogu : [ '내당동', '비산동', '평리동', '상중동', '원대동' ],
			joongu : [ '동인동', '삼덕동', '성내동', '대신동', '남산동', '대봉동' ],
			namgu : [ '이천동', '봉덕동', '대명동' ],
			soosunggu : [ '범어동', '만촌동', '수성가동', '황금동', '중동', '상동', '파동', '두산동',
					'지산동', '범물동', '고산동' ],
			dalseogu : [ '성당동', '두류동', '본리동', '감삼동', '죽전동', '장기동', '용산동',
					'이곡동', '신당동', '월성동', '진천동', '상인동', '도원동', '송현동', '본동' ],
			dalsunggoon : [ '화원읍', '논공읍', '다사읍', '유가읍', '옥포읍', '현풍읍', '가창면',
					'하빈면', '구지면' ]
		}
		switch (guOption) {
		case '동구':
			dongOption = dongOption.donggu;
			break;
		case '북구':
			dongOption = dongOption.bukgu;
			break;
		case '서구':
			dongOption = dongOption.seogu;
			break;
		case '중구':
			dongOption = dongOption.joongu;
			break;
		case '남구':
			dongOption = dongOption.namgu;
			break;
		case '수성구':
			dongOption = dongOption.soosunggu;
			break;
		case '달서구':
			dongOption = dongOption.dalseogu;
			break;
		case '달성군':
			dongOption = dongOption.dalsunggoon;
			break;
		}
		for (var i = 0; i < dongOption.length; i++) { /* selector 에 선택한 구에 해당하는 동을 집어넣음 */
			var option = document.createElement('option');
			option.innerText = dongOption[i];
			dongName.append(option)
		}
	}
</script>
</head>
<body>
	<header>
		<h1>
		
			<a href="main.jsp">local sound</a>
		</h1>
		<div class="search">
			<input type="text" placeholder="검색어 입력">
			<button>검색</button>
		</div>
		<p class="login">
			<a href="#home">로그인</a> / <a href="#home">회원가입</a>
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
			<li><a href="#home">달서구</a>
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
		<form action="main.jsp" method="post">
			<tr>
				<select class="guName" onchange="selectOnChange()">
					<%-- 구 이름 selector, selectOnChange() 스크립트로 변화 처리 --%>
					<option>동구</option>
					<option>북구</option>
					<option>서구</option>
					<option>중구</option>
					<option>남구</option>
					<option>수성구</option>
					<option>달서구</option>
					<option>달성군</option>
				</select>
				<select class="dongName">
					<option>신암동</option>
					<option>신천동</option>
					<option>효목동</option>
					<option>도평동</option>
					<option>불로봉무동</option>
					<option>지저동</option>
					<option>동촌동</option>
					<option>방촌동</option>
					<option>해안동</option>
					<option>안심동</option>
					<option>혁신동</option>
					<option>공산동</option>
				</select>
			</tr>
			<tr>
				<p class="title"><%=title %></p>
			</tr>
			<tr>
				<p class="detail">
					<td class="name">작성자</td>
					<td class="day">작성일</td>
					<td class="count">조회수</td>
					<button class="next">다음글</button>
					<button>
						<a href="main.jsp">목록</a>
					</button>
				</p>
			</tr>
			<div class="con">
			<p class="detailcontent">
				<%=content %>
			</p>
			</div>
			<p>
				<textarea class="detailcomment" name="detailcomment"
					placeholder="댓글을 입력하세요" cols="40" rows="10"></textarea>
				<button class="comment">등록</button>
			</p>
			<p class="commentcount">댓글1</p>
			<p class="commentlist">댓글 안녕하세요</p>
            <p>1test중 입니다 </p>
		</form>
	</div>
	<p>서민기 github commit test 입니다.</p>
</body>
</html>