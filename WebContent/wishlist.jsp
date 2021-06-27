<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

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
					<h2>Wishlist</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="#">Shop</a>
						</li>
						<li class="breadcrumb-item active">Wishlist</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Wishlist  -->
	<div class="wishlist-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-main table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Images</th>
									<th>Product Name</th>
									<th>Unit Price</th>
									<th>Stock</th>
									<th>Add Item</th>
									<th>Remove</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="thumbnail-img">
										<a href="#"> <img class="img-fluid" src="images/img-pro-01.jpg" alt="" />
										</a>
									</td>
									<td class="name-pr">
										<a href="#"> Lorem ipsum dolor sit amet </a>
									</td>
									<td class="price-pr">
										<p>$ 80.0</p>
									</td>
									<td class="quantity-box">In Stock</td>
									<td class="add-pr">
										<a class="btn hvr-hover" href="#">Add to Cart</a>
									</td>
									<td class="remove-pr">
										<a href="#"> <i class="fas fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td class="thumbnail-img">
										<a href="#"> <img class="img-fluid" src="images/img-pro-02.jpg" alt="" />
										</a>
									</td>
									<td class="name-pr">
										<a href="#"> Lorem ipsum dolor sit amet </a>
									</td>
									<td class="price-pr">
										<p>$ 60.0</p>
									</td>
									<td class="quantity-box">In Stock</td>
									<td class="add-pr">
										<a class="btn hvr-hover" href="#">Add to Cart</a>
									</td>
									<td class="remove-pr">
										<a href="#"> <i class="fas fa-times"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td class="thumbnail-img">
										<a href="#"> <img class="img-fluid" src="images/img-pro-03.jpg" alt="" />
										</a>
									</td>
									<td class="name-pr">
										<a href="#"> Lorem ipsum dolor sit amet </a>
									</td>
									<td class="price-pr">
										<p>$ 30.0</p>
									</td>
									<td class="quantity-box">In Stock</td>
									<td class="add-pr">
										<a class="btn hvr-hover" href="#">Add to Cart</a>
									</td>
									<td class="remove-pr">
										<a href="#"> <i class="fas fa-times"></i>
										</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Wishlist -->

	<!-- Start Instagram Feed  -->
	<custom:instagram_feed />

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