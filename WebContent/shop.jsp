<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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
	<div class="main-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="text-slid-box">
						<div id="offer-box" class="carouselTicker">
							<ul class="offer-box">
								<li><i class="fab fa-opencart"></i> Off 10%! Shop Now Man</li>
								<li><i class="fab fa-opencart"></i> 50% - 80% off on
									Fashion</li>
								<li><i class="fab fa-opencart"></i> 20% off Entire Purchase
									Promo code: offT20</li>
								<li><i class="fab fa-opencart"></i> Off 50%! Shop Now</li>
								<li><i class="fab fa-opencart"></i> Off 10%! Shop Now Man</li>
								<li><i class="fab fa-opencart"></i> 50% - 80% off on
									Fashion</li>
								<li><i class="fab fa-opencart"></i> 20% off Entire Purchase
									Promo code: offT20</li>
								<li><i class="fab fa-opencart"></i> Off 50%! Shop Now</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="custom-select-box">
						<select id="basic" class="selectpicker show-tick form-control"
							data-placeholder="$ USD">
							<option>Â¥ JPY</option>
							<option>$ USD</option>
							<option>â ¬ EUR</option>
						</select>
					</div>
					<div class="right-phone-box">
						<p>
							Call US :- <a href="#"> +11 900 800 100</a>
						</p>
					</div>
					<div class="our-link">
						<ul>

							<li class="dropdown"><custom:logined /></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Main Top -->

	<!-- Start Main Top -->
	<header class="main-header">
		<!-- Start Navigation -->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
			<div class="container">
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbar-menu" aria-controls="navbars-rs-food"
						aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="home.jsp"><img
						src="images/logo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.jsp">About
								Us</a></li>
						<li class="dropdown active megamenu-fw"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<h6 class="title">상의</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">아우터</a></li>
													<li><a href="shirt.jsp">셔츠&블라우스</a></li>
													<li><a href="mantoman.jsp">맨투맨&니트</a></li>
													<li><a href="tshirt.jsp">반팔 티</a></li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">바지</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">청바지</a></li>
													<li><a href="shop.jsp">슬렉스</a></li>
													<li><a href="shop.jsp">숏 팬츠</a></li>
													<li><a href="shop.jsp">기타 바지</a></li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">신발</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">컨버스</a></li>
													<li><a href="shop.jsp">구두&로퍼</a></li>
													<li><a href="shop.jsp">힐</a></li>
													<li><a href="shop.jsp">슬리퍼&샌들</a></li>

												</ul>
											</div>
										</div>
										<div class="col-menu col-md-3">
											<h6 class="title">악세서리</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">가방</a></li>
													<li><a href="shop.jsp">반지&목걸이</a></li>
													<li><a href="shop.jsp">안경</a></li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
									</div> <!-- end row -->
								</li>
							</ul></li>
						<li class="dropdown"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
							<ul class="dropdown-menu">
								<li><a href="cart.jsp">카트</a></li>
								<li><a href="checkout.jsp">주문</a></li>
								<li><a href="my-account.jsp">결제</a></li>
								<li><a href="wishlist.jsp">위시리스트</a></li>
								<li><a href="shop-detail.jsp">shop detail</a></li>
							</ul></li>
						<li class="dropdown"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">고객센터</a>
							<ul class="dropdown-menu">
								<li><a href="./showN.do">공지사항</a></li>
								<li><a href="./showQ.do">QnA</a></li>

							</ul></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->

				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
						<li class="side-menu"><a href="#"> <i
								class="fa fa-shopping-bag"></i> <span class="badge">3</span>
						</a></li>
					</ul>
				</div>
				<!-- End Atribute Navigation -->
			</div>
			<!-- Start Side Menu -->
			<div class="side">
				<a href="#" class="close-side"><i class="fa fa-times"></i></a>
				<li class="cart-box">
					<ul class="cart-list">
						<li><a href="#" class="photo"><img
								src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Delica omtantur </a>
							</h6>
							<p>
								1x - <span class="price">$80.00</span>
							</p></li>
						<li><a href="#" class="photo"><img
								src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Omnes ocurreret</a>
							</h6>
							<p>
								1x - <span class="price">$60.00</span>
							</p></li>
						<li><a href="#" class="photo"><img
								src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Agam facilisis</a>
							</h6>
							<p>
								1x - <span class="price">$40.00</span>
							</p></li>
						<li class="total"><a href="#"
							class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span
							class="float-right"><strong>Total</strong>: $180.00</span></li>
					</ul>
				</li>
			</div>
			<!-- End Side Menu -->
		</nav>
		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

	<!-- Start Top Search -->
	<div class="top-search">
		<div class="container">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-search"></i></span>
				<input type="text" class="form-control" placeholder="Search">
				<span class="input-group-addon close-search"><i
					class="fa fa-times"></i></span>
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
						<li class="breadcrumb-item"><a href="#">Home</a></li>
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
						<div class="search-product">
							<form action="#">
								<input class="form-control" placeholder="Search here..."
									type="text">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
						<div class="filter-sidebar-left">
							<div class="title-left">
								<h3>Categories</h3>
							</div>
							<div
								class="list-group list-group-collapse list-group-sm list-group-tree"
								id="list-group-men" data-children=".sub-men">
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action"
										href="#sub-men1" data-toggle="collapse" aria-expanded="true"
										aria-controls="sub-men1">상의<small class="text-muted">(7)</small>
									</a>
									<div class="collapse show" id="sub-men1"
										data-parent="#list-group-men">
										<div class="list-group">
											<a href="#"
												class="list-group-item list-group-item-action active">아우터
												<small class="text-muted">(2)</small>
											</a> <a href="shirt.jsp"
												class="list-group-item list-group-item-action"> 셔츠&블라우스
												<small class="text-muted">(1)</small>
											</a> <a href="mantoman.jsp"
												class="list-group-item list-group-item-action">맨투맨&니트 <small
												class="text-muted">(1)</small>
											</a> <a href="tshirt.jsp"
												class="list-group-item list-group-item-action">반팔 티 <small
												class="text-muted">(2)</small>
											</a>

										</div>
									</div>
								</div>
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action"
										href="#sub-men2" data-toggle="collapse" aria-expanded="false"
										aria-controls="sub-men2">바지<small class="text-muted">(5)</small>
									</a>
									<div class="collapse" id="sub-men2"
										data-parent="#list-group-men">
										<div class="list-group">
											<a href="#" class="list-group-item list-group-item-action">청바지
												<small class="text-muted">(2)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">슬렉스
												<small class="text-muted">(1)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">숏
												팬츠 <small class="text-muted">(1)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">기타
												바지 <small class="text-muted">(1)</small>
											</a>
										</div>
									</div>
								</div>
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action"
										href="#sub-men3" data-toggle="collapse" aria-expanded="false"
										aria-controls="sub-men2">신발<small class="text-muted">(5)</small>
									</a>
									<div class="collapse" id="sub-men3"
										data-parent="#list-group-men">
										<div class="list-group">
											<a href="#" class="list-group-item list-group-item-action">컨버스
												<small class="text-muted">(2)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">구두&로퍼
												<small class="text-muted">(1)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">힐
												<small class="text-muted">(1)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">슬리퍼&샌들
												<small class="text-muted">(1)</small>
											</a>
										</div>
									</div>
								</div>
								<div class="list-group-collapse sub-men">
									<a class="list-group-item list-group-item-action"
										href="#sub-men4" data-toggle="collapse" aria-expanded="false"
										aria-controls="sub-men4">악세서리<small class="text-muted">(3)</small>
									</a>
									<div class="collapse" id="sub-men4"
										data-parent="#list-group-men">
										<div class="list-group">
											<a href="#" class="list-group-item list-group-item-action">가방
												<small class="text-muted">(2)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">반지&목걸이
												<small class="text-muted">(1)</small>
											</a> <a href="#" class="list-group-item list-group-item-action">안경
												<small class="text-muted">(1)</small>
											</a>

										</div>
									</div>
								</div>



							</div>
						</div>

						<div class="filter-price-left">
							<div class="title-left">
								<h3>Price</h3>
							</div>
							<form method="post" action="./priceFilter.do">
								<!-- 가격조정에 따른  상품 정렬-->
								<div class="price-box-slider">
									<div id="slider-range"></div>
									<p>
										<input type="text" name="amount" id="amount" 
											style="border: 0; color: #fbb714; font-weight: bold;">
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
						<div class="col-12 col-sm-8 text-center text-sm-left">
							<div class="toolbar-sorter-right">
								<span>Sort by </span> 
								<form action="./sort.do"><!-- 설정에따른 배열 -->
								<select id="basic"
									class="selectpicker show-tick form-control" name="sort"
									data-placeholder="$ USD">
									<option data-display="Select">Nothing</option>
									<option value="popularity">Popularity</option>
									<option value="high">High Price â High Price</option>
									<option value="low">Low Price â High Price</option>
									<option value="bestselling">Best Selling</option>
								</select>
								</form>
							</div>
							<p>Showing all 4 results</p>
						</div>
						<div class="col-12 col-sm-4 text-center text-sm-right">
							<ul class="nav nav-tabs ml-auto">
								<li><a class="nav-link active" href="#grid-view"
									data-toggle="tab"> <i class="fa fa-th"></i>
								</a></li>
								<li><a class="nav-link" href="#list-view" data-toggle="tab">
										<i class="fa fa-list-ul"></i>
								</a></li>
							</ul>
						</div>
					</div>

					<div class="row product-categorie-box">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade show active"
								id="grid-view">
								<div class="row">
									<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
										<div class="products-single fix">
											<div class="box-img-hover">
												<div class="type-lb">
													<p class="sale">Sale</p>
												</div>
												<img src="images/아우터1.jpg" class="img-fluid" alt="Image">
												<div class="mask-icon">
													<ul>
														<li><a href="shop-detail2.jsp" data-toggle="tooltip"
															data-placement="right" title="View"><i
																class="fas fa-eye"></i></a></li>
														<li><a href="#" data-toggle="tooltip"
															data-placement="right" title="Compare"><i
																class="fas fa-sync-alt"></i></a></li>
														<li><a href="#" data-toggle="tooltip"
															data-placement="right" title="Add to Wishlist"><i
																class="far fa-heart"></i></a></li>
													</ul>
													<a class="cart" href="#">Add to Cart</a>
												</div>
											</div>
											<div class="why-text">
												<a href="shop-detail2.jsp">베이직 블레이져</a>
												<h5>70,900원</h5>
											</div>
										</div>
									</div>
									<!-- 상품코드  -->
									<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
										<div class="products-single fix">
											<div class="box-img-hover">
												<div class="type-lb">
													<p class="new">New</p>
												</div>
												<img src="images/아우터3.jpg" class="img-fluid" alt="Image">
												<div class="mask-icon">
													<ul>
														<li><a href="shop-detail.jsp" data-toggle="tooltip"
															data-placement="right" title="View"><i
																class="fas fa-eye"></i></a></li>
														<li><a href="#" data-toggle="tooltip"
															data-placement="right" title="Compare"><i
																class="fas fa-sync-alt"></i></a></li>
														<li><a href="#" data-toggle="tooltip"
															data-placement="right" title="Add to Wishlist"><i
																class="far fa-heart"></i></a></li>
													</ul>
													<a class="cart" href="#">Add to Cart</a>
												</div>
											</div>
											<div class="why-text">
												<a href="shop-detail.jsp">우먼즈 플루이드 블레이저</a>
												<h5>76,900원</h5>
											</div>
										</div>
									</div>
									<!-- 상품 코드 마무리 -->




									<!-- list view 시작 -->
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="list-view">
								<div class="list-view-box">
									<div class="row">
										<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
											<div class="products-single fix">
												<div class="box-img-hover">
													<div class="type-lb">
														<p class="new">New</p>
													</div>
													<img src="images/아우터1.jpg" class="img-fluid" alt="Image">
													<div class="mask-icon">
														<ul>
															<li><a href="#" data-toggle="tooltip"
																data-placement="right" title="View"><i
																	class="fas fa-eye"></i></a></li>
															<li><a href="#" data-toggle="tooltip"
																data-placement="right" title="Compare"><i
																	class="fas fa-sync-alt"></i></a></li>
															<li><a href="#" data-toggle="tooltip"
																data-placement="right" title="Add to Wishlist"><i
																	class="far fa-heart"></i></a></li>
														</ul>

													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
											<div class="why-text full-width">
												<h4>베이직 블레이저</h4>
												<h5>
													<del>86,000원</del>
													70,900원
												</h5>
												<p>베이식한 디자인의 블레이저. 4%의 폴리우레탄이 포함된 양방향 스트레치 T/R원단을 사용하여
													신축성이 뛰어나며 덕분에 자유로운 활동성을 보장한다. 2버튼 여밈에 노치트 라펠, 플랩 포켓 등 테일러드
													재킷의 기본에 충실한 사양으로 구성하여 디자인했다.</p>
												<a class="btn hvr-hover" href="cart.jsp">장바구니 담기</a>
											</div>
										</div>
									</div>
								</div>
								<div class="list-view-box">
									<div class="row">
										<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
											<div class="products-single fix">
												<div class="box-img-hover">
													<div class="type-lb">
														<p class="sale">Sale</p>
													</div>
													<img src="images/아우터3.jpg" class="img-fluid" alt="Image">
													<div class="mask-icon">
														<ul>
															<li><a href="#" data-toggle="tooltip"
																data-placement="right" title="View"><i
																	class="fas fa-eye"></i></a></li>
															<li><a href="#" data-toggle="tooltip"
																data-placement="right" title="Compare"><i
																	class="fas fa-sync-alt"></i></a></li>
															<li><a href="#" data-toggle="tooltip"
																data-placement="right" title="Add to Wishlist"><i
																	class="far fa-heart"></i></a></li>
														</ul>

													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
											<div class="why-text full-width">
												<h4>우먼즈 플루이드 블레이저</h4>
												<h5>
													<del>86,900원</del>
													76,900원
												</h5>
												<p>베이식한 디자인의 블레이저. 4%의 폴리우레탄이 포함된 양방향 스트레치 T/R원단을 사용하여
													신축성이 뛰어나며 덕분에 자유로운 활동성을 보장한다. 2버튼 여밈에 노치트 라펠, 플랩 포켓 등 테일러드
													재킷의 기본에 충실한 사양으로 구성하여 디자인했다.</p>
												<a class="btn hvr-hover" href="cart.jsp">장바구니 담기</a>
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
	</div>
	</div>
	<!-- list view 끝 -->

	<!-- Start Instagram Feed  -->
	<div class="instagram-box">
		<div class="main-instagram owl-carousel owl-theme">
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-01.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
						<!--  인스타그램 없 -->
					</div>
				</div>
			</div>

			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-02.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-03.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-04.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-05.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-06.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-07.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-08.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-09.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-05.jpg" alt="" />
					<div class="hov-in">
						<a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- End Instagram Feed  -->


	<!-- Start Footer  -->
	<footer>
		<div class="footer-main">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-widget">
							<h4>About ThewayShop</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<ul>
								<li><a href="#"><i class="fab fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-google-plus"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-pinterest-p"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-whatsapp"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-link">
							<h4>Information</h4>
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Customer Service</a></li>
								<li><a href="#">Our Sitemap</a></li>
								<li><a href="#">Terms &amp; Conditions</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Delivery Information</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-link-contact">
							<h4>Contact Us</h4>
							<ul>
								<li>
									<p>
										<i class="fas fa-map-marker-alt"></i>Address: Michael I. Days
										3756 <br>Preston Street Wichita,<br> KS 67213
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-phone-square"></i>Phone: <a
											href="tel:+1-888705770">+1-888 705 770</a>
									</p>
								</li>


							
							</ul></li>
						
									




	<!-- Start copyright  -->
	<div class="footer-copyright">
		<p class="footer-company">
			All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By
			: <a href="https://html.design/">html design</a>
		</p>
	</div>
	<!-- End copyright  -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

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