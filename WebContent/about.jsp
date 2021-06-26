<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<li class="dropdown"><custom:logined /></li>

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
					<a class="navbar-brand" href="home.jsp"><img src="images/logo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
						<li class="nav-item">
							<a class="nav-link" href="home.jsp">Home</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="about.jsp">About Us</a>
						</li>
						<li class="dropdown megamenu-fw"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Product</a>
							<ul class="dropdown-menu megamenu-content" role="menu">
								<li>
									<div class="row">
													<div class="col-menu col-md-3">
											<h6 class="title">상의</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort='outer'">아우터</a></li>
													<li><a href="category.do?sort='shirts'">셔츠&블라우스</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">바지</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort=jean">청바지</a></li>
													<li><a href="category.do?sort='slacks'">슬렉스</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">신발</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort='converse'">컨버스</a></li>
													<li><a href="category.do?sort='dressShoes'">구두&로퍼</a></li>
													
												</ul>
											</div>
										</div>
										<div class="col-menu col-md-3">
											<h6 class="title">악세서리</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort='bag'">가방</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
									</div> <!-- end row -->
								</li>
							</ul></li>
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
						<li class="dropdown">
							<custom:isLogined />
						</li>
						<li class="dropdown">
							<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">고객센터</a>
							<ul class="dropdown-menu">
								<li>
									<a href="./showN.do">공지사항</a>
								</li>
								<li>
									<a href="./showQ.do">QnA</a>
								</li>

							</ul>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->


                        <!-- Start Atribute Navigation -->
                        <div class="attr-nav">
                            <ul>
                               <!--  <li class="search"><a href="#"><i class="fa fa-search"></i></a>
                                </li> -->
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

                                <li class="total"><a href="#" class="btn btn-default hvr-hover btn-cart">카트 보기</a> <span class="float-right"><strong>총 금액</strong>: $180.00</span></li>
                                <!-- 총 금액 구현 필요 -->
                            </ul>


                        </li>
                    </div>
                    <!-- End Side Menu -->
                </nav>
                <!-- End Navigation -->
            </header>
            <!-- End Main Top -->

            <!-- Start Top Search -->
            <div class="top-search">
                <div class="container">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-addon close-search"><i
					class="fa fa-times"></i></span>
                    </div>
                </div>
            </div>
            <!-- End Top Search -->

            <!-- Start All Title Box -->
            <div class="all-title-box">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>ABOUT US</h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">ABOUT US</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End All Title Box -->

            <!-- Start About Page  -->
            <div class="about-box-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <h2 class="noo-sh-title">
                                We are <span>ThewayShop</span>
                            </h2>
                            <br><br><br>
                            <p> 저희 쇼핑몰은 "좋은 상품은 누구에게나 언제든지, 자연스럽고 편안하게<br> 다가갈 수 있어야 한다" 라는 단순하지만 명확한 신념으로 만듭니다.<br> <br>The wayShop은 합리적인 가격과 믿을 수 있는 상품으로 온라인 쇼핑몰 업계의 대표주자로 자리매김 하였으며,<br><br> 고객님들의 니즈에 부응하는 퀄리티 높은 자체제작 상품으로 '좋은 상품'의 신념을 지켜나가겠습니다. <br><br>                                또한, The wayShop는 기업의 최대가치를 사회적 책임과 사회환원으로 보고 지속적인 가치창출에 모든 임직원이 하나가 되어 노력하고 있습니다."</p>

                        </div>
                        <div class="col-lg-6">
                            <div class="banner-frame">
                                <img class="img-thumbnail img-fluid" src="images/옷가게.jpg" alt="" />
                            </div>
                        </div>

                        <div class="row my-4">
                            <div class="col-12">
                                <h2 class="noo-sh-title">분위기최고조</h2>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/태현.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">김태현</h3>
                                            <span class="post">Kakaotalk ID: teahyun94<br>
                                        E-mail: ex45@naver.com</span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/기항.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">신기항</h3>
                                            <span class="post">Kakaotalk ID: sgh0114<br>
                                        E-mail: abc1775@naver.com</span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/승수.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">송승수</h3>
                                            <span class="post">Kakaotalk ID: kfcson<br>
                                        E-mail: iseungsoo07@gmail.com</span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/정민.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">서정민</h3>
                                            <span class="post">Kakaotalk ID: seo5795<br>
                                        E-mail: seo5795@naver.com</span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>

                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/지수.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">정지수</h3>
                                            <span class="post">Kakaotalk ID: jisoo3299<br>
                                        E-mail: jisoo3299@gmail.com </span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/요한.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">박요한</h3>
                                            <span class="post">Kakaotalk ID: pyh1235<br>
                                        E-mail: jmjpyh@naver.com </span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="hover-team">
                                    <div class="our-team">
                                        <img class="img-thumbnail img-fluid" src="images/민수.jpg" alt="" />
                                        <div class="team-content">
                                            <h3 class="title">박민수</h3>
                                            <span class="post">Kakaotalk ID: nrewq1122<br>
                                        E-mail: nrewq1122@gmail.com</span>
                                        </div>
                                        <ul class="social">
                                            <li>
                                                <a class="fas fa-comments"></a>
                                            </li>
                                            <li>
                                                <a class="far fa-envelope"></a>
                                            </li>
                                        </ul>
                                        <div class="icon">
                                            <i class="fa fa-plus" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="team-description">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate.</p>
                                    </div>
                                    <hr class="my-0">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End About Page -->


                <!-- Start Instagram Feed  -->
                <div class="instagram-box">
                    <div class="main-instagram owl-carousel owl-theme">
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-01.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                    <!--  인스타그램 없 -->
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-02.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-03.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-04.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-05.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-06.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-07.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-08.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-09.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="ins-inner-box">
                                <img src="images/instagram-img-05.jpg" alt="" />
                                <div class="hov-in">
                                    <a onclick="instargramClick()"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- End Instagram Feed  -->


                <!-- Start Footer  -->
                <footer>
                    <div class="footer-main">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                    <div class="footer-widget">
                                        <h4>About ThewayShop</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                                            commodo consequat.
                                        </p>
                                        <ul>
                                            <li><a href="#"><i class="fas fa-comments"
										aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fab fa-twitter"
										aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fab fa-linkedin"
										aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fab fa-google-plus"
										aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
                                            </li>
                                            <li><a href="#"><i class="fab fa-pinterest-p"
										aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fab fa-whatsapp"
										aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                    <div class="footer-link">
                                        <h4>Information</h4>
                                        <ul>
                                            <li><a href="#">About Us</a></li>
                                            <li><a href="#">Customer Service</a></li>
                                            <li><a href="#">Our Sitemap</a></li>
                                            <li><a href="#">Terms &amp; Conditions</a></li>
                                            <li><a href="#">Privacy Policy</a></li>
                                            <li><a href="#">Delivery Information</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12 col-sm-12">
                                    <div class="footer-link-contact">
                                        <h4>Contact Us</h4>
                                        <ul>
                                            <li>
                                                <p>
                                                    <i class="fas fa-map-marker-alt"></i>Address: Michael I. Days 3756 <br>Preston Street Wichita,<br> KS 67213
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
                        All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By : <a href="https://html.design/">html design</a>
                    </p>
                </div>
                <!-- End copyright  -->

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