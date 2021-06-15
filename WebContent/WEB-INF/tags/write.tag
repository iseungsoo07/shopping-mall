
<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name = "type" %> 
<c:if test = "${uid != null }">
	<!-- 로그인한상태 -->
	<c:choose>
		<c:when test = "${type=='msg' }">
			<!-- 글을 작성하는작업 -->
			<input type = "text" name = "msg" >
			
		</c:when>
		<c:when test = "${type=='rmsg' }">
			<!--댓글을 작성하는 작업-->
			댓글작성하기<input type = "text" name = "rmsg">
			
		</c:when>
	</c:choose>
</c:if>

<c:if test = "${uid ==null}">
	<!-- 로그인하지않은 상태 -->
	<c:choose>
		<c:when test = "${type=='msg' }">
			<!-- 글을 작성하는작업 -->
			<input type = "text" name = "msg" disabled="disabled" value="작성하려면 로그인 하세요">
		</c:when>
		<c:when test = "${type=='rmsg' }">
			<!--댓글을 작성하는 작업-->
			댓글작성하기<input type = "text" name = "rmsg" disabled="disabled" value="작성하려면 로그인 하세요">
			
		</c:when>
	</c:choose>
</c:if>