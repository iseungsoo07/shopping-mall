<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${ sortBy eq popularity }">
		<option data-display="Select">상품 정렬하기</option>
		<option value="popularity" selected>인기순</option>
		<option value="highPrice">높은 가격순</option>
		<option value="lowPrice">낮은 가격순</option>
	</c:when>
	<c:when test="${ sortBy eq highPrice }">
		<option data-display="Select">상품 정렬하기</option>
		<option value="popularity">인기순</option>
		<option value="highPrice" selected>높은 가격순</option>
		<option value="lowPrice">낮은 가격순</option>
	</c:when>
	<c:when test="${ sortBy eq lowPrice }">
		<option data-display="Select">상품 정렬하기</option>
		<option value="popularity">인기순</option>
		<option value="highPrice">높은 가격순</option>
		<option value="lowPrice" selected>낮은 가격순</option>
	</c:when>
	<c:otherwise>
		<option data-display="Select" selected>상품 정렬하기</option>
		<option value="popularity">인기순</option>
		<option value="highPrice">높은 가격순</option>
		<option value="lowPrice">낮은 가격순</option>
	</c:otherwise>
</c:choose>