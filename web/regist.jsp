<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lnag="UTF-8">
<head>
    <meta charset="UTF-8">
    <title>방방곡곡 : 회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/regist_main.css">

</head>
<script>
    function checkLogin() {
        var id = '${sessionId}';
        // 수정 ''공백 비교
        if (id == '') {

        }else{
            alert('로그인되어있습니다.')
            location.href = 'main.jsp';
        }
    }
</script>
<body>
<script type="text/javascript">
    checkLogin()
</script>
<!-- header -->
<div id="header">
    <a href="main.jsp" title="홈으로 돌아가기"><img src="${pageContext.request.contextPath}/image/logo.png" id="logo"></a>
</div>
<!-- wrapper -->
<form action="signup.do" method="post">

<div id="wrapper">
        <div id="content">

            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">아이디</label>
                </h3>
                <span class="box int_id">
                        <input type="text" id="id" class="int" name="id" maxlength="20">
                    </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                <span class="box int_pass">
                        <input type="password" id="pswd1" name="pw" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="${pageContext.request.contextPath}/image/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                        <img src="${pageContext.request.contextPath}/image/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                <span class="error_next_box"></span>
            </div>

            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="name">이름</label></h3>
                <span class="box int_name">
                        <input type="text" id="name" name="name" class="int" maxlength="20">
                    </span>
                <span class="error_next_box"></span>
            </div>

            <!-- BIRTH -->
            <div>
                <h3 class="join_title"><label for="yy">생년월일</label></h3>

                <div id="bir_wrap">
                    <!-- BIRTH_YY -->
                    <div id="bir_yy">
                            <span class="box">
                                <input name="year" type="text" id="yy" class="int"  maxlength="4" placeholder="년(4자)">
                            </span>
                    </div>

                    <!-- BIRTH_MM -->
                    <div id="bir_mm" name="birth">
                            <span class="box">
                                <select name="month" id="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                    </div>

                    <!-- BIRTH_DD -->
                    <div id="bir_dd" name="birth">
                            <span class="box">
                                <input name="day" type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                    </div>

                </div>
                <span class="error_next_box"></span>
            </div>


            <!-- GENDER -->
            <div>
                <h3 class="join_title"><label for="gender">성별</label></h3>
                <span class="box gender_code">
                        <select id="gender" class="sel" name="gender">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>
                    </span>
                <span class="error_next_box">필수 정보입니다.</span>
            </div>

            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                <span class="box int_email">
                        <input type="text" id="email" name="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
            </div>

            <!-- JOIN BTN-->
            <div class="btn_area">
                <button id="btnJoin">가입하기</button>
            </div>
        </div>
        <!-- content-->
</div>
    <script src="regist1/js/regist_main.js"></script>
</form>
<!-- wrapper -->
</body>
</html>