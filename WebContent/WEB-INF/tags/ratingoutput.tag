<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- r=review -->
<!-- foreach문 예상해서 변수명 v로 합니다 -->
<li>
	<!-- 별점 : {r.rating} -->
	별점 : <c:choose>
		<c:when test="${v.rating==0}">-</c:when>
		<c:when test="${v.rating==1}">★</c:when>
		<c:when test="${v.rating==2}">★★</c:when>
		<c:when test="${v.rating==3}">★★★</c:when>
		<c:when test="${v.rating==4}">★★★★</c:when>
		<c:when test="${v.rating==5}">★★★★★</c:when>
	</c:choose>
</li>