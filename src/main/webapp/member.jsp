<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<!-- ȸ������ ������ ���� -->

<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
    function idCheck(id) {
        frm = document.regFrm; 
        if (id == "") {
            alert("���̵� �Է��� �ּ���.");
            frm.id.focus();
            return;
        }
        url = "idCheck.jsp?id=" + id;
        window.open(url, "IDCheck", "width=300,height=150");
    }
 
    
</script>
</head>
<body bgcolor="white" onLoad="regFrm.id.focus()">
   
    <div align="center">
        <br /> <br />
        <form name="regfrm" method="post" action="memberProc.jsp">
            
            <table align="center" border="0" cellspacing="0" cellpadding="5">
                
 
 
                <tr>
                    <td align="center" valign="middle" >
                        <table border="1" cellspacing="0" cellpadding="2" align="center"
                            width="600">
                            <tr align="center" >
                                <td colspan="3"><font color="teal"><b>ȸ�� ����</b></font></td>
                            </tr>
 
 
                            <tr>
                                <td width="20%" style="color:teal">���̵�</td>
                                <td width="50%"><input name="id" size="15"> <input
                                    type="button" value="ID�ߺ�Ȯ��"
                                    onClick="idCheck(this.form.id.value)"></td>
                            </tr>
 
                            <tr>
                                <td style="color:teal">�н�����</td>
                                <td><input type="password" name="pwd" size="20"></td>
                                
                            </tr>
 
                            <tr>
                                <td style="color:teal">�н����� Ȯ��</td>
                                <td><input type="password" name="repwd" size="20"></td>
                                
                            </tr>
 
                            <tr>
                                <td style="color:teal">�̸�</td>
                                <td><input name="name" size="20"></td>
                                
                            </tr>
 
                            <tr>
                                <td style="color:teal">����</td>
                                <td>��<input type="radio" name="gender" value="1"
                                    checked="checked"> ��<input type="radio" name="gebder"
                                    value="2"></td>
                                
                            </tr>
 
                            <tr>
                                <td style="color:teal">�������</td>
                                <td><input name="birthday" size="10"> ex)980127</td>
                                
                            </tr>
 
                            <tr>
                                <td style="color:teal">Email</td>
                                <td><input name="email" size="30"></td>
                                
                            </tr>
 
                            
                            <tr>
                                <td colspan="3" align="center"><input type="button"
                                    value="ȸ������" onclick="inputCheck()"> &nbsp; &nbsp; <input
                                    type="reset" value="�ٽþ���"> &nbsp; &nbsp; <input
                                    type="button" value="�α���"
                                    onClick="javascript:location.href='login.jsp'"></td>
                            </tr>
 
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>