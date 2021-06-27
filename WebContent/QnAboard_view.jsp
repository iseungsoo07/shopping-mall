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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"
>


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
							<li class="breadcrumb-item active">Q&A</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- 본문 시작 -->

		<div class="bodytext_area box_inner">
			<c:forEach var="v" items="${datas}">
				<ul class="bbsview_list">
					<li class="bbs_title">${ v.qna.qtitle }</li>
					<li class="bbs_hit">
						작성일 : <span>${ v.qna.day }</span>
					</li>
					<li class="bbs_half">
						문의 분류 : <span>${ v.qna.sort }</span>
					</li>
					<li class="bbs_half">
						댓글 수 : <span>${ v.qna.qstatenum }</span>
					</li>
					<li class="bbs_content">
						<div class="editor_content">${ v.qna.qcon }</div>
					</li>
				</ul>

				<c:if test="${member.id eq 'admin'}">
					<form method="post" action="newReply.do">
						<input type="hidden" name="qid" value="${v.qna.qid}">
						<textarea name="rcon" value="${ v.reply.rcon }" name="rcon" cols="114" rows="2" placeholder="답변을 입력해 주세요"
							style="resize: none"
						></textarea>
						<p class="btn_line txt_right">
							<input type="submit" value="작성" class="btn_bbs" style="border: none;">
						</p>
					</form>
				</c:if>
				<c:forEach var="r" items="${ v.rlist }">
					<div class="reply_area">
						<div class="reply_area__first">
							<h4 class="reply_author">관리자</h4>
							<div class="reply_time">${ r.day }</div>
						</div>
						<div class="reply_content">${ r.rcon }</div>
						<c:if test="${member.id eq 'admin'}">
							<!-- 만약 관리자라면, -->

							<p class="bbs_line txt_right">
								<a href="./delReply.do?rid=${r.rid}&&qid=${v.qna.qid}">
									<button type="button" class="btn_bbs" style="border: none;">댓글삭제</button>
								</a>
							</p>

							<!--입력받은 댓글 id를 따라 삭제-->
						</c:if>
					</div>
					<%-- <ul class="bbsview_list">
						<div class="p-3 mb-2 bg-light text-dark">
							<li class="bbs_hit">
								작성일 : <span>${r.day}</span>
							</li>
							<li class="bbs_hit">
								관리자 : <span>${r.rcon} <c:if test="${member.id eq 'admin'}">
										<!-- 만약 관리자라면, -->

										<div>
											<a href="./delReply.do?rid=${r.rid}&&qid=${v.qna.qid}" color="blue"><button type="button"
													class="btn btn-secondary btn-sm"
												>댓글삭제</button></a>
										</div>

										<!--입력받은 댓글 id를 따라 삭제-->
									</c:if></span>

							</li>
						</div>
					</ul> --%>

				</c:forEach>
				<p class="btn_line">
					<a href="./showQ.do" class="btn_bbs">목록</a>
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

			</c:forEach>
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