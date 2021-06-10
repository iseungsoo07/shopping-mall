<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>TheWayShop | 마이페이지</title>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
	rel="stylesheet"
/>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
/>
<link rel="stylesheet" href="css/custom.css" />
<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png" />

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css" />
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css" />
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css" />
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ""; // 주소 변수
						var extraAddr = ""; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === "R") {
							// 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else {
							// 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === "R") {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ""
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ""
									&& data.apartment === "Y") {
								extraAddr += extraAddr !== "" ? ", "
										+ data.buildingName : data.buildingName;
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== "") {
								extraAddr = " (" + extraAddr + ")";
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;
						} else {
							document.getElementById("sample6_extraAddress").value = "";
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById("sample6_postcode").value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}

	function checkEmailAddr() {
		document.form.email2.value = document.form.selectEmail.value;
	}

	function checkForm() {
		const id = document.getElementById("id");
		const pw = document.getElementById("pw");
		const checkPw = document.getElementById("checkPw");
		const phone = document.getElementById("phone");
		const agree = document.getElementById("agree");

		// 전화번호 정규식
		const expTel = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;

		if (pw.value.length > 20) {
			alert("비밀번호는 20자 이하로 입력하세요.");
			pw.focus();
			return false;
		}

		if (pw.value != checkPw.value) {
			alert("비밀번호와 비밀번호 확인의 값이 다릅니다.");
			pw.focus();
			return false;
		}

		if (!expTel.test(phone.value)) {
			alert("전화번호 형식을 확인하세요. - 없이 입력해주세요");
			phone.focus();
			return false;
		}

		if (!agree.checked) {
			alert("개인정보활용동의에 체크해주세요.");
			return false;
		}
		
	}
</script>
</head>
<body>
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
							<c:if test="${ member != null }">
								<li class="member-name">${ member.name }님 환영합니다!</li>
								<li>
									<a href="./logout.do">로그아웃</a>
								</li>
								<li>
									<a href="./regist.jsp">회원가입</a>
								</li>
								<li>
									<a href="#">마이페이지</a>
								</li>
							</c:if>
							<c:if test="${ member == null }">
								<li>
									<a href="./login.jsp">로그인</a>
								</li>
								<li>
									<a href="./regist.jsp">회원가입</a>
								</li>
								<li>
									<a href="#">마이페이지</a>
								</li>
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
		<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
			<div class="container">
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
						aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation"
					>
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="home.jsp"><img src="images/logo.png" class="logo" alt="" /></a>
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
						<li class="dropdown megamenu-fw">
							<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
										<div class="col-menu col-md-3">
											<h6 class="title">Top</h6>
											<div class="content">
												<ul class="menu-col">
													<li>
														<a href="shop.jsp">Jackets</a>
													</li>
													<li>
														<a href="shop.jsp">Shirts</a>
													</li>
													<li>
														<a href="shop.jsp">Sweaters & Cardigans</a>
													</li>
													<li>
														<a href="shop.jsp">T-shirts</a>
													</li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">Bottom</h6>
											<div class="content">
												<ul class="menu-col">
													<li>
														<a href="shop.jsp">Swimwear</a>
													</li>
													<li>
														<a href="shop.jsp">Skirts</a>
													</li>
													<li>
														<a href="shop.jsp">Jeans</a>
													</li>
													<li>
														<a href="shop.jsp">Trousers</a>
													</li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">Clothing</h6>
											<div class="content">
												<ul class="menu-col">
													<li>
														<a href="shop.jsp">Top Wear</a>
													</li>
													<li>
														<a href="shop.jsp">Party wear</a>
													</li>
													<li>
														<a href="shop.jsp">Bottom Wear</a>
													</li>
													<li>
														<a href="shop.jsp">Indian Wear</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="col-menu col-md-3">
											<h6 class="title">Accessories</h6>
											<div class="content">
												<ul class="menu-col">
													<li>
														<a href="shop.jsp">Bags</a>
													</li>
													<li>
														<a href="shop.jsp">Sunglasses</a>
													</li>
													<li>
														<a href="shop.jsp">Fragrances</a>
													</li>
													<li>
														<a href="shop.jsp">Wallets</a>
													</li>
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
									</div>
									<!-- end row -->
								</li>
							</ul>
						</li>
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
						<li class="nav-item">
							<a class="nav-link" href="service.html">Our Service</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact-us.html">Contact Us</a>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->

				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="search">
							<a href="#"><i class="fa fa-search"></i></a>
						</li>
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
							<a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span
								class="float-right"
							><strong>Total</strong>: $180.00</span>
						</li>
					</ul>
				</li>
			</div>
			<!-- End Side Menu -->
		</nav>
		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

	<!-- container 시작 -->
	<div id="container">
		<!-- 본문 시작 -->
		<div class="location_area mypage">
			<div class="box_inner">
				<h2 class="tit_page">
					 TheWayShop 
				</h2>
				<p class="location">
					마이페이지
				</p>
			</div>
		</div>
		<div class="bodytext_area box_inner">
			<form action="changeinfo.do" method="POST" class="appForm" name="form" onsubmit="return checkForm()">
				<fieldset>
					<ul class="app_list">
						<li class="clear">
							<label for="id" class="tit_lbl_no_padding"> 아이디 </label>
							<div class="app_content">
								<!-- 로그인한 회원의 아이디 받아오기 -->
								<div style="line-height: 38px">${ member.id }</div>
							</div>
						</li>
						<li class="clear">
							<label for="name" class="tit_lbl_no_padding"> 이름 </label>
							<div class="app_content">
								<div style="line-height: 38px">${ member.name }</div>
							</div>
						</li>
						<li class="clear">
							<label for="phone" class="tit_lbl_no_padding"> 연락처 </label>
							<div class="app_content">
								<div style="line-height: 38px">${ member.phone }</div>
							</div>
						</li>
						<li class="clear">
							<label for="email1" class="tit_lbl_no_padding"> 이메일 </label>
							<div class="app_content email_area">
								<div style="line-height: 38px">${ member.email }</div>
							</div>
						</li>
						<li class="clear">
							<label for="addr" class="tit_lbl_no_padding"> 주소 </label>
							<div class="app_content">
								<div style="line-height: 38px">${ member.addr }</div>
							</div>
						</li>
						<!-- <li class="clear">
                            <span class="tit_lbl">성별</span>
							<div class="app_content radio_area">
								<input type="radio" class="css-radio" id="mmm_lbl" name="gender" /> <label for="mmm_lbl" value="남">남</label> <input type="radio" class="css-radio" id="www_lbl" name="gender" /> <label for="www_lbl" value="여">여</label>
							</div>
                        </li> -->
						<li class="clear">
							<label for="id" class="tit_lbl_no_padding"> 회원등급 </label>
							<div class="app_content">
								<!-- 로그인한 회원의 회원등급 받아오기 -->
								<div style="line-height: 38px">${ member.rank }등급</div>
							</div>
						</li>
						<li class="clear">
							<label for="id" class="tit_lbl_no_padding"> 포인트 </label>
							<div class="app_content">
								<!-- 로그인한 회원의 누적포인트 받아오기 -->
								<div style="line-height: 38px">${ member.point }점</div>
							</div>
						</li>
					</ul>
					<p class="btn_line">
						<input type="submit" value="수정" class="btn_basecolor" style="border: none; cursor: pointer" />
					</p>
				</fieldset>
			</form>
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
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
								incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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
										<i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br />Preston Street
										Wichita,<br /> KS 67213
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
			All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By : <a
				href="https://html.design/"
			>html design</a>
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
