<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="nid" %>
<%@ attribute name="id" %><!-- 공지 id와 관리자 id를 받아옴 -->

<!-- 관리자 여부 확인뒤 삭제,  -->
<c:if test="${member.id eq 'admin'}">
	<a href="./delnoti.do?nid=${v.nid }" class="btn_bbs">삭제</a>
</c:if>