<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${ member != null }">
	<c:choose>
		<c:when test="${ member.id eq 'admin' }">
			<li class="member-name">${ member.name }님환영합니다!</li>
			<li><a href="./addproduct.jsp">상품등록</a></li>
			<li><a href="./logout.do">로그아웃</a></li>
			<li><a href="./regist.jsp">회원가입</a></li>
			<li><a href="#">마이페이지</a></li>
		</c:when>
		<c:otherwise>
			<li class="member-name">${ member.name }님환영합니다!</li>
			<li><a href="./logout.do">로그아웃</a></li>
			<li><a href="./regist.jsp">회원가입</a></li>
			<li><a href="#">마이페이지</a></li>
		</c:otherwise>
	</c:choose>
</c:if>
<c:if test="${ member == null }">
	<li><a href="./login.jsp">로그인</a></li>
	<li><a href="./regist.jsp">회원가입</a></li>
	
</c:if>