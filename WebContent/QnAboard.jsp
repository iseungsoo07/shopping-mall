<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="board"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
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
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
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
	<!-- End Main Top -->

	<!-- continaer 시작 -->
	<div id="container">
		<div class="all-title-box">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h2>고객센터</h2>
						<ul class="breadcrumb">
							<li class="breadcrumb-item">
								Home
							</li>
							<li class="breadcrumb-item active">Q&A</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="bodytext_area box_inner">
			<form action="./searchQ.do" class="minisrch_form">
				<fieldset style="display: flex; justify-content: flex-end; align-items: center;">
					<legend>검색</legend>
					<div class="select_common">
						<select title="이메일 제공업체 목록" name="value" id="value">
							<option>선택</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
					</div>
					<input type="text" class="tbox" title="검색어를 입력하세요." name="s" placeholder="검색어를 입력하세요." />
					<input type="submit" class="btn_srch" value="검색" style="border: none" />
				</fieldset>
			</form>
			<table class="bbsListTbl" summary="번호, 제목, 조회수, 작성일 등을 제공하는 표">
				<caption class="hdd">Q&A</caption>

				<thead>
					<tr>

						<th scope="col">분류</th>
						<th scope="col">제목</th>

						<th scope="col">날자</th>
						<th scope="col">상태</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="v" items="${datas }">
						<tr>
							<td>${v.sort }</td>

							<td>
								<a href="./showQnAcon.do?qid=${v.qid}"> ${v.qtitle} </a>
							</td>

							<td class="tit_notice">${v.day }</td>
							<td>${v.qstate}</td>
						</tr>
						<tr>
					</c:forEach>


				</tbody>
			</table>
			<p class="btn_line txt_right">
				<board:writeQ />
				<!-- 로그인 한다면 qna작성 -->
			</p>
			
			
		</div>
	</div>

	<!-- continaer 끝 -->

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