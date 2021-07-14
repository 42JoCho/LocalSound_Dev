<%@ page language="java" contentType="text/html; charset=EUC-KR"
		 pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/css/indexUI.css">
	<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		$(window)
				.load(
						function() {
							var height = window.innerHeight, x = 0, y = height / 2, curveX = 10, curveY = 0, targetX = 0, xitteration = 0, yitteration = 0, menuExpanded = false;

							blob = $('#blob'), blobPath = $('#blob-path'),

									hamburger = $('.hamburger');

							$(this).on('mousemove', function(e) {
								x = e.pageX;

								y = e.pageY;
							});

							$('.hamburger, .menu-inner').on('mouseenter',
									function() {
										$(this).parent().addClass('expanded');
										menuExpanded = true;
									});

							$('.menu-inner').on('mouseleave', function() {
								menuExpanded = false;
								$(this).parent().removeClass('expanded');
							});

							function easeOutExpo(currentIteration, startValue,
												 changeInValue, totalIterations) {
								return changeInValue
										* (-Math.pow(2, -10 * currentIteration
												/ totalIterations) + 1)
										+ startValue;
							}

							var hoverZone = 150;
							var expandAmount = 20;

							function svgCurve() {
								if ((curveX > x - 1) && (curveX < x + 1)) {
									xitteration = 0;
								} else {
									if (menuExpanded) {
										targetX = 0;
									} else {
										xitteration = 0;
										if (x > hoverZone) {
											targetX = 0;
										} else {
											targetX = -(((60 + expandAmount) / 100) * (x - hoverZone));
										}
									}
									xitteration++;
								}

								if ((curveY > y - 1) && (curveY < y + 1)) {
									yitteration = 0;
								} else {
									yitteration = 0;
									yitteration++;
								}

								curveX = easeOutExpo(xitteration, curveX, targetX
										- curveX, 100);
								curveY = easeOutExpo(yitteration, curveY, y
										- curveY, 100);

								var anchorDistance = 200;
								var curviness = anchorDistance - 40;

								var newCurve2 = "M60," + height + "H0V0h60v"
										+ (curveY - anchorDistance) + "c0,"
										+ curviness + "," + curveX + ","
										+ curviness + "," + curveX + ","
										+ anchorDistance + "S60," + (curveY)
										+ ",60," + (curveY + (anchorDistance * 2))
										+ "V" + height + "z";

								blobPath.attr('d', newCurve2);

								blob.width(curveX + 60);

								hamburger.css('transform', 'translate(' + curveX
										+ 'px, ' + curveY + 'px)');

								$('h2').css('transform',
										'translateY(' + curveY + 'px)');
								window.requestAnimationFrame(svgCurve);
							}

							window.requestAnimationFrame(svgCurve);

						});
	</script>
</head>
<body
		style="background-image:
				url('${pageContext.request.contextPath}/image/dal1.jpg');">
<div id="menu">
	<div class="hamburger">
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
	</div>

	<div class="menu-inner">
		<ul>
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="regist.jsp">회원가입</a></li>
			<li><a href="main.jsp">구경하기</a></li>
		</ul>
	</div>
	<svg version="1.1" id="blob" xmlns="http://www.w3.org/2000/svg"
		 xmlns:xlink="http://www.w3.org/1999/xlink">
		<path id="blob-path"
			  d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z" />
	</svg>
</div>
<h2>메뉴로 가세요!</h2>
<div class="right">
	<h>대구</h>
	<br>
	<h>사람들</h>
	<br>
	<h>모여라</h>
	<br>
	<h class="title">방방곡곡</h>
</div>
</body>
</html>