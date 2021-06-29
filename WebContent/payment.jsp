<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop | 결제 페이지</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- fontawesome -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
table td, table th {
	text-align: center;
	padding: 3px;
}

table caption {
	caption-side: top;
	font-weight: bold;
	color: #000;
	text-align: center;
}

a:visited, a:link {
	color: #fff;
}

.margin-bottom15 {
	margin-bottom: 15px;
}
</style>


</head>

<body>

	<!-- Start Main Top -->
	<custom:main_top />

	<!-- Start Main Top -->
	<header class="main-header">
		<!-- Start Navigation -->
		<custom:navigationBar />
		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

	<!-- Start Top Search -->
	<div class="top-search">
		<div class="container">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-search"></i></span>
				<input type="text" class="form-control" placeholder="Search">
				<span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
			</div>
		</div>
	</div>
	<!-- End Top Search -->

	<!-- Start All Title Box -->
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>주문</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							쇼핑
						</li>
						<li class="breadcrumb-item active">결제</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-main table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>주문일자</th>
									<th>사진</th>
									<th>상품명</th>
									<th>사이즈</th>
									<th>가격</th>
									<th>개수</th>
									<th>총 금액</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="v" items="${ carts }">
									<tr>
										<td>
											<p>${ v.day }</p>
										</td>
										<td class="thumbnail-img">
											<c:forTokens var="fileName" items="${ v.files }" delims="," varStatus="st">
												<img src="./upload/${ fileName }" class="img-fluid" alt="Image">
											</c:forTokens>
										</td>
										<td class="name-pr">
											<p>${ v.name }</p>
										</td>
										<td class="size-pr">
											<p>${ v.psize }</p>
										</td>
										<td class="price-pr">
											<span>￦ </span><span id="price">${ v.price }</span>
										</td>
										<td class="quantity-box">
											<p>${ v.count }</p>
										</td>
										<td class="total-pr">
											<span>￦ </span><span id="totalPrice">${ v.price * v.count }</span>
											<!-- 총 금액 구현필요  -->
										</td>
										<td class="remove-pr">
											<a href="./delOrder.do?cid=${v.cid}&&id=${member.id}" style="color: #000"> <i class="fas fa-times"></i> <!-- 삭제 구현필요 -->
											</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>


			<c:if test="${ carts != null }">
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
						<h2 style="font-size: 16px; font-weight: bold">회원 등급 할인</h2>
						<div class="explainRank" style="margin-bottom: 15px;">
							<table border="1">
								<caption>[TheWayShop 회원 등급 제도]</caption>
								<tr>
									<th>1 등급</th>
									<th>2 등급</th>
									<th>3 등급</th>
									<th>4 등급</th>
									<th>5 등급</th>
									<th>6 등급</th>
									<th>7 등급</th>
									<th>8 등급</th>
									<th>9 등급</th>
									<th>10 등급</th>
								</tr>
								<tr>
									<td>100만원 이상</td>
									<td>80만원 이상</td>
									<td>70만원 이상</td>
									<td>60만원 이상</td>
									<td>50만원 이상</td>
									<td>40만원 이상</td>
									<td>30만원 이상</td>
									<td>20만원 이상</td>
									<td>10만원 이상</td>
									<td>기본 회원 등급</td>
								</tr>
								<tr>
									<td>20% 할인</td>
									<td>18% 할인</td>
									<td>17% 할인</td>
									<td>16% 할인</td>
									<td>15% 할인</td>
									<td>14% 할인</td>
									<td>13% 할인</td>
									<td>12% 할인</td>
									<td>11% 할인</td>
									<td>10% 할인</td>
								</tr>
							</table>
						</div>
						<div class="margin-bottom15">
							<span style="color: #d33b33; font-size: 20px; font-weight: bold;">회원님의 등급은 ${ member.rank }등급입니다</span>
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
									<c:out value="${ discounttotal} " />
									원
								</div>
							</div>
							<hr class="my-1">
							<div class="d-flex">
								<h4>배송비</h4>
								<div class="ml-auto font-weight-bold">
									<c:out value="${ delitotal } " />
									원
								</div>
							</div>
							<hr>
							<div class="d-flex gr-total">
								<h5>결제금액</h5>
								<div class="ml-auto h5">
									<span id="totalPrice"><c:out value="${ paytotal } " /></span> 원
								</div>
							</div>
							<hr>
						</div>
					</div>
					<div class="col-12 d-flex shopping-box" style="justify-content: flex-end;">
						<form action="payment.do" method="post">
							<input type="hidden" name="purchase" value="${ paytotal }" />
							<input type="submit" value="결제하기" class="ml-auto btn hvr-hover btn_basecolor" style="line-height: 45px" />
						</form>
					</div>
				</div>
			</c:if>
		</div>


	</div>


	<!-- End Cart -->

	<!-- Start Instagram Feed  -->
	<custom:instagram_feed />

	<!-- Start Footer -->
	<custom:footer />

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="js/inewsticker.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>