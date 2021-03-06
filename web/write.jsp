<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%
	String ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SmartEditor</title>
	<link rel="stylesheet"
		  href=" ${pageContext.request.contextPath}/css/menu.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet" />
	<style>
		div.middle {
			width: 650px;
			color: black;
			margin: 50px auto;
			font-size: 13pt;
			background-color: rgb(255, 255, 255);
			border: 0.5px solid rgb(233, 233, 233);
			padding: 30px;
			top: 0;
			border-radius: 25px;
		}

		table td.title {
			border-bottom: 0.5px solid;
			border-color: rgb(220, 220, 220);
		}

		#save {
			float: right;
			margin: 5px;
			border: 0.5px solid rgb(200, 200, 200);
			background-color: rgb(255, 255, 255);
			font-size: 10pt;
			width: 60px;
			height: 40px;
		}
		.del {
			float: right;
			margin: 5px;
			border: 0.5px solid rgb(200, 200, 200);
			background-color: rgb(255, 255, 255);
			font-size: 10pt;
			width: 60px;
			height: 40px;
			color:black;
		}
		.del1 {
			margin-top: 5px;
			float: right;
			padding: 11.5px;
			padding-right: 15.5px;
			padding-left: 15.5px;
			text-decoration: none;
			font-size: 10pt;
			background-color: rgb(255, 255, 255);
			border: 0.5px solid rgb(200, 200, 200);
		}
	</style>
	<script type="text/javascript" src="<%=ctx%>/SE2/js/HuskyEZCreator.js"
			charset="utf-8"></script>

	<script type="text/javascript"
			src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

	<script type="text/javascript">
		var oEditors = [];
		$(function() {
			nhn.husky.EZCreator
					.createInIFrame({
						oAppRef : oEditors,
						elPlaceHolder : "ir1", //textarea에서 지정한 id와 일치해야 합니다.
						//SmartEditor2Skin.html 파일이 존재하는 경로
						sSkinURI : "${pageContext.request.contextPath}/SE2/SmartEditor2Skin.html",
						htParams : {
							// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
							bUseToolbar : true,
							// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
							bUseVerticalResizer : true,
							// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
							bUseModeChanger : true,
							fOnBeforeUnload : function() {

							}
						},
						fOnAppLoad : function() {
							//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
						},
						fCreator : "createSEditor2"
					});

			//저장버튼 클릭시 form 전송
			$("#save").click(function() {
				oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
				$("#frm").submit();
			});
		});

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
		/*관심사 선택*/
		function subjectChange() {
			var subject = document.querySelector('.subject');
			var subject2 = document.querySelector('.subject2');

			var subjectOption = subject.options[subject.selectedIndex].innerText;
			$('.subject2').empty(); /* 구 이름이 변경되면 기존에 들어가 있던 동 이름 selector 비움 */
			var subjectOption2 = {
				inter : [ '맛집', '취미', '명물', '교육', '잡담'],
				problem : [  '공공시설', '쓰레기', '도로파손', '주차', '외부소음' ]

			}
			switch (subjectOption) {
				case '관심사':
					subjectOption2 = subjectOption2.inter;
					break;
				case '문제점':
					subjectOption2 = subjectOption2.problem;
					break;
			}

			for (var i = 0; i < subjectOption2.length; i++) {
				var option = document.createElement('option');
				option.innerText = subjectOption2[i];
				subject2.append(option)
			}
		}

		//로그인 검사
		function checkLogin() {
			var id = '${sessionId}';
			// 수정 ''공백 비교
			if (id == '') {
				alert("로그인 후 글쓰기가 가능합니다.");
				location.href = 'main.jsp';
				return false;
			}
		}
	</script>

</head>
<body>
<script type="text/javascript">
	checkLogin()
</script>

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
</script>
<form id="frm" action="insertPost.do" method="post">
<div class="middle">
	<tr>
		<select class="guName" name="guName" onchange="selectOnChange()">
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
		<select class="dongName" name="dongName">
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

		<select class="subject" name="subject" onchange="subjectChange()">
			<%-- 구 이름 selector, selectOnChange() 스크립트로 변화 처리 --%>
			<option>관심사</option>
			<option>문제점</option>
		</select>
		<select class="subject2" name="subject2">
			<option>맛집</option>
			<option>취미</option>
			<option>명물</option>
			<option>교육</option>
			<option>잡담</option>
		</select>
	</tr>
	<tr>
		<input name="author" type="hidden" value="${sessionId}"/>
	</tr>
		<table width="100%">

			<tr>
				<td class="title"><input type="text" id="title" name="title"
										 placeholder="제목을 입력하세요" style="width: 640px" /></td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="30" id="ir1" name="mainText"
							  style="width: 650px; height: 350px;"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><a class="del1"  href="main.jsp">취소</a><input type="button" class="del" id="save" value="등록" /></td>
			</tr>
		</table>
</div>
</form>

</body>
</html>
