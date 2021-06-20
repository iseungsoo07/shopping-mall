<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="board"%>
<% response.setHeader("Cache-Control","no-store"); response.setHeader("Pragma","no-cache"); response.setDateHeader("Expires",0); if (request.getProtocol().equals("HTTP/1.1")) response.setHeader("Cache-Control", "no-cache"); %>


<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/custom.css">
<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">


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
							<c:if test="${ member != null }">
								<li class="member-name">${ member.name }님환영합니다!</li>
								<li><a href="./logout.do">로그아웃</a></li>
								<li><a href="./regist.jsp">회원가입</a></li>
								<li><a href="#">마이페이지</a></li>
							</c:if>
							<c:if test="${ member == null }">
								<li><a href="./login.jsp">로그인</a></li>
								<li><a href="./regist.jsp">회원가입</a></li>
								<li><a href="#">마이페이지</a></li>
							</c:if>
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
						src="images/logo.png" class="logo" alt="" /></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li class="nav-item active"><a class="nav-link"
							href="home.jsp">Home</a></li>
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
						<li class="nav-item"><a class="nav-link" href="service.html">Our
								Service</a></li>
						<li class="dropdown"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">게시판</a>
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


	<div id="container">
		<div class="all-title-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2>고객센터</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active">공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- 본문 시작 -->

		<div class="bodytext_area box_inner">
			<c:forEach var="v" items="${datas}">
				<ul class="bbsview_list">
					<center>
						<h2 class="noo-sh-title"=>${v.qna.qtitle}</h2>
					</center>
					<div class="small text-muted">
						작성일: <span class="mx-2">${v.qna.day}</span> 문의 분류 :<span
							class="mx-2">${v.qna.sort}</span> 댓글 수 : <span class="mx-2">${v.qna.qstatenum }</span>
					</div>
					<hr>

					<div class="editor_content">${v.qna.qcon}</div>

				</ul>
				<hr>
				<p class="btn_line txt_right">
					<a href="./showQ.do" class="btn_bbs">돌아가기</a>


					<% response.setHeader("Cache-Control","no-store"); response.setHeader("Pragma","no-cache"); response.setDateHeader("Expires",0); if (request.getProtocol().equals("HTTP/1.1")) response.setHeader("Cache-Control", "no-cache"); %>


					<c:choose>
						<c:when test="${member.id eq v.qna.id}">
							<!-- 만약 작성자라면, -->
							<a href="./delQnA.do?qid=${v.qna.qid}" class="btn_bbs">QnA삭제</a>
							<!--입력받은 공지 id를 따라 삭제-->
						</c:when>
						<c:when test="${member.id eq 'admin'}">
							<!-- 만약 관리자라면, -->
							<a href="./delQnA.do?qid=${v.qna.qid}" class="btn_bbs">QnA삭제</a>
							<!--입력받은 공지 id를 따라 삭제-->
						</c:when>
					</c:choose>

				</p>


				<c:forEach var="r" items="${v.rlist }">
					<ul class="bbsview_list">
						<div class="p-3 mb-2 bg-light text-dark">
							<li class="bbs_hit">작성일 : <span>${r.day}</span>
							</li>
							<li class="bbs_hit">관리자 : <span>${r.rcon} <c:if
										test="${member.id eq 'admin'}">
										<!-- 만약 관리자라면, -->

										<div>
											<a href="./delReply.do?rid=${r.rid}&&qid=${v.qna.qid}"
												color="blue"><button type="button"
													class="btn btn-secondary btn-sm">댓글삭제</button></a>
										</div>

										<!--입력받은 댓글 id를 따라 삭제-->
									</c:if></span>

							</li>
						</div>
					</ul>

				</c:forEach>





				<style>
input[type="submit"] {
	width: 50px;
	margin: 20px
}
</style>

				<table style="padding-top: 35px" align=center width=950 border=0
					cellpadding=2>

					<tr>
						<td bgcolor=white><c:if test="${member.id eq 'admin'}">
								<form method="POST" action="newReply.do">


									<input type="hidden" name="qid" value="${v.qna.qid}">
									<table class="table2">
										<tr>

											<td><textarea name="rcon" value="${v.reply.rcon}"
													name="rcon" cols=120 rows=8 placeholder="답변을 입력해 주세요"></textarea></td>
										</tr>
									</table>
									<input type="hidden" name="qid" value="${v.reply.rcon}">
									<center>
										<input type="submit" value="작성" class="btn_bbs">
									</center>
							</c:if>
							</form>
				</table>
			</c:forEach>
		</div>
		<!-- 본문 끝 -->
	</div>
	<!-- container 끝 -->
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
								<li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
								</li>
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
										3756 <br />Preston Street Wichita,<br /> KS 67213
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

	<a href="#" id="back-to-top" title="Back to top" style="display: none">&uarr;</a>

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