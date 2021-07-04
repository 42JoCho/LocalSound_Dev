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
<link rel="stylesheet" href=" ${pageContext.request.contextPath}/css/menu.css">
<style>
table{
	width: auto;
    color:black ;
    margin : 50px auto;    
	font-size: 13pt;
    background-color: rgb(255, 255, 255);
    border: 0.5px solid rgb(233, 233, 233);
    padding : 30px;
    top: 0;
    border-radius: 25px;
}
</style>
<script type="text/javascript" src="<%=ctx %>/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

<script type="text/javascript">
var oEditors = [];
$(function(){
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "ir1", //textarea에서 지정한 id와 일치해야 합니다. 
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "${pageContext.request.contextPath}/SE2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){
                   
              }
          }, 
          fOnAppLoad : function(){
              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
          },
          fCreator: "createSEditor2"
      });
      
      //저장버튼 클릭시 form 전송
      $("#save").click(function(){
          oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
          $("#frm").submit();
      });    
});
 
 
 
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
<form id="frm" action="detail.jsp" method="post" >
<table width="100%">
        <tr>
            <td><input type="text" id="title" name="title" placeholder="제목을 입력하세요" style="width:650px"/></td>
        </tr>
        <tr>
            <td>
                <textarea rows="10" cols="30" id="ir1" name="content" style="width:650px; height:350px; "></textarea>
            </td>
        </tr>
        <tr class="save">
            <td  colspan="2">
                <input type="button" id="save" value="저장"/>
                <input type="button" value="취소"/>
            </td>
        </tr>
        <p> 테스트용용!!! </p>
</table>
</form>
</body>
</html>
