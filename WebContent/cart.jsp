<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
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
					<h2>카트</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="#">쇼핑</a>
						</li>
						<li class="breadcrumb-item active">카트</li>
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
									<th>사진</th>
									<th>상품</th>
									<th>가격</th>
									<th>개수</th>
									<th>총 금액</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="thumbnail-img">
										<a href="#"> <img class="img-fluid" src="images/img-pro-01.jpg" alt="" />
										</a>
									</td>
									<td class="name-pr">
										<a href="#"> Lorem ipsum dolor sit amet </a>
									</td>
									<td class="price-pr">
										<p>$ 80.0</p>
									</td>
									<td class="quantity-box">
										<input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text">
									</td>
									<td class="total-pr">
										<p>$ 80.0</p>
										<!-- 총 금액 구현필요  -->
									</td>
									<td class="remove-pr">
										<a href="#"> <i class="fas fa-times"></i> <!-- 삭제 구현필요 -->
										</a>
									</td>
								</tr>
								<tr>
									<td class="thumbnail-img">
										<a href="#"> <img class="img-fluid" src="images/img-pro-02.jpg" alt="" />
										</a>
									</td>
									<td class="name-pr">
										<a href="#"> Lorem ipsum dolor sit amet </a>
									</td>
									<td class="price-pr">
										<p>$ 60.0</p>
									</td>
									<td class="quantity-box">
										<input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text">
									</td>
									<td class="total-pr">
										<p>$ 80.0</p>
										<!--총 금액 구현필요  -->
									</td>
									<td class="remove-pr">
										<a href="#"> <i class="fas fa-times"></i> <!-- 삭제 구현필요 -->
										</a>
									</td>
								</tr>
								<tr>
									<td class="thumbnail-img">
										<a href="#"> <img class="img-fluid" src="images/img-pro-03.jpg" alt="" />
										</a>
									</td>
									<td class="name-pr">
										<a href="#"> Lorem ipsum dolor sit amet </a>
									</td>
									<td class="price-pr">
										<p>$ 30.0</p>
									</td>
									<td class="quantity-box">
										<input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text">
									</td>
									<td class="total-pr">
										<p>$ 80.0</p>
										<!-- 총 금액 구현필요  -->
									</td>
									<td class="remove-pr">
										<a href="#"> <i class="fas fa-times"></i> <!-- 삭제 구현필요 -->
										</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="row my-5">
				<div class="col-lg-6 col-sm-6">
					<div class="coupon-box">
						<div class="input-group input-group-sm">
							<input class="form-control" placeholder="쿠폰 번호를 입력하세요 !" aria-label="Coupon code" type="text">
							<div class="input-group-append">
								<button class="btn btn-theme" type="button">쿠폰 적용하기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6">
					<div class="update-box">
						<input value="카트 저장하기" type="submit">
						<!-- 용도를 알수없음 카트 수정후 저장하는 용도로 우선 생각해둠. -->
					</div>
				</div>
			</div>

			<!--결제금액 변동을 위한 처리 필요 -->
			<div class="row my-5">
				<div class="col-lg-8 col-sm-12"></div>
				<div class="col-lg-4 col-sm-12">
					<div class="order-box">
						<h3>결제 금액 정보</h3>
						<div class="d-flex">
							<h4>주문 금액</h4>
							<div class="ml-auto font-weight-bold">$ 130</div>
						</div>
						<div class="d-flex">
							<h4>할인</h4>
							<div class="ml-auto font-weight-bold">- $ 40</div>
						</div>
						<hr class="my-1">
						<div class="d-flex">
							<h4>쿠폰 할인</h4>
							<div class="ml-auto font-weight-bold">- $ 10</div>
						</div>
						<div class="d-flex">
							<h4>부가세</h4>
							<div class="ml-auto font-weight-bold">$ 2</div>
						</div>
						<div class="d-flex">
							<h4>배송비</h4>
							<div class="ml-auto font-weight-bold">0</div>
						</div>
						<hr>
						<div class="d-flex gr-total">
							<h5>결제금액</h5>
							<div class="ml-auto h5">$ 78</div>
						</div>
						<hr>
					</div>
				</div>
				<div class="col-12 d-flex shopping-box">
					<a href="checkout.jsp" class="ml-auto btn hvr-hover">주문하기</a>
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