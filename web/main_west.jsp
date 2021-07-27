<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/menu.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/content.css">
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
    </script>
</head>
<body>
<header>
    <h1>
        <a href="main.jsp">방방곡곡</a>
    </h1>
    <form class="search" method="post" action="searchPost.do">
        <input type="text" placeholder="검색어 입력">
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
            <li><a href="main_east.jsp">동구</a>
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
            <li><a href="main_north.jsp">북구</a>
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
            <li><a href="main_west.jsp">서구</a>
                <ul id="sub_menu">
                    <li><a href="#home">내당동</a></li>
                    <li><a href="#home">비산동</a></li>
                    <li><a href="#home">평리동</a></li>
                    <li><a href="#home">상중이동</a></li>
                    <li><a href="#home">원대동</a></li>
                </ul></li>
            <li><a href="main_mid.jsp">중구</a>
                <ul id="sub_menu">
                    <li><a href="#home">동인동</a></li>
                    <li><a href="#home">삼덕동</a></li>
                    <li><a href="#home">성내동</a></li>
                    <li><a href="#home">대신동</a></li>
                    <li><a href="#home">남산동</a></li>
                    <li><a href="#home">대봉동</a></li>
                </ul></li>
            <li><a href="main_south.jsp">남구</a>
                <ul id="sub_menu">
                    <li><a href="#home">이천동</a></li>
                    <li><a href="#home">봉덕동</a></li>
                    <li><a href="#home">대명동</a></li>
                </ul></li>
            <li><a href="main_suseong.jsp">수성구</a>
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
            <li><a href="main_dalseo.jsp">달서구</a>
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
            <li><a href="main_dalseong.jsp">달성군</a>
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
    </div>
</nav>
<script type="text/javascript">
    $(".dropmenu ul li").hover(function(){
        $(this).find("ul").stop().fadeToggle(300);
    });
</script>

<div class="content">
    <table cellpadding="18" cellspacing="0">
        <thead>
        <img src="${pageContext.request.contextPath}/image/seogu.jpg" alt="daegu logo">
        <tr>
            <th>번호</th>
            <th>지역명</th>
            <th>제목</th>
            <th>작성자</th>
            <th>게시일</th>
            <th>조회수</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${postList }" var="post">
            <tr>
                <td>${post.postId }</td>
                <td>${post.guName } ${post.dongName }</td>
                <td><a href="getPost.do?pid=${post.postId }">${post.postTitle }</a></td>
                <td>${post.postAuthor }</td>
                <td>${post.postDate }</td>
                <td>${post.postViewCount }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div style="position: relative">
    <p>
        <a class="newwrite" href="write.jsp">새 글</a>
    </p>
</div>
<div class="row" style="background-color: #ccc;">
    <p>
        <a href="index.jsp">처음화면으로</a>
        <a href="UpdatePost.jsp">수정</a>
        <a href="login.jsp">로그인</a>
        <a href="Information1.jsp">테스트</a>
    </p>
</div>
</body>
</html>