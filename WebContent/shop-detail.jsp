<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>ThewayShop | ${ product.name }</title>
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
a:link, a:visited {
	color: #fff;
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
					<h2>Shop Detail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="#">Shop</a>
						</li>
						<li class="breadcrumb-item active">Shop Detail</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Detail  -->
	<div class="shop-detail-box-main">
		<div class="container">
			<!--  custom:productDetail  출력문제로 tag처리해둠-->
			<div class="row">
				<div class="col-xl-5 col-lg-5 col-md-6">
					<div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block w-100" src="images/아우터1.jpg" alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="images/아우터3.jpg" alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="images/티셔츠.jpg" alt="Third slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev"> <i
							class="fa fa-angle-left" aria-hidden="true"
						></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next"> <i
							class="fa fa-angle-right" aria-hidden="true"
						></i> <span class="sr-only">Next</span>
						</a>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-1" data-slide-to="0" class="active">
								<img class="d-block w-100 img-fluid" src="images/M아우터F.jpg" alt="" />
							</li>
							<li data-target="#carousel-example-1" data-slide-to="1">
								<img class="d-block w-100 img-fluid" src="images/M아우터B.jpg" alt="" />
							</li>
							<li data-target="#carousel-example-1" data-slide-to="2">
								<img class="d-block w-100 img-fluid" src="images/M아우터I.jpg" alt="" />
							</li>
						</ol>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">

					<div class="single-product-details">
						<h2>${ product.name }</h2>
						<!-- 상품명 -->
						<h5>
							<c:if test="${ member == null }">
								<h5>${ product.price }원</h5>
							</c:if>
							<c:if test="${ member != null }">
								<del>${ product.price }원</del>
								<span style="color: #d33b33">${ Math.round( product.price * member.calcDiscount() / 100) }원</span>
							</c:if>
						</h5>
						<p>
						<h4>제품 설명</h4>
						<!-- 상품설명 -->
						<p>${ product.pcon }</p>
						<div class="title-left">
							<h3>상품 배송</h3>
						</div>
						<div class="mb-4">
							<div class="custom-control custom-radio">
								<input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio">
								<label class="custom-control-label" for="shippingOption1">택배</label> <span class="float-right font-weight-bold">무료배송</span>
							</div>
							<div class="ml-4 mb-2 small">(영업일 기준 2~5일)</div>
							<div class="custom-control custom-radio">
								<input id="shippingOption2" name="shipping-option" class="custom-control-input" type="radio">
								<label class="custom-control-label" for="shippingOption2">당일 배송</label> <span
									class="float-right font-weight-bold"
								>2,500원</span>
							</div>
							<div class="ml-4 mb-2 small">(다음날 배송 도착 보장)</div>
							<div class="custom-control custom-radio">
								<input id="shippingOption3" name="shipping-option" class="custom-control-input" type="radio">
								<label class="custom-control-label" for="shippingOption3">당일 퀵 배송</label> <span
									class="float-right font-weight-bold"
								>5,000원</span>
							</div>
						</div>
						<ul>
							<li>
								<div class="form-group size-st">
									<label class="size-label">Size</label>
									<select id="basic" class="selectpicker show-tick form-control">
										<option value="0">Size</option>
										<option value="0">S (수량 : ${ product.ssize })</option>
										<option value="1">M (수량 : ${ product.msize })</option>
										<option value="1">L (수량 : ${ product.lsize })</option>
										<option value="1">XL (수량 : ${ product.xlsize })</option>
										<option value="1">XXL (수량 : ${ product.xxlsize })</option>

									</select>
								</div>
							</li>
							<li>
								<div class="form-group quantity-box">
									<label class="control-label">구매수량</label>
									<input class="form-control" value="1" min="0" max="20" type="number">
								</div>
							</li>
						</ul>

						<div class="price-box-bar">
							<div class="cart-and-bay-btn" style="text-align: right;">
								<a class="btn hvr-hover" data-fancybox-close="" href="checkout.jsp">바로구매 </a> <a class="btn hvr-hover"
									data-fancybox-close="" href="cart.jsp"
								>장바구니 </a>
							</div>
						</div>

						<div class="add-to-btn">
							<div class="add-comp">

								<custom:delProduct />
								<!-- 관리자 로그인만 보이게 -->

							</div>
						</div>
					</div>
				</div>
			</div>
			<br> <br>
			<hr>
			<br>


			<h2 style="text-align: center; font-size: 24px; font-weight: bold; margin-bottom: 20px;">${ product.name } 상품 후기</h2>

			<!-- 후기시작 -->
			<c:if test="${member != null}">
				<!-- 로그인했다면  -->
				<form method="post" action="writeReview.do">
					<custom:ratinginput />
					<input type="hidden" name="reviewedid" value="${reviewedid}">
					<textarea name="reviewcon" value="${reviewcon}" cols="114" rows="2" placeholder="후기를 입력해주세요" style="resize: none"></textarea>


					<p class="btn_line txt_right">
						<input type="submit" value="작성" class="btn_bbs" style="border: none;">
					</p>
				</form>
			</c:if>


			<c:forEach var="r" items="${ v.rlist }">
				<div class="reply_area">
					<div class="reply_area__first">
						<h4 class="reply_author">${ r.userid }</h4>
						<custom:ratingoutput />
						<div class="reply_time">${ r.day }</div>
					</div>
					<div class="reply_content">${ r.rcon }</div>
					<c:if test="${member.id eq 'admin'}">
						<!-- 만약 관리자라면, -->

						<p class="bbs_line txt_right">
							<!-- 댓글아이디와 상풍id전달 -->
							<a href="./delReply.do?reviewid=${r.reviewid}&&pid=${pid}">
								<button type="button" class="btn_bbs" style="border: none;">댓글삭제</button>
							</a>
						</p>
					</c:if>
				</div>
			</c:forEach>





			<div class="row my-5">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>Featured Products</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet lacus enim.</p>
					</div>
					<div class="featured-products-box owl-carousel owl-theme">
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="상품 삭제하기"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<div class="box-img-hover">
									<img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
									<div class="mask-icon">
										<ul>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a>
											</li>
											<li>
												<a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a>
											</li>
										</ul>
										<a class="cart" href="#">Add to Cart</a>
									</div>
								</div>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
							</div>
						</div>
					</div>
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