<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 관리자만 공지작성 button을 줄 예정 -->

<c:if test="${member.id eq 'admin'}">

	
	<a href="pro_regist.jsp" class="btn_bbs">글쓰기</a><!-- 공지페이지로 이동 -->
</c:if>

