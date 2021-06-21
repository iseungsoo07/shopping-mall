<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	Cookie[] c = request.getCookies();
	String cookieVal = "";
	if (c != null) {
		for (Cookie cookie : c) {
			if (cookie.getName().equals("saveId")) {
				cookieVal = cookie.getValue();
			}
		}
	}
	
	request.setAttribute("cookieVal", cookieVal);
%>

<c:choose>
	<c:when test="${ cookieVal != '' }">
		<form action="login.do" class="signin-form" method="post">
			<div class="form-group mb-3">
				<label class="label" for="name">ID</label>
				<input type="text" class="form-control" name="id" value="${ cookieVal }" required>
			</div>
			<div class="form-group mb-3">
				<label class="label" for="password">Password</label>
				<input type="password" class="form-control" name="pw" placeholder="Password" required>
			</div>
			<div class="form-group">
				<button type="submit" class="form-control btn btn-primary submit px-3">로그인</button>
			</div>

			<div class="form-group d-md-flex">
				<div class="w-50 text-left">
					<label class="checkbox-wrap checkbox-primary mb-0">Remember Me <input type="checkbox" name="saveId" checked> <span class="checkmark"></span>
					</label>
				</div>
				<div class="w-50 text-md-right">
					<a href="find-account.jsp">아이디 / 비밀번호 찾기</a>
				</div>
			</div>
		</form>
	</c:when>
	<c:otherwise>
		<form action="login.do" class="signin-form" method="post">
			<div class="form-group mb-3">
				<label class="label" for="name">ID</label>
				<input type="text" class="form-control" name="id" placeholder="ID" required>
			</div>
			<div class="form-group mb-3">
				<label class="label" for="password">Password</label>
				<input type="password" class="form-control" name="pw" placeholder="Password" required>
			</div>
			<div class="form-group">
				<button type="submit" class="form-control btn btn-primary submit px-3">로그인</button>
			</div>

			<div class="form-group d-md-flex">
				<div class="w-50 text-left">
					<label class="checkbox-wrap checkbox-primary mb-0">Remember Me <input type="checkbox" name="saveId"> <span class="checkmark"></span>
					</label>
				</div>
				<div class="w-50 text-md-right">
					<a href="find-account.jsp">아이디 / 비밀번호 찾기</a>
				</div>
			</div>
		</form>
	</c:otherwise>
</c:choose>