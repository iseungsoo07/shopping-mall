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
}
</style>
<script>
	function calcPrice() {
		const totalPrice = document.getElementById("totalPrice");
		const price = document.getElementById("price").innerHTML;
		const cnt = document.getElementById("cnt").value;
		totalPrice.innerHTML = price * cnt;
	}
</script>

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
							<a href="#">쇼핑</a>
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
									<th></th>
									<th>상품명</th>
									<th>가격</th>
									<th>개수</th>
									<th>총 금액</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="v" items="${ products }">
									<tr>
										<td class="thumbnail-img">
											<c:forTokens var="fileName" items="${ v.files }" delims="," varStatus="st">
												<img src="./upload/${ fileName }" class="img-fluid" alt="Image">
											</c:forTokens>
										</td>
										<td class="name-pr">
											<a href="#">${ v.name }</a>
										</td>
										<td class="price-pr">
											<span>￦ </span><span id="price">${ v.price }</span>
										</td>
										<td class="quantity-box">
											<input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text" id="cnt"
												onchange="calcPrice()"
											>
										</td>
										<td class="total-pr">
											<span>￦ </span><span id="totalPrice">${ v.price }</span>
											<!-- 총 금액 구현필요  -->
										</td>
										<td class="remove-pr">
											<a href="#"> <i class="fas fa-times"></i> <!-- 삭제 구현필요 -->
											</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<!--결제금액 변동을 위한 처리 필요 -->
			<div class="row my-5">
				<div class="col-lg-8 col-sm-12">
					<h2 style="font-size: 16px; font-weight: bold">배송지 정보</h2>
					<div>받는 사람 : ${ member.name }</div>
					<div>핸드폰 번호 : ${ member.phone }</div>
					<div>배송지 : ${ member.addr }</div>
					<hr>
					<h2 style="font-size: 16px; font-weight: bold">할인 및 포인트</h2>
					<div>보유 포인트 : ${ member.point }원</div>
					<div style="display: flex">
						<div style="margin-right: 30px">
							사용 : <span id="usePoint">0</span>원
						</div>
						<button class="btn_basecolor btn_bbs" style="cursor: pointer; height: 25px; line-height: 25px; font-size: 16px; border: none">전액 사용</button>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12">
					<div class="order-box">
						<h3>결제 금액 정보</h3>
						<div class="d-flex">
							<h4>주문 금액</h4>
							<div class="ml-auto font-weight-bold">￦ ${ total }</div>
						</div>
						<div class="d-flex">
							<h4>회원 등급 할인</h4>
							<div class="ml-auto font-weight-bold">- ￦ ${ total * member.calcDiscount() / 100 }</div>
						</div>
						<hr class="my-1">
						<div class="d-flex">
							<h4>포인트 할인</h4>
							<div class="ml-auto font-weight-bold">- ￦ 10</div>
						</div>
						<div class="d-flex">
							<h4>배송비</h4>
							<div class="ml-auto font-weight-bold">배송비</div>
						</div>
						<hr>
						<div class="d-flex gr-total">
							<h5>결제금액</h5>
							<div class="ml-auto h5">전체 금액</div>
						</div>
						<hr>
					</div>
				</div>
				<div class="col-12 d-flex shopping-box">
					<a href="#" class="ml-auto btn hvr-hover" style="color: white;">주문하기</a>
				</div>
			</div>

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