
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 관리자만 QnA에 대한 답변형식을 줄 예정 -->
<!-- 선택된 qid값을 전달해줘야함-->

<c:if test="${member.id eq 'admin'}">

	<form method="post" action="./newReply.do">
		<input type="hidden" name="qid" value="${v.qna.qid}">
		<table class="table2">
			<tr>
				<td>내용</td>
				<td><textarea name="rcon" value="${v.reply.rcon }" name="rcon"
						cols=85 rows=15></textarea></td>
			</tr>
		</table>

		<center>
			<input type="submit" value="작성">
		</center>
	
</c:if>

