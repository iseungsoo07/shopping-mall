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

<title>TheWayShop | 고객센터</title>

</head>
<body>
	<!-- Start Main Top -->
	<custom:main_top />

	<!-- Start Main Top -->
	<header class="main-header">
		<!-- Start Navigation -->
		<custom:navigationBar/>
		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

	<!-- continaer 시작 -->
	<div id="container">
		<div class="location_area customer">
			<form method="post" action="./newnoti.do">
				<div class="box_inner">
					<h2 class="tit_page" align="center">공지사항</h2>

					<div class="contact-form-right" padding="20px">
						<center>

							<p>공지하고자하는 내용을 작성해주세요</p>
							<form id="contactForm">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" value="${datas.ntitle }" id="name" name="ntitle"
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
											<textarea class="form-control" id="message" name="ncon" value="${datas.ncon}" placeholder="공지사항 내용을 작성해주세요."
												rows="4" data-error="Write your message" required
											></textarea>
											<div class="help-block with-errors"></div>
										</div>
										<div class="submit-button text-center">
											<button class="btn hvr-hover" id="submit" type="submit">공지사항 작성</button>
											<div id="msgSubmit" class="h3 text-center hidden"></div>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							</form>
					</div>
					</center>
				</div>
			</form>




			</tr>
			</tbody>
			</table>

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