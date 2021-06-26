<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<title>Summernote with Bootstrap 4</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

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
							<option>¥ JPY</option>
							<option>$ USD</option>
							<option>€ EUR</option>
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
						<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about.jsp">About
								Us</a></li>
						<li class="dropdown megamenu-fw"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<h6 class="title">Top</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">Jackets</a></li>
													<li><a href="shop.jsp">Shirts</a></li>
													<li><a href="shop.jsp">Sweaters & Cardigans</a></li>
													<li><a href="shop.jsp">T-shirts</a></li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">Bottom</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">Swimwear</a></li>
													<li><a href="shop.jsp">Skirts</a></li>
													<li><a href="shop.jsp">Jeans</a></li>
													<li><a href="shop.jsp">Trousers</a></li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">Clothing</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">Top Wear</a></li>
													<li><a href="shop.jsp">Party wear</a></li>
													<li><a href="shop.jsp">Bottom Wear</a></li>
													<li><a href="shop.jsp">Indian Wear</a></li>
												</ul>
											</div>
										</div>
										<div class="col-menu col-md-3">
											<h6 class="title">Accessories</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="shop.jsp">Bags</a></li>
													<li><a href="shop.jsp">Sunglasses</a></li>
													<li><a href="shop.jsp">Fragrances</a></li>
													<li><a href="shop.jsp">Wallets</a></li>
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
								<li><a href="cart.jsp">Cart</a></li>
								<li><a href="checkout.jsp">Checkout</a></li>
								<li><a href="my-account.html">My Account</a></li>
								<li><a href="wishlist.html">Wishlist</a></li>
								<li><a href="shop-detail.html">Shop Detail</a></li>
							</ul></li>
						<li class="dropdown"><custom:isLogined /></li>


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
						<li class="search"><a href="#"><i class="fa fa-search"></i></a>
						</li>
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
					<h2>Contact Us</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Contact Us</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<!-- End All Title Box -->

	<!-- Start Contact Us  -->

	<!-- continaer 시작 -->


	<style type="text/css">
form {
	display: inline
}
</style>
	<div id="container">
		<div class="location_area customer">

			<div class="board_div">

				<div class="col-md-12">


					<div>
						<!-- 상품추가 -->

<<<<<<< HEAD

						<form class="form-horizontal" id="boardForm" name="boardForm"
							method="post" enctype="multipart/form-data" action ="./addProduct.do">
=======
						<form class="form-horizontal" id="boardForm"
							action=./addProduct.do method="post"
							enctype="multipart/form-data">
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd
							<div class="box_inner">

								<div class="form-group">
									<label for="inputEmail3" class="col-md-12 control-label">Title</label>
									<div class="col-md-12">
<<<<<<< HEAD
										<input type="text" class="form-control" id="name" name="name"
											value="${datas.name}" placeholder="상품명을 입력해주세요!" required
											data-error="Please enter product name">
									</div>
								</div>
								
=======
										<input type="text" class="form-control" name="name"
											 placeholder="상품명을 입력해주세요!" required
											data-error="Please enter product name">
									</div>
								</div>
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd

								<div class="form-group">
									<label for="inputEmail3" class="col-md-12 control-label">Price</label>
									<div class="col-md-12">
										<input type="text" class="form-control" name="price"
											 placeholder="상품가격을 입력해주세요!" required>

									</div>
								</div>

								<div class="form-group">

									<label for="inputEmail3" class="col-md-12 control-label">Stock:
										재고를 입력</label>

									<div class="col-md-12">
										<div id="row1" style="float: left;">

<<<<<<< HEAD
											<input type="text" class="form-control" id="stockXXL"
												name="xxlsize" value="${datas.xxlsize}" placeholder="XXL"
												required data-error="Please enter product stock">&nbsp
=======
											<input type="text" class="form-control" name="xxlsize"
												 placeholder="XXL" required
												data-error="Please enter product stock">&nbsp
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd
										</div>
									</div>

									<div class="col-md-12">
										<div id="row1" style="float: left;">

<<<<<<< HEAD
											<input type="text" class="form-control" id="stockXL"
												name="xlsize" value="${datas.xlsize}" placeholder="XL"
												required data-error="Please enter product stock">
										</div>
									</div>
									<div class="col-md-12">
										<div id="row1" style="float: left;">

											<input type="text" class="form-control" id="stockL"
												name="lsize" value="${datas.lsize}" placeholder="L" required
=======
											<input type="text" class="form-control" name="lsize"
												 placeholder="L" required
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd
												data-error="Please enter product stock">
										</div>
									</div>
									<div class="col-md-12">
										<div id="row1" style="float: left;">

<<<<<<< HEAD
											<input type="text" class="form-control" id="stockM"
												name="msize" value="${datas.msize}" placeholder="M" required
=======
											<input type="text" class="form-control" name="msize"
												 placeholder="M" required
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd
												data-error="Please enter product stock">
										</div>
									</div>
									<div class="col-md-12">
										<div id="row1" style="float: left;">

<<<<<<< HEAD
											<input type="text" class="form-control" id="stockS"
												name="ssize" value="${datas.ssize}" placeholder="s" required
=======
											<input type="text" class="form-control" name="ssize"
											 placeholder="S" required
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd
												data-error="Please enter product stock">
										</div>

									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-md-12 control-label">성별
										선택</label> <br />
									<div class="col-md-12">
										<input type="radio" id="gender" name="gender" value="남자">
										남자 <input type="radio" id="gender" name="gender" value="여자">여자<br />
										<br />
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-md-12 control-label">Cate</label>
									<div class="col-md-12">
										<input name="cate" id="outer" value="outer" type="radio">
										<label for="Radios1"> 아우터 </label>&nbsp;&nbsp;&nbsp; 
										
										<input name="cate" id="shirts" value="shirts" type="radio">
										<label for="Radios2"> 셔츠&블라우스 </label>&nbsp;&nbsp;&nbsp;
										
										<input name="cate" id="jean" value="jean" type="radio">
										<label for="Radios3">&nbsp; 청바지 </label>&nbsp;&nbsp;&nbsp; 
										
										<input name="cate" id="slacks" value="slacks" type="radio">
										<label for="Radios4"> 슬렉스 </label>&nbsp;&nbsp;&nbsp;
										
										<input name="cate" id="converse" value="converse" type="radio">
										<label for="Radios1"> 컨버스 </label>&nbsp;&nbsp;&nbsp;
										
										<input name="cate" id="dressShoes" value="dressShoes" type="radio"> 
										<label for="Radios1"> 구두&로퍼 </label>&nbsp;&nbsp;&nbsp;
										
										<input name="cate" id="bag" value="bag" type="radio"> 
										<label for="Radios1"> 가방 </label>
									</div>
								</div>

								<div class="form-group"> s
									<label for="inputPassword3" class="col-md-12 control-label">contents</label>
									<div class="col-md-12">
										<textarea id="summernote" name="pcon"> </textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12">
										첨부파일: <input type="file" name="file"> 첨부파일: <input
											type="file" name="file">
									</div>
								</div>
							</div>

							<center>
								<button class="btn hvr-hover" type="submit">상품 추가</button>
							</center>
<<<<<<< HEAD
							</form>
=======

						</form>
>>>>>>> b694cd6b7a2f6d6e57548f5569a99dd0c9fb27cd
					</div>




					<%--  <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">첨부파일</label>
        <div class="col-sm-10">
          <div id="fine-uploader"></div>
          <!-- Fine Uploader -->
          <jsp:include page="/resources/fileUpload/all.fine-uploader/lee/division_script.jsp" flush="true" />
        </div>
      </div> --%>

				</div>
				</form>



			</div>

			<script>
				$('#summernote')
						.summernote(
								{
									placeholder : '상품설명을 입력해 주세요!',
									tabsize : 2,
									height : 120,
									toolbar : [
											[ 'style', [ 'style' ] ],
											[
													'font',
													[ 'bold', 'underline',
															'clear' ] ],
											[ 'color', [ 'color' ] ],
											[ 'para',
													[ 'ul', 'ol', 'paragraph' ] ],
											[ 'table', [ 'table' ] ],
											[
													'insert',
													[ 'link', 'picture',
															'video' ] ],
											[
													'view',
													[ 'fullscreen', 'codeview',
															'help' ] ] ]
								});
			</script>

		</div>
	</div>

	<!-- continaer 끝 -->
	<!-- End Cart -->




	</div>
	<!-- Start Instagram Feed  -->
	<div class="instagram-box">
		<div class="main-instagram owl-carousel owl-theme">
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-01.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-02.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-03.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-04.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-05.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-06.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-07.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-08.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-09.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="ins-inner-box">
					<img src="images/instagram-img-05.jpg" alt="" />
					<div class="hov-in">
						<a href="#"><i class="fab fa-instagram"></i></a>
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
								<li>
									<p>
										<i class="fas fa-envelope"></i>Email: <a
											href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer  -->

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
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>