<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="menu.css">

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
    <h1><a href="#home">local sound</a></h1>
    <div class="search">
        <input type="text" placeholder="검색어 입력">
        <button>검색</button>
    </div>
    <p class="login"><a href="#home">로그인</a> / <a href="#home">회원가입</a></p>
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
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
        <li><a href="#home">서구</a>
            <ul id="sub_menu">
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
        <li><a href="#home">중구</a>
            <ul id="sub_menu">
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
        <li><a href="#home">남구</a>
            <ul id="sub_menu">
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
        <li><a href="#home">수성구</a>
            <ul id="sub_menu">
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
        <li><a href="#home">달서구</a>
            <ul id="sub_menu">
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
        <li><a href="#home">달성군</a>
            <ul id="sub_menu">
                <li><a href="#home">신암동</a></li>
                <li><a href="#home">동</a></li>
            </ul>
        </li>
    </ul>
</nav>

<div class="content">
    <p>게시글1</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
    <p>게시글2</p>
</div>

</body>
</html>