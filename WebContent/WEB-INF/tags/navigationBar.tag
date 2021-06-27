<%@ tag language="java" pageEncoding="UTF-8"%>


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
						<li class="nav-item active">
							<a class="nav-link" href="home.jsp">Home</a>
						</li>
						<li class="nav-item">
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
													<li><a href="category.do?sort=outer">아우터</a></li>
													<li><a href="category.do?sort=shirts">셔츠&블라우스</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">바지</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort=jean">청바지</a></li>
													<li><a href="category.do?sort=slacks">슬렉스</a></li>
													
												</ul>
											</div>
										</div>
										<!-- end col-3 -->
										<div class="col-menu col-md-3">
											<h6 class="title">신발</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort=converse">컨버스</a></li>
													<li><a href="category.do?sort=dressShoes">구두&로퍼</a></li>
													
												</ul>
											</div>
										</div>
										<div class="col-menu col-md-3">
											<h6 class="title">악세서리</h6>
											<div class="content">
												<ul class="menu-col">
													<li><a href="category.do?sort=bag">가방</a></li>
													
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
						<li class="total">
							<a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span class="float-right"><strong>Total</strong>:
								$180.00</span>
						</li>
					</ul>
				</li>
			</div>
			<!-- End Side Menu -->
		</nav>