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
                str.innerHTML = '<a style="color: teal;text-decoration: none;" href="memberPage.do">내 정보</a>';
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

<div class="content">
    <table cellpadding="18" cellspacing="0">
        <thead>
        <img src="${pageContext.request.contextPath}/image/deagu.png" alt="daegu logo">
        <tr>
            <th>번호 <a calss href="getPostList.do"><i class="fas fa-angle-down"></i></a></th>
            <th>지역명</th>
            <th>제목</th>
            <th>추천수 <a href="getPostListByRecoCount.do"><i class="fas fa-angle-down"></i></a></th>
            <th>작성자</th>
            <th>게시일</th>
            <th>조회수 <a href="getPostListByViewCount.do"><i class="fas fa-angle-down"></i></a></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${postList }" var="post">
            <tr>
                <td>${post.postId }</td>
                <td>${post.guName } ${post.dongName }</td>
                <td><a href="getPost.do?pid=${post.postId }">${post.postTitle }</a></td>
                <td>${post.postRecoCount }</td>
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
</body>
</html>