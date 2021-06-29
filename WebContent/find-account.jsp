<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>TheWayShop | 아이디 / 비밀번호 찾기</title>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
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
	// 이메일 정규식
	let email_exp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	function checkFormForFindId() {
		let email_for_id = document.getElementById("email_for_id");
		if (!email_exp.test(email_for_id.value)) {
			alert("이메일 형식을 다시 확인하세요.");
			email_for_id.focus();
			return false;
		}
	}

	function checkFormForReissuance() {
		let email_for_pw = document.getElementById("email_for_pw");
		if (!email_exp.test(email_for_pw.value)) {
			alert("이메일 형식을 다시 확인하세요.");
			email_for_pw.focus();
			return false;
		}
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

	<!-- container 시작 -->
	<div id="container">
		<!-- 본문 시작 -->
		<div class="all-title-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2>로그인</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item">
								Home
							</li>
							<li class="breadcrumb-item active">아이디 · 비밀번호 찾기</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="bodytext_area box_inner form_box">
			<div class="two_form">
				<form action="findid.do" method="POST" class="appForm" name="form" onsubmit="return checkFormForFindId()">
					<fieldset>
						<div class="find_title">아이디 찾기</div>
						<ul class="app_list">
							<li class="clear">
								<label for="name" class="tit_lbl tit_lbl_no_padding"> 이름 </label>
								<div class="app_content">
									<input type="text" class="w100p" id="name" name="name" placeholder="이름" required />
								</div>
							</li>

							<li class="clear">
								<label for="email" class="tit_lbl tit_lbl_no_padding"> 이메일 </label>
								<div class="app_content">
									<input type="text" class="w100p" id="email_for_name" name="email" placeholder="이메일" required />
								</div>
							</li>

						</ul>
						<p class="btn_line">
							<input type="submit" value="아이디 찾기" class="btn_basecolor" style="border: none; cursor: pointer; width: 150px;" />
						</p>
					</fieldset>
				</form>
				<form action="newpw.do" method="POST" class="appForm" name="form" onsubmit="return checkFormForReissuance()">
					<fieldset>
						<div class="find_title">임시 비밀번호 발급</div>
						<ul class="app_list">
							<li class="clear">
								<label for="id" class="tit_lbl tit_lbl_no_padding"> 아이디 </label>
								<div class="app_content">
									<input type="text" class="w100p" id="id" name="id" placeholder="아이디" required />
								</div>
							</li>

							<li class="clear">
								<label for="email" class="tit_lbl tit_lbl_no_padding"> 이메일 </label>
								<div class="app_content">
									<input type="text" class="w100p" id="email_for_pw" name="email" placeholder="이메일" required />
								</div>
							</li>

						</ul>
						<p class="btn_line">
							<input type="submit" value="임시 비밀번호 발급" class="btn_basecolor"
								style="border: none; cursor: pointer; width: 150px;"
							/>
						</p>
					</fieldset>
				</form>
			</div>
		</div>
		<!-- 본문 끝 -->
	</div>

	<!-- container 끝 -->

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
