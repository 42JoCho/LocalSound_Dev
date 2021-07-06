<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/menu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/content.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript">
        var didScroll;
        var lastScrollTop = 0;
        var delta = 5;
        var navbarHeight = $('nav').outerHeight();

        $(window).scroll(function (event) {
            didScroll = true;
        });

        setInterval(function () {
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
    <h1><a href="main.jsp">local sound</a></h1>
    <div class="search">
        <input type="text" placeholder="검색어 입력">

        <button>검색</button>
    </div>
    <p class="login"><a href="login.jsp">로그인</a> / <a href="member.jsp">회원가입</a></p>
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
            </ul>
        </li>
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
            </ul>
        </li>
        <li><a href="#home">서구</a>

            <ul id="sub_menu">
                <li><a href="#home">내당동</a></li>
                <li><a href="#home">비산동</a></li>
                <li><a href="#home">평리동</a></li>
                <li><a href="#home">상중이동</a></li>
                <li><a href="#home">원대동</a></li>
            </ul>
        </li>

        <li><a href="#home">중구</a>
            <ul id="sub_menu">
                <li><a href="#home">동인동</a></li>
                <li><a href="#home">삼덕동</a></li>
                <li><a href="#home">성내동</a></li>
                <li><a href="#home">대신동</a></li>
                <li><a href="#home">남산동</a></li>
                <li><a href="#home">대봉동</a></li>
            </ul>
        </li>
        <li><a href="#home">남구</a>
            <ul id="sub_menu">
                <li><a href="#home">이천동</a></li>
                <li><a href="#home">봉덕동</a></li>
                <li><a href="#home">대명동</a></li>
            </ul>
        </li>
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
            </ul>
        </li>
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
            </ul>

        </li>
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
            </ul>
        </li>
    </ul>
</nav>
<div class="content">
<table cellpadding="18" cellspacing="0">
    <thead>
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
    <tr>
        <td>1</td>
        <td>달성군 유가읍</td>
        <td>집이 너무 멀어요</td>
        <td>mingiSeo</td>
        <td>2021-07-02</td>
        <td>12</td>

    <tr>
        <td>2</td>
        <td>동구 신암동</td>
        <td>게시물 2</td>
        <td>author2</td>
        <td>2021-06-02</td>
        <td>216</td>
    </tr>
    <tr>
        <td>3</td>
        <td>북구 고성동</td>
        <td>제목 3</td>
        <td>author3</td>
        <td>2021-05-02</td>
        <td>34</td>
    </tr>
    <tr>
        <td>4</td>
        <td>수성구 두산동</td>
        <td>제목 4</td>
        <td>author4</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>5</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나ㅏ</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>6</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나ㅏ</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>7</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나ㅏ</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>8</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나ㅏ</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>9</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나ㅏㅏ</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>10</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나ㅏ</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>11</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>12</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>13</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>14</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>15</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>16</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>17</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>
    <tr>
        <td>18</td>
        <td>김성동</td>
        <td>제목임</td>
        <td>나나</td>
        <td>2021-04-02</td>
        <td>123</td>
    </tr>

    </tbody>
</table>
</div>
<div style="position:relative">
  <p><a class="newwrite" href="write.jsp">게시글쓰기</a></p>
</div>
</body>
</html>