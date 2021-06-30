<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String id = (String) session.getAttribute("id");
%>

<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">My Page</a>
<ul class="dropdown-menu">
	<li>
		<c:choose>
			<c:when test="${ id == null }">
				<a href="./mypage.do">내정보</a>
			</c:when>
			<c:otherwise>
				<a href="./mypage.do">내 정보</a>
			</c:otherwise>
		</c:choose>
	</li>
	<li>
		<c:choose>
			<c:when test="${ id == null }">
				<a href="./mypage.do">회원 정보 수정</a>
			</c:when>
			<c:otherwise>
				<a href="./changeinfo.do">회원 정보 수정</a>
			</c:otherwise>
		</c:choose>
	</li>
	<li>
		<c:choose>
			<c:when test="${ id == null }">
				<a href="./mypage.do">비밀번호 변경</a>
			</c:when>
			<c:otherwise>
				<a href="./change-passwd.jsp">비밀번호 변경</a>
			</c:otherwise>
		</c:choose>
	</li>
	<li>
		<c:choose>
			<c:when test="${ id == null }">
				<a href="./mypage.do">회원 탈퇴</a>
			</c:when>
			<c:otherwise>
				<a href="./delete-member.jsp">회원 탈퇴</a>
			</c:otherwise>
		</c:choose>
	</li>

</ul>