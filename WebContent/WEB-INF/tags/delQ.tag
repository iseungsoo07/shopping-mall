<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="qid" %>


<!-- 작성자 여부 확인뒤 삭제,  -->
<c:if test="${member.id eq 'admin'}"><!-- 만약 작성자라면, -->
	<a href="./delQnA.do?qid=${v.qna.qid}" class="btn_bbs">QnA삭제</a>
	<!--입력받은 공지 id를 따라 삭제--> 
</c:if>
