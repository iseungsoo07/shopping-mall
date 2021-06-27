<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="board"%>
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

<title>TheWayShop | 고객센터</title>

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


	<div id="container">
		<div class="all-title-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2>고객센터</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item">
								<a href="#">Home</a>
							</li>
							<li class="breadcrumb-item active">공지사항</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- 본문 시작 -->

		<c:forEach var="v" items="${datas}">
			<div class="bodytext_area box_inner">
				<ul class="bbsview_list">
					<li class="bbs_title">${ v.ntitle }</li>
					<li class="bbs_hit">
						작성일 : <span>${ v.day }</span>
					</li>
					<li class="bbs_date">
						조회수 : <span>${ v.visitor }</span>
					</li>
					<li class="bbs_content">
						<div class="editor_content">${ v.ncon }</div>
					</li>
				</ul>
				<p class="btn_line txt_right">
					<a href="./showN.do" class="btn_bbs">목록</a>
					<c:if test="${member.id eq 'admin'}">
						<a href="./delnoti.do?nid=${v.nid }" class="btn_bbs">삭제</a>
					</c:if>
				</p>

			</div>
		</c:forEach>
	</div>


	<!-- 본문 끝 -->


	<!-- container 끝 -->
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