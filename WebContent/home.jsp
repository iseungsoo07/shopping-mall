<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html>
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - 쇼핑을 즐겨라!</title>
<meta name="description" content="쇼핑을 즐길 수 있는 최고의 쇼핑몰 TheWayShop">

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
				<span class="input-group-addon close-search"><i
					class="fa fa-times"></i></span>
			</div>
		</div>
	</div>
	<!-- End Top Search -->

	<!-- Start Slider -->
	<div id="slides-shop" class="cover-slides">
		<ul class="slides-container">
			<li class="text-left"><img src="images/banner-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Thewayshop
								</strong>
							</h1>
							<p class="m-b-40">저희 쇼핑몰은 "좋은 상품은 누구에게나 언제든지, 자연스럽고 편안하게 다가갈
								수 있어야 한다" 라는 단순하지만 명확한 신념으로 만듭니다.</p>

						</div>
					</div>
				</div></li>
			<li class="text-center"><img src="images/banner-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Thewayshop
								</strong>
							</h1>
							<p class="m-b-40">The wayShop은 합리적인 가격과 믿을 수 있는 상품으로 온라인 쇼핑몰
								업계의 대표주자로 자리매김 하였으며,</p>

						</div>
					</div>
				</div></li>
			<li class="text-right"><img src="images/banner-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20">
								<strong>Welcome To <br> Thewayshop
								</strong>
							</h1>
							<p class="m-b-40">고객님들의 니즈에 부응하는 퀄리티 높은 자체제작 상품으로 '좋은 상품'의
								신념을 지켜나가겠습니다.</p>

						</div>
					</div>
				</div></li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right"
				aria-hidden="true"></i></a> <a href="#" class="prev"><i
				class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End Slider -->

	<!-- Start Categories  -->

	<!-- End Categories -->

	<!-- Start Products  -->
	<div class="products-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>인기 상품</h1>
						<p>the way shop 인기 상품</p>
					</div>
				</div>
			</div>

			<div class="row special-list">
				<c:forEach var="v" items="${ bestSell }">
					<div class="col-lg-3 col-md-6 special-grid best-seller">
						<div class="products-single fix">
							<div class="box-img-hover">
								<div class="type-lb">
									<p class="sale">Best</p>
								</div>
								<c:forTokens var="fileName" items="${v.files }" delims=","
									varStatus="st">
									<a href="showProductDetail.do?pid=${ v.pid }" style="${style}">
										<img src="./upload/${ fileName }" class="img-fluid"
										alt="Image">
									</a>
								</c:forTokens>
							</div>
							<div class="why-text">
								<h4>${ v.name }<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;♥${v.visit}</span>
								</h4>
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
				<!-- <div class="col-lg-3 col-md-6 special-grid best-seller">
               <div class="products-single fix">
                  <div class="box-img-hover">
                     <div class="type-lb">
                        <p class="sale">Sale</p>
                     </div>
                     <img src="images/아우터1.jpg" class="img-fluid" alt="Image">
                     <div class="mask-icon">
                        <ul>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="View"><i class="fas fa-eye"></i></a>
                           </li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Compare"><i
                                 class="fas fa-sync-alt"></i></a></li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Add to Wishlist"><i
                                 class="far fa-heart"></i></a></li>
                        </ul>
                        <a class="cart" href="#">장바구니</a>
                     </div>
                  </div>
                  <div class="why-text">
                     <h4>베이직 블레이저</h4>
                     <h5>20,000</h5>
                  </div>
               </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid top-featured">
               <div class="products-single fix">
                  <div class="box-img-hover">
                     <div class="type-lb">
                        <p class="new">New</p>
                     </div>
                     <img src="images/아우터3.jpg" class="img-fluid" alt="Image">
                     <div class="mask-icon">
                        <ul>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="View"><i class="fas fa-eye"></i></a>
                           </li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Compare"><i
                                 class="fas fa-sync-alt"></i></a></li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Add to Wishlist"><i
                                 class="far fa-heart"></i></a></li>
                        </ul>
                        <a class="cart" href="#">장바구니</a>
                     </div>
                  </div>
                  <div class="why-text">
                     <h4>여성 블레이저</h4>
                     <h5>50,000</h5>
                  </div>
               </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid top-featured">
               <div class="products-single fix">
                  <div class="box-img-hover">
                     <div class="type-lb">
                        <p class="sale">Sale</p>
                     </div>
                     <img src="images/맨투맨.jpg" class="img-fluid" alt="Image">
                     <div class="mask-icon">
                        <ul>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="View"><i class="fas fa-eye"></i></a>
                           </li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Compare"><i
                                 class="fas fa-sync-alt"></i></a></li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Add to Wishlist"><i
                                 class="far fa-heart"></i></a></li>
                        </ul>
                        <a class="cart" href="#">장바구니</a>
                     </div>
                  </div>
                  <div class="why-text">
                     <h4>맨투맨</h4>
                     <h5>50,000</h5>
                  </div>
               </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid best-seller">
               <div class="products-single fix">
                  <div class="box-img-hover">
                     <div class="type-lb">
                        <p class="sale">Sale</p>
                     </div>
                     <img src="images/티셔츠.jpg" class="img-fluid" alt="Image">
                     <div class="mask-icon">
                        <ul>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="View"><i class="fas fa-eye"></i></a>
                           </li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Compare"><i
                                 class="fas fa-sync-alt"></i></a></li>
                           <li><a href="#" data-toggle="tooltip"
                              data-placement="right" title="Add to Wishlist"><i
                                 class="far fa-heart"></i></a></li>
                        </ul>
                        <a class="cart" href="#">장바구니</a>
                     </div>
                  </div>
                  <div class="why-text">
                     <h4>티셔츠</h4>
                     <h5>50,000</h5>
                  </div>
               </div>
            </div> -->
			</div>
		</div>
	</div>
	<!-- End Products  -->

	<!-- Start Blog  -->
	<div class="latest-blog">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>다른 쇼핑몰 둘러보기</h1>
						<p>더 많은 쇼핑몰을 둘러보세요더 많은 쇼핑몰을 둘러보세요더 많은 쇼핑몰을 둘러보세요더 많은 쇼핑몰을
							둘러보세요</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4 col-xl-4">
					<div class="blog-box">
						<div class="blog-img">
							<img class="img-fluid" src="images/무신사.jpg" alt="" />
						</div>
						<div class="blog-content">
							<div class="title-blog">
								<h3>무신사 스토어</h3>
								<p>무신사 스토어 둘러보기</p>
							</div>
							<ul class="option-blog">

								<li><a href="https://magazine.musinsa.com/" target="_blank"
									data-toggle="tooltip" data-placement="right" title="Views"><i
										class="fas fa-eye"></i></a></li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-4">
					<div class="blog-box">
						<div class="blog-img">
							<img class="img-fluid" src="images/커버낫.jpg" alt="" />
						</div>
						<div class="blog-content">
							<div class="title-blog">
								<h3>커버낫 홈</h3>
								<p>커버낫 둘러보기</p>
							</div>
							<ul class="option-blog">

								<li><a href="https://covernat.net/" target="_blank"
									data-toggle="tooltip" data-placement="right" title="Views"><i
										class="fas fa-eye"></i></a></li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-xl-4">
					<div class="blog-box">
						<div class="blog-img">
							<img class="img-fluid" src="images/마크곤잘레스.jpg" alt="" />
						</div>
						<div class="blog-content">
							<div class="title-blog">
								<h3>마크 곤잘레스</h3>
								<p>마크곤잘레스 둘러보기</p>
							</div>
							<ul class="option-blog">

								<li><a href="https://markgonzales.co.kr/" target=""
									data-toggle="tooltip" data-placement="right" title="Views"><i
										class="fas fa-eye"></i></a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Blog  -->


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