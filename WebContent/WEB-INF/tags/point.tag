<%@tag import="model.Member"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>

<%
	Member member = (Member) session.getAttribute("member");
	int point = member.getPoint();
%>

<script>
	function useAllPoint() {
		document.getElementById("memberpoint").value = <%=point%>;
		document.getElementById("pointDiscount").innerHTML = <%=point%>;
	}
	
	function changePointDiscount() {
		const pointDiscount = document.getElementById("pointDiscount");
		pointDiscount.innerHTML = document.getElementById("memberpoint").value;
	}
</script>

<!--결제금액 변동을 위한 처리 필요 -->
<c:set var="ordertotal" value="0" />
<c:set var="discounttotal" value="0" />
<c:set var="delitotal" value="0" />
<c:set var="paytotal" value="0" />
<c:set var="point" value="0" />

<c:forEach var="v" items="${carts }">
	<c:set var="ordertotal" value="${ordertotal+v.total}" />
	<c:set var="discounttotal" value="${discounttotal+v.discount}" />
	<c:set var="delitotal" value="${delitotal+v.deli}" />
	<c:set var="paytotal" value="${paytotal+v.pay}" />
</c:forEach>
<div class="row my-5">
	<div class="col-lg-8 col-sm-12">
		<h2 style="font-size: 16px; font-weight: bold">배송지 정보</h2>
		<div class="margin-bottom15">받는 사람 : ${ member.name }</div>
		<div class="margin-bottom15">핸드폰 번호 : ${ member.phone }</div>
		<div class="margin-bottom15">배송지 : ${ member.addr }</div>
		<hr>
		<h2 style="font-size: 16px; font-weight: bold">할인 및 포인트</h2>
		<div class="margin-bottom15">
			보유 포인트 :
			<%=point%>원
		</div>
		<div style="display: flex">
			<div style="margin-right: 30px">
				사용 :
				<input type="text" value="0" id="memberpoint" style="text-align: right;"
					onKeyup="this.value=this.value.replace(/[^0-9]/g,'')" onchange="changePointDiscount()"
				/>
				원
			</div>
			<button onclick="useAllPoint()" class="btn_basecolor btn_bbs" style="border: none; cursor: pointer; height: 45px;">전액
				사용</button>
		</div>
	</div>
	<div class="col-lg-4 col-sm-12">
		<div class="order-box">
			<h3>결제 금액 정보</h3>
			<div class="d-flex">
				<h4>주문 금액</h4>

				<div class="ml-auto font-weight-bold">
					<c:out value="${ordertotal } " />
					원
				</div>
			</div>
			<div class="d-flex">
				<h4>회원 등급 할인</h4>
				<div class="ml-auto font-weight-bold">
					-
					<c:out value="${discounttotal} " />
					원
				</div>
			</div>
			<div class="d-flex">
				<h4>포인트 할인</h4>
				<div class="ml-auto font-weight-bold">
					- <span id="pointDiscount">0</span> 원
				</div>
			</div>
			<hr class="my-1">
			<div class="d-flex">
				<h4>배송비</h4>
				<div class="ml-auto font-weight-bold">
					<c:out value="${delitotal } " />
					원
				</div>
			</div>
			<hr>
			<div class="d-flex gr-total">
				<h5>결제금액</h5>
				<div class="ml-auto h5">
					<span id="totalPrice"><c:out value="${ paytotal } " /></span>
					원
				</div>
			</div>
			<hr>
		</div>
	</div>
	<div class="col-12 d-flex shopping-box" style="justify-content: flex-end;">
		<form action="payment.do" method="post">
			<input type="hidden" name="purchase" value="${ paytotal }"/>
			
			<input type="submit" value="결제하기" class="ml-auto btn hvr-hover btn_basecolor" style="line-height: 45px"/> 
		</form>
	</div>
</div>