<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="membermanager" class="dao.MemberDAO" />
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<script type="text/javascript" src="../js/script.js"></script>

</head>

<body>

	<%

	String id = (String)request.getParameter("id");

	String pw = (String)request.getParameter("pw");



	boolean deleteConfirm = membermanager.deleteConfirm(id, pw);

	if(deleteConfirm){

%>

	<script type="text/javascript">

			var confirmResult = confirm("정말 삭제하시겠습니까?");

			if(confirmResult == true){

				var deleteId = "<%=id%>";

				post_to_url("delete-member-action.jsp",{'id':deleteId});

			} else {

				history.back();

			}

		

		</script>

	<%

	} else {

%>

	<script>

			alert("비밀번호가 틀립니다!");

			history.back();

		</script>

	<%

	}

%>

</body>

</html>



