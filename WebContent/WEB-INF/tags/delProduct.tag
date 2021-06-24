<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 작성자 여부 확인 상품 삭제,  -->
<c:if test="${member.id eq 'admin'}"><!-- 만약 작성자라면, -->
	<a class="btn hvr-hover" href="./delproduct.do?pid=${pid}" class="btn_bbs"><i class="fas fa-sync-alt"></i>상품삭제</a><!-- 상품아이디 전달 -->
	<!--입력받은 공지 id를 따라 삭제--> 
</c:if>
