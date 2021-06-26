<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/custom.css">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<title>TheWayShop | 게시판</title>

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
								<li>
									<i class="fab fa-opencart"></i> Off 10%! Shop Now Man
								</li>
								<li>
									<i class="fab fa-opencart"></i> 50% - 80% off on Fashion
								</li>
								<li>
									<i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT20
								</li>
								<li>
									<i class="fab fa-opencart"></i> Off 50%! Shop Now
								</li>
								<li>
									<i class="fab fa-opencart"></i> Off 10%! Shop Now Man
								</li>
								<li>
									<i class="fab fa-opencart"></i> 50% - 80% off on Fashion
								</li>
								<li>
									<i class="fab fa-opencart"></i> 20% off Entire Purchase Promo code: offT20
								</li>
								<li>
									<i class="fab fa-opencart"></i> Off 50%! Shop Now
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<!-- <div class="custom-select-box">
						<select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
							<option>¥ JPY</option>
							<option>$ USD</option>
							<option>€ EUR</option>
						</select>
					</div> -->
					<div class="right-phone-box">
						<p>
							Call US : <a href="#">010-1111-1111</a>
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
		<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
			<div class="container">
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
						aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation"
					>
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="home.jsp"><img src="images/logo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
						<li class="nav-item active">
							<a class="nav-link" href="home.jsp">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.jsp">About Us</a>
						</li>
						<li class="dropdown megamenu-fw"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
													<div class="col-menu col-md-3">
											<h6 class="title">상의</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort='outer'">아우터</a></li>
													<li><a href="category.do?sort='shirts'">셔츠&블라우스</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">바지</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort=jean">청바지</a></li>
													<li><a href="category.do?sort='slacks'">슬렉스</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">신발</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort='converse'">컨버스</a></li>
													<li><a href="category.do?sort='dressShoes'">구두&로퍼</a></li>
													
												</ul>
											</div>
										</div>
										<div class="col-menu col-md-3">
											<h6 class="title">악세서리</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort='bag'">가방</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
									</div> <!-- end row -->
								</li>
							</ul></li>
						<li class="dropdown">
							<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
							<ul class="dropdown-menu">
								<li>
									<a href="cart.jsp">Cart</a>
								</li>
								<li>
									<a href="checkout.jsp">Checkout</a>
								</li>
								<li>
									<a href="my-account.html">My Account</a>
								</li>
								<li>
									<a href="wishlist.html">Wishlist</a>
								</li>
								<li>
									<a href="shop-detail.html">Shop Detail</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<custom:isLogined />
						</li>
						<li class="dropdown">
							<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">고객센터</a>
							<ul class="dropdown-menu">
								<li>
									<a href="./showN.do">공지사항</a>
								</li>
								<li>
									<a href="./showQ.do">QnA</a>
								</li>

							</ul>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->

				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<!--  <li class="search"><a href="#"><i class="fa fa-search"></i></a>
                                </li> -->
						<li class="side-menu">
							<a href="#"> <i class="fa fa-shopping-bag"></i> <span class="badge">3</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- End Atribute Navigation -->
			</div>
			<!-- Start Side Menu -->
			<div class="side">
				<a href="#" class="close-side"><i class="fa fa-times"></i></a>
				<li class="cart-box">
					<ul class="cart-list">
						<li>
							<a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Delica omtantur </a>
							</h6>
							<p>
								1x - <span class="price">$80.00</span>
							</p>
						</li>
						<li>
							<a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Omnes ocurreret</a>
							</h6>
							<p>
								1x - <span class="price">$60.00</span>
							</p>
						</li>
						<li>
							<a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Agam facilisis</a>
							</h6>
							<p>
								1x - <span class="price">$40.00</span>
							</p>
						</li>
						<li class="total">
							<a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span class="float-right"><strong>Total</strong>:
								$180.00</span>
						</li>
					</ul>
				</li>
			</div>
			<!-- End Side Menu -->
		</nav>
		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

	<!-- continaer 시작 -->
	<div id="container">
		<div class="location_area customer">
			<div class="box_inner">
				<h2 class="tit_page">TheWayShop</h2>

				<form method="post" action="./newQnA.do">
					<input type="hidden" name="id" value="${id}">


					<div class="contact-form-right" padding="20px">
						<center>
							<h2>Q&A</h2>
							<p>불편한 사항이 있으시간요? Q&A 답변에는 시간이 걸릴수 있습니다.</p>
							<form id="contactForm">

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">

											<input type="text" class="form-control" value="${datas.qtitle }" id="name" name="qtitle"
												placeholder="제목을 입력해주세요." required data-error="Please enter your name"
											>

											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<div class="selaction">
												<p>어떤 부분이 불편하셨는지 선택해주세요.</p>
												<select name="value" id="value" value="${datas.sort }" class="selaction">
													<options disabled selected>골라주세요</options>
													<option value="이벤트">이벤트</option>
													<option value="상품문의">상품문의</option>

													<option value="결제문의">결제문의</option>

												</select>
											</div>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" id="message" name="qcon" value="${datas.qcon}" placeholder="Q&A 작성" rows="4"
												data-error="Write your message" required
											></textarea>
											<div class="help-block with-errors"></div>
										</div>
										<div class="submit-button text-center">
											<button class="btn hvr-hover" id="submit" type="submit">Q&A 작성</button>
											<div id="msgSubmit" class="h3 text-center hidden"></div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</form>
					</div>
				</form>
				</center>
			</div>


		</div>
	</div>


	</form>


	</form>
	</td>
	</tr>
	</table>



	</tr>
	</tbody>
	</table>

	</div>
	</div>


	<!-- continaer 끝 -->

	<!-- Start Footer  -->
	<footer>
		<div class="footer-main">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-widget">
							<h4>About ThewayShop</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
								commodo consequat.</p>
							<ul>
								<li>
									<a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
								</li>
								<li>
									<a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-link">
							<h4>Information</h4>
							<ul>
								<li>
									<a href="#">About Us</a>
								</li>
								<li>
									<a href="#">Customer Service</a>
								</li>
								<li>
									<a href="#">Our Sitemap</a>
								</li>
								<li>
									<a href="#">Terms &amp; Conditions</a>
								</li>
								<li>
									<a href="#">Privacy Policy</a>
								</li>
								<li>
									<a href="#">Delivery Information</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-link-contact">
							<h4>Contact Us</h4>
							<ul>
								<li>
									<p>
										<i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br>
										KS 67213
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a>
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
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
			All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By : <a href="https://html.design/">html
				design</a>
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
	<script src="js/bootsnav.js."></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>