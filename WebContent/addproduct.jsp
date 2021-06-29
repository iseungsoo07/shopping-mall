<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- Basic -->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop | 상품 등록</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<title>Summernote with Bootstrap 4</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"
></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"
>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"
></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

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

<style>
.form-group {
	margin-bottom: 20px;
}

.size-form {
	float: right;
	width: 770px;
}

.size-input {
	margin-bottom: 15px;
}

.bold-text {
	font-weight: bold;
}
</style>

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
					<h2>관리자</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							Home</a>
						</li>
						<li class="breadcrumb-item active">상품 등록</li>
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



	<div id="container">
		<div class="bodytext_area box_inner">
			<form action="./addProduct.do" method="POST" id="boardForm" class="appForm" enctype="multipart/form-data">
				<ul class="app_list no_padding">
					<li class="clear">
						<label for="product-name_lbl" class="tit_lbl"> 상품명 </label>
						<div class="app_content">
							<input type="text" class="form-control" name="name" placeholder="상품명을 입력해주세요!" required
								data-error="Please enter product name"
							/>
						</div>
					</li>
					<li class="clear">
						<label for="product-price_lbl" class="tit_lbl"> 상품가격 </label>
						<div class="app_content">
							<input type="text" class="form-control" name="price" placeholder="상품가격을 입력해주세요!" required>
						</div>
					</li>
					<li class="clear">
						<label for="product-size_lbl" class="tit_lbl"> 사이즈별 재고 </label>
						<div class="app-content size-form">

							<input type="text" class="form-control size-input" name="xxlsize" placeholder="XXL" required
								data-error="Please enter product stock"
							>
							<input type="text" class="form-control size-input" name="xlsize" placeholder="XL" required
								data-error="Please enter product stock"
							>
							<input type="text" class="form-control size-input" name="lsize" placeholder="L" required
								data-error="Please enter product stock"
							>

							<input type="text" class="form-control size-input" name="msize" placeholder="M" required
								data-error="Please enter product stock"
							>

							<input type="text" class="form-control size-input" name="ssize" placeholder="S" required
								data-error="Please enter product stock"
							>

						</div>
					</li>
					<li class="clear">
						<span class="tit_lbl">상품 성별 선택</span>
						<div class="app_content radio_area" style="padding-top: 10px;">
							<input type="radio" class="css-radio" id="mmm_lbl" name="gender" value="남" />
							<label for="mmm_lbl">남</label>
							<input type="radio" class="css-radio" id="www_lbl" name="gender" value="여" />
							<label for="www_lbl">여</label>
						</div>
					</li>
					<li class="clear">
						<span class="tit_lbl">상품 카테고리</span>
						<div class="app_content radio_area">
							<div class="select_common">
								<select title="상품 카테고리 목록" name="cate">
									<option>-----</option>
									<option value="outer">아우터</option>
									<option value="shirts">셔츠 & 블라우스</option>
									<option value="jean">청바지</option>
									<option value="slacks">슬랙스</option>
									<option value="converse">컨버스</option>
									<option value="dressShoes">구두 & 로퍼</option>
									<option value="bag">가방</option>
								</select>
							</div>
						</div>
					</li>
					<li class="clear">
						<label for="product-content_lbl" class="tit_lbl"> 상품 설명 </label>
						<div class="app_content">
							<textarea id="summernote" name="pcon"> </textarea>
						</div>
					</li>
					<li class="clear">
						<label for="phone_lbl" class="tit_lbl"> 상품 사진 </label>
						<div class="app_content">
							<input type="file" name="file" multiple>
						</div>
					</li>
				</ul>
				<p class="btn_line">
					<input type="submit" class="btn_basecolor" value="상품 등록" style="border: none">
				</p>
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
												[ 'bold', 'underline', 'clear' ] ],
										[ 'color', [ 'color' ] ],
										[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
										[ 'table', [ 'table' ] ],
										[ 'insert',
												[ 'link', 'picture', 'video' ] ],
										[
												'view',
												[ 'fullscreen', 'codeview',
														'help' ] ] ]
							});
		</script>
	</div>

	<!-- continaer 끝 -->
	<!-- End Cart -->

	<!-- Start Instagram Feed  -->
	<custom:instagram_feed />

	<!-- Start Footer -->
	<custom:footer />

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