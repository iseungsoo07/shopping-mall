<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="membermanager" class="dao.MemberDAO" />

<%
	String idkey = (String) session.getAttribute("idKey");
	Member dto = membermanager.getMember(idkey);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="../js/script.js?ver=2"></script>
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/.js"></script>
window.onload = function(){

	var name = document.getElementsByName("name")[0];

	for(var i = 0;i<name.length;i++){

	
		if(name[i].value ==="<%=dto.getName()%>"){

			name[i].selected = true;

		}

	}

	document.getElementById("btnZip").onclick = checkzip;

	document.getElementById("btnModify").onclick = memberModify;

	document.getElementById("btnModifyCancel").onclick = memberModifyCancel;

	document.getElementById("btnDelete").onclick = function(){

		memberDelete("<%=dto.getId()%>
	");

		}

	}
	
</script>

</head>

<body>

	<br>

	<table class="table">

		<tr>

			<td align="center" valign="middle" style="background-color: #FFFFCC">

				<form name="regForm" method="post" action="modify_member_action.jsp">

					<table border="1">

						<tr align="center" style="background-color: #8899aa">

							<td colspan="2"><b style="color: #FFFFFF">회원 정보 수정</b></td>

						</tr>

						<tr>

							<td width="16%">아이디</td>

							<td width="57%"><input type="text" name="id" size="15"
								style="background-color: lightgray" readonly="readonly"
								value="<%=dto.getId()%>"></td>

						</tr>

						<tr>

							<td>패스워드</td>

							<td><input type="password" name="pass" size="15"
								value="<%=dto.getPw()%>"></td>

						</tr>

						<tr>

							<td>패스워드 확인</td>

							<td><input type="password" name="repass" size="15"></td>

						</tr>

						<tr>

							<td>이름</td>

							<td><input type="text" name="name" size="15"
								value="<%=dto.getName()%>"></td>

						</tr>

						<tr>

							<td>이메일</td>

							<td><input type="text" name="mail" size="27"
								value="<%=dto.getEmail()%>"></td>

						</tr>

						<tr>

							<td>전화번호</td>

							<td><input type="text" name="phone" size="20"
								value="<%=dto.getPhone()%>"></td>

						</tr>

						<tr>

							<td>우편번호</td>

							<td><input type="text" name="zipcode" size="7"
								value="<%=dto.getZipcode()%>"> <input type="button"
								value="우편번호찾기" id="btnZip"></td>

						</tr>

						<tr>

							<td>주소</td>

							<td><input type="text" name="address" size="60"
								value="<%=dto.getAddr()%>"></td>

						</tr>

						<tr>

							<td colspan="2" align="center"><input type="button"
								value="수정완료" id="btnModify" /> &nbsp;&nbsp; <input
								type="button" value="수정취소" id="btnModifyCancel" /> <input
								type="button" value="회원탈되" id="btnDelete" /></td>

						</tr>

					</table>

				</form>

			</td>

		</tr>

	</table>

</body>

</html>

https://sourcestudy.tistory.com/344