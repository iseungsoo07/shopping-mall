<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="rid"%>
<%@ attribute name="qid"%><!-- 댓글 id와 작성자 id를 받아옴 -->

<!-- 작성자 여부 확인뒤 삭제,  -->
<c:if test="${member.id eq 'admin'}">
	<!-- 만약 작성자라면, -->
	<p class="btn_line txt_right">
		<a href="./delReply.do?rid=${r.rid}&&qid=${v.qna.qid}" class="btn_bbs">reply삭제</a>
	</p>
	
	<!--입력받은 댓글 id를 따라 삭제-->
</c:if>