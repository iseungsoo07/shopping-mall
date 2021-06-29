<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav
	class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
	<div class="container">
		<!-- Start Header Navigation -->
		<div class="navbar-header">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbar-menu" aria-controls="navbars-rs-food"
				aria-expanded="false" aria-label="Toggle navigation">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="home.jsp"><img
				src="images/logo.png" class="logo" alt=""></a>
		</div>
		<!-- End Header Navigation -->

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-menu">
			<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
				data-out="fadeOutUp">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="about.jsp">About
						Us</a></li>
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
				<li class="dropdown"><a href="#"
					class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
					<ul class="dropdown-menu">
						<li><a href="./showCart.do">Cart</a></li>
						<li><a href="checkout.jsp">Checkout</a></li>
						<li><a href="my-account.html">My Account</a></li>
						<li><a href="wishlist.html">Wishlist</a></li>
						<li><a href="shop-detail.html">Shop Detail</a></li>
					</ul></li>
				<li class="dropdown"><custom:isLogined /></li>
				<li class="dropdown"><a href="#"
					class="nav-link dropdown-toggle arrow" data-toggle="dropdown">고객센터</a>
					<ul class="dropdown-menu">
						<li><a href="./showN.do">공지사항</a></li>
						<li><a href="./showQ.do">QnA</a></li>

					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->

		<!-- Start Atribute Navigation -->
		<div class="attr-nav">
			<ul>
				<!--  <li class="search"><a href="#"><i class="fa fa-search"></i></a>
                                </li> -->
				<li class="side-menu"><a href="#"> <i
						class="fa fa-shopping-bag"></i> <c:if test="${member==null}">
							<span class="badge"></span>
						</c:if> <c:if test="${member!=null}">
							<c:set var="cartcnt" value="0" />
							<c:if test="${carts!=null}">
								<c:set var="paytotal" value="0" />
								<c:forEach items="${carts}" var="v">
									<c:set var="cartcnt" value="${cartcnt+1}" />
								</c:forEach>
							</c:if>
							<span class="badge">${cartcnt}</span>
						</c:if>

				</a></li>
			</ul>
		</div>
		<!-- End Atribute Navigation -->
	</div>
	<!-- Start Side Menu -->
	<div class="side">
		<a href="#" class="close-side"><i class="fa fa-times"></i></a>
		<c:choose>
			<c:when test="${member==null}">
				<p>로그인이 필요합니다.</p>
			</c:when>
			<c:when test="${member!=null}">
				<c:if test="${carts!=null}">
					<li class="cart-box">

						<ul class="cart-list">
							<c:set var="paytotal" value="0" />
							<c:forEach items="${carts}" var="v">
								<li><a href="#" class="photo"> <c:forTokens
											var="fileName" items="${v.files }" delims="," varStatus="st">
											<%-- <img src="./upload/${fileName }" class="img-fluid" alt="Image"> --%>
											<img src="./upload/${fileName }" class="cart-thumb"
												alt="Image" />
										</c:forTokens>
								</a>
									<h6>
										<a href="#">${v.name} </a>
									</h6>
									<p>
										${v.psize} - ${v.count}개 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
											class="price">${v.price} 원</span>
									</p></li>
								<c:set var="paytotal" value="${paytotal+v.pay}" />
								<c:set var="cartcnt" value="${cartcnt+1}" />
							</c:forEach>
							<li class="total"><a href="#"
								class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span
								class="float-right"><strong>Total</strong>:${paytotal}원</span></li>
						</ul>
					</li>
				</c:if>
				<c:if test="${carts==null }">
					<p>장바구니가 비어있습니다.</p>
				</c:if>

			</c:when>
		</c:choose>

	</div>
	<!-- End Side Menu -->
</nav>