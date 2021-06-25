<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- r=review -->
<li>
	<!-- 별점 : {r.rating} -->
	별점 : <c:choose>
		<c:when test="${r.rating==0}">-</c:when>
		<c:when test="${r.rating==1}">★</c:when>
		<c:when test="${r.rating==2}">★★</c:when>
		<c:when test="${r.rating==3}">★★★</c:when>
		<c:when test="${r.rating==4}">★★★★</c:when>
		<c:when test="${r.rating==5}">★★★★★</c:when>
	</c:choose>
</li>