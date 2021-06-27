<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>TheWayShop | 회원 탈퇴</title>
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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function checkForm() {
		//const id = document.getElementById("id");
		const pw = document.getElementById("pw");
		//const checkPw = document.getElementById("checkPw");
		//const phone = document.getElementById("phone");
		//const agree = document.getElementById("agree");

		// 전화번호 정규식
		// const expTel = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/

		/* if (pw.value.length > 20) {
			alert("비밀번호는 20자 이하로 입력하세요.");
			pw.focus();
			return false;
		} */

		if (pw.value != checkPw.value) {
			alert("비밀번호와 비밀번호 확인의 값이 다릅니다.");
			pw.focus();
			return false;
		}

		/* if (!expTel.test(phone.value)) {
			alert('전화번호 형식을 확인하세요. - 없이 입력해주세요');
			phone.focus();
			return false;
		} */

		/* if (!agree.checked) {
			alert("개인정보활용동의에 체크해주세요.");
			return false;
		} */

	}
</script>
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
		<div class="all-title-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2>My Page</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item">
								<a href="#">Home</a>
							</li>
							<li class="breadcrumb-item active">회원 탈퇴</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 본문 시작 -->
		<div class="bodytext_area box_inner">
			<form action="delete.do" method="POST" class="appForm" name="form" onsubmit="return checkForm()">
				<fieldset>
					<ul class="app_list">
						<li class="clear">
							<label for="pw" class="tit_lbl" style="color: red;"> 주의사항 </label>
							<div class="app_content">
								<div class="w100p" style="height: 45px; line-height: 45px; color: red;">회원 탈퇴 시 고객님이 보유하신 모든 정보가 사라집니다.
									신중하게 생각하신 뒤 진행해주세요</div>
							</div>
						</li>
						<li class="clear">
							<label for="pw" class="tit_lbl"> 비밀번호 </label>
							<div class="app_content">
								<input type="password" class="w100p" id="pw" name="pw" placeholder="비밀번호를 입력하세요" />
							</div>
						</li>
						<li class="clear">
							<label for="checkPw" class="tit_lbl"> 비밀번호 확인 </label>
							<div class="app_content">
								<input type="password" class="w100p" id="checkPw" name="checkPw" placeholder="비밀번호 확인을 입력하세요" required />
							</div>
						</li>

					</ul>
					<p class="btn_line">
						<input type="submit" value="회원 탈퇴" class="btn_basecolor" style="border: none; cursor: pointer;" />
					</p>
				</fieldset>
			</form>
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
	<script src="js/bootsnav.js."></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>