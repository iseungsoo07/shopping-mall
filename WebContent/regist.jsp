<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>TheWayShop | 회원가입</title>
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

<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"
></script>
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
		const idCheck = document.getElementById("idCheck");

		// 전화번호 정규식
		const expTel = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/

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
			alert('전화번호 형식을 확인하세요. - 없이 입력해주세요');
			phone.focus();
			return false;
		}

		if (!agree.checked) {
			alert("개인정보활용동의에 체크해주세요.");
			return false;
		}

		if (idCheck.value == "unchecked") {
			alert("아이디 중복체크를 진행하세요.");
			return false;
		}

	}

	function passwordCheckFunc() {
		let pw = $("#pw").val();
		let checkPw = $("#checkPw").val();

		if (pw == checkPw) {
			$("#checkPwMsg").html("");
		} else {
			$("#checkPwMsg").html("비밀번호와 비밀번호 확인의 값이 다릅니다.");
		}
	}

	function openIdDupCheck() {
		const idCheck = document.getElementById("idCheck");
		const id = $("#id").val();

		if (id == "") {
			alert('아이디를 입력해주세요');
		} else {
			window
					.open(
							"idCheck.jsp",
							"_blank",
							"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=500,height=300")
		}

	}

	function inputIdCheck() {
		const idCheck = document.getElementById("idCheck");
		idCheck.value = "unchecked";
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
		<div class="all-title-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2>회원가입</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item">
								Home
							</li>
							<li class="breadcrumb-item active">Sign Up</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- 본문 시작 -->
		<div class="bodytext_area box_inner">
			<form action="regist.do" method="POST" class="appForm" name="form" onsubmit="return checkForm()">
				<fieldset>
					<p class="info_pilsoo pilsoo_item">필수입력</p>
					<ul class="app_list">
						<li class="clear">
							<label for="id" class="tit_lbl pilsoo_item"> 아이디 </label>
							<div class="app_content flex">
								<input type="hidden" id="idCheck" name="idCheck" value="unchecked" />
								<input type="text" class="w70p" id="id" name="id" placeholder="아이디를 입력하세요" onkeydown="inputIdCheck()" required />
								<input type="button" value="중복체크" class="btn_basecolor checkDup" onclick="openIdDupCheck()"
									style="cursor: pointer"
								/>
							</div>
						</li>
						<li class="clear">
							<label for="pw" class="tit_lbl pilsoo_item"> 비밀번호 </label>
							<div class="app_content">
								<input type="password" class="w100p" id="pw" name="pw" placeholder="비밀번호를 입력하세요" required />
							</div>
						</li>
						<li class="clear">
							<label for="checkPw" class="tit_lbl pilsoo_item"> 비밀번호 확인 </label>
							<div class="app_content">
								<input type="password" class="w100p" id="checkPw" name="checkPw" placeholder="비밀번호 확인을 입력하세요"
									onkeyup="passwordCheckFunc()" required
								/>
								<div id="checkPwMsg" style="color: #d33b33"></div>
							</div>
						</li>
						<li class="clear">
							<label for="name" class="tit_lbl pilsoo_item"> 이름 </label>
							<div class="app_content">
								<input type="text" class="w100p" id="name" name="name" placeholder="이름을 입력하세요" required />
							</div>
						</li>
						<li class="clear">
							<label for="phone" class="tit_lbl pilsoo_item"> 연락처 </label>
							<div class="app_content">
								<input type="tel" class="w100p" id="phone" name="phone" placeholder="휴대폰 번호는 '-' 없이 숫자만 입력해주세요." required />
							</div>
						</li>
						<li class="clear">
							<label for="email1" class="tit_lbl email_label pilsoo_item"> 이메일 </label>
							<div class="app_content email_area">
								<input type="text" class="w160" id="email1" name="email1" title="이메일 주소" />
								<span class="ico_space">@</span>
								<input type="text" class="w160" name="email2" title="이메일 제공 업체 입력" />
								<div class="select_common">
									<select title="이메일 제공업체 목록" name="selectEmail" onchange="checkEmailAddr()">
										<option value="">직접입력</option>
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="nate.com">nate.com</option>
									</select>
								</div>
							</div>
						</li>
						<li class="clear">
							<label for="addr" class="tit_lbl pilsoo_item addr_label"> 주소 </label>
							<div class="app_content">
								<input type="text" id="sample6_postcode" class="zipcode" placeholder="우편번호" name="zipcode" required />
								<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn_basecolor find_zipcode" />
								<br />
								<input type="text" id="sample6_address" class="addr" name="addr" placeholder="주소" required />
								<br />
								<input type="text" id="sample6_detailAddress" class="detailAddr" name="detailAddr" placeholder="상세주소" required />
								<input type="text" id="sample6_extraAddress" class="referAddr" name="referAddr" placeholder="참고항목" />
							</div>
						</li>
						<li class="clear">
							<span class="tit_lbl agree_label pilsoo_item"> 개인정보 활용동의 </span>
							<div class="app_content" style="padding-top: 10px">
								<input type="checkbox" class="css-checkbox" id="agree" name="agree" />
								<label for="agree">동의함</label>

								<custom:agree />
							</div>
						</li>

					</ul>
					<p class="btn_line">
						<input type="submit" value="등록" class="btn_basecolor" style="border: none; cursor: pointer;" />
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