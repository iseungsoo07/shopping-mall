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
<title>ThewayShop | 상품</title>
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
					<h2>Shop</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="#">Home</a>
						</li>
						<li class="breadcrumb-item active">Shop</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Shop Page  -->

	<div class="shop-box-inner">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
					<div class="product-categori">
						<!-- <div class="search-product">
							<form action="#">
								<input class="form-control" placeholder="Search here..." type="text">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div> -->
						<div class="filter-sidebar-left">
							<div class="title-left">
								<h3>Categories</h3>
							</div>
							<!-- 카테고리 상품 -->
							<div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men"
								data-children=".sub-men"
							>
								<div class="list-group-collapse sub-men">
									<!-- 카테고리 상품 -->
									<a class="list-group-item list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="true"
										aria-controls="sub-men1"
									>상의<small class="text-muted">(7)</small>
									</a>
									<div class="collapse show" id="sub-men1" data-parent="#list-group-men">
										<div class="list-group">
											<a href="category.do?sort=outer" class="list-group-item list-group-item-action active">아우터 <small
												class="text-muted"
											>(2)</small>
											</a> <a href="category.do?sort=shirts" class="list-group-item list-group-item-action"> 셔츠&블라우스 <small
												class="text-muted"
											>(1)</small>
											</a>
											<!-- 카테고리 상품끝 -->
										</div>
									</div>
								</div>
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
										aria-controls="sub-men2"
									>바지<small class="text-muted">(5)</small>
									</a>
									<div class="collapse" id="sub-men2" data-parent="#list-group-men">
										<div class="list-group">
											<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 <small
												class="text-muted"
											>(2)</small>
											</a> <a href="category.do?sort=slacks" class="list-group-item list-group-item-action">슬렉스 <small
												class="text-muted"
											>(1)</small>
											</a>

										</div>
									</div>
								</div>
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
										aria-controls="sub-men2"
									>신발<small class="text-muted">(5)</small>
									</a>
									<div class="collapse" id="sub-men3" data-parent="#list-group-men">
										<div class="list-group">
											<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 <small
												class="text-muted"
											>(2)</small>
											</a> <a href="category.do?sort=dressShoes" class="list-group-item list-group-item-action">구두&로퍼 <small
												class="text-muted"
											>(1)</small>
											</a>
										</div>
									</div>
								</div>
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
										aria-controls="sub-men4"
									>악세서리<small class="text-muted">(3)</small>
									</a>
									<div class="collapse" id="sub-men4" data-parent="#list-group-men">
										<div class="list-group">
											<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 <small
												class="text-muted"
											>(2)</small>
											</a>
										</div>
									</div>
								</div>



							</div>
						</div>

						<div class="filter-price-left">
							<div class="title-left">
								<h3>Price</h3>
								<h6>단위 : 원화</h6>
							</div>
							<form method="post" action="./priceFilter.do">
								<!-- 가격조정에 따른  상품 정렬-->
								<div class="price-box-slider">
									<div id="slider-range"></div>
									<p>
										<input type="text" name="amount" id="amount" style="border: 0; color: #fbb714; font-weight: bold;">
										<button class="btn hvr-hover" type="submit">Filter</button>
									</p>
							</form>
						</div>
					</div>


				</div>
			</div>



			<div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
				<div class="right-product-box">
					<div class="product-item-filter row">
						<!-- 상품코드  -->
						<div class="col-12 col-sm-8 text-center text-sm-left">
							<div class="toolbar-sorter-right">
								<!-- <span>Sort by </span> -->
								<form action="./sortProduct.do">
									<!-- 설정에따른 배열 -->
									<select id="basic" class="selectpicker show-tick form-control" name="sortBy" data-placeholder="$ USD"
										onchange="this.form.submit()"
									>
										<%-- <custom:sort_option > --%>
										<option data-display="Select" selected>상품 정렬하기</option>
										<option value="popularity">인기순</option>
										<option value="highPrice">높은 가격순</option>
										<option value="lowPrice">낮은 가격순</option>
									</select>
								</form>
							</div>
							<p>Showing all 4 results</p>
						</div>
						<div class="col-12 col-sm-4 text-center text-sm-right">
							<ul class="nav nav-tabs ml-auto">
								<li>
									<a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i>
									</a>
								</li>
								<li>
									<a class="nav-link" href="#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>

					<div class="row product-categorie-box">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade show active" id="grid-view">

								<div class="row">
									<c:forEach var="v" items="${products}">
										<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
											<div class="products-single fix">

												<div class="box-img-hover">

													<!-- custom:productArray: 페이지 연결문제로 밑에 코드는 남겨둠, 일단 보류 -->

													<c:forTokens var="fileName" items="${v.files }" delims="," varStatus="st">
														<a href="showProductDetail.do?pid=${ v.pid }" style="${style}"> <img src="./upload/${fileName }" class="img-fluid"
															alt="Image"
														>
														</a>
													</c:forTokens>
												</div>

												<div class="why-text">
													<a href="showProductDetail.do?pid=${ v.pid }">${ v.name }</a>

													<h5>
														<c:if test="${ member == null }">
															<h5>${ v.price }원</h5>
														</c:if>
														<c:if test="${ member != null }">
															<del style="font-size: 15px">${ v.price }원</del>
															<span style="color: #d33b33">${ Math.round( v.price * member.calcDiscount() / 100) }원</span>
														</c:if>
													</h5>
												</div>
											</div>
										</div>
									</c:forEach>

									<!-- 상품 코드 마무리 -->

									<!-- list view 시작 -->
									<!-- list view 수정필요 -->
								</div>
							</div>

							<div role="tabpanel" class="tab-pane fade" id="list-view">
								<div class="list-view-box">
									<div class="row">
										<c:forEach var="v" items="${products}">
											<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
												<div class="products-single fix">
													<div class="box-img-hover">
														<c:forTokens var="fileName" items="${ v.files }" delims="," varStatus="st">
															<img src="./upload/${ fileName }" class="img-fluid" alt="Image">
														</c:forTokens>
													</div>
												</div>
											</div>

											<div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
												<div class="why-text full-width">
													<h4>${ v.name }</h4>
													<p style="height: 180px; font-size: 17px; overflow: hidden">${ v.pcon }</p>
													<h5>
														<c:if test="${ member == null }">
															<h5>${ v.price }원</h5>
														</c:if>
														<c:if test="${ member != null }">
															<del style="font-size: 15px">${ v.price }원</del>
															<span style="color: #d33b33">${ Math.round( v.price * member.calcDiscount() / 100) }원</span>
														</c:if>
													</h5>

													<a class="btn hvr-hover" href="showProductDetail.do?pid=${ v.pid }">바로 구매</a>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>


							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- list view 끝 -->

	<!-- Start Instagram Feed  -->
	<custom:instagram_feed />

	<!-- Start Footer  -->
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
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>