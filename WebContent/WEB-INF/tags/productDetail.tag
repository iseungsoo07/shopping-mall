<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:forEach var="p" items="${product}">
	<!-- 받은 설정 데이터에 따른 상품 상세내역 출력 shop.detail  -->
	<!-- 변수들 바꿔야함! -->
	<div class="row">
		<div class="col-xl-5 col-lg-5 col-md-6">
			<div id="carousel-example-1"
				class="single-product-slider carousel slide" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<!-- 이미지 사진 3개 -->
					<div class="carousel-item active">
						<img class="d-block w-100" src=${p.image1 } alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src=${p.image2 } alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src=${p.image3 } alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carousel-example-1"
					role="button" data-slide="prev"> <i class="fa fa-angle-left"
					aria-hidden="true"></i> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carousel-example-1"
					role="button" data-slide="next"> <i class="fa fa-angle-right"
					aria-hidden="true"></i> <span class="sr-only">Next</span>
				</a>
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-1" data-slide-to="0"
						class="active"><img class="d-block w-100 img-fluid"
						src="images/M아우터F.jpg" alt="" /></li>
					<li data-target="#carousel-example-1" data-slide-to="1"><img
						class="d-block w-100 img-fluid" src="images/M아우터B.jpg" alt="" /></li>
					<li data-target="#carousel-example-1" data-slide-to="2"><img
						class="d-block w-100 img-fluid" src="images/M아우터I.jpg" alt="" /></li>
				</ol>
			</div>
		</div>
		<div class="col-xl-7 col-lg-7 col-md-6">
			<div class="single-product-details">
				<h2>${p.name }</h2>
				<!-- 상품명 -->
				<h5>

					${p.price}
					<!-- 상품가격 -->
				</h5>
				<div>
					<span>상품코드:${p.pid }</span>
					<!-- 상품코드 -->
				</div>

				<div>
					<span>조회수:${p.visit }</span>
					<!-- 조회수 -->
				</div>
				<p>
				<h4>제품 기능:</h4>
				<!-- 상품설명 -->
				<p>${p.pcon}</p>
				<form action="buy.do" method="post"></form>
				<ul>
					<li>
						<div class="form-group size-st">
							<label class="size-label">Size</label> <select id="basic"
								name="size" class="selectpicker show-tick form-control">
								<option value="0">Size</option>
								<option value="S">S(수량:2)</option>
								<!-- 수량 -수정필요-->
								<option value="M">M(수량:2)</option>
								<option value="L">L(수량:2)</option>
								<option value="XL">XL(수량:2)</option>
								<option value="XXL">XXL(수량:2)</option>

							</select>
						</div>
					</li>

					<li>
						<div class="form-group quantity-box">
							<label class="control-label">구매수량</label> <input
								class="form-control" value="0" min="0" max="20" type="number">
						</div>
					</li>
				</ul>

				<div class="price-box-bar">
					<div class="cart-and-bay-btn">
						<button class="btn hvr-hover" type="submit">
							바로구매 </a> <a class="btn hvr-hover" data-fancybox-close=""
								href="./cart.do?pid=${v.pid }">장바구니 </a><!-- 카트, 즉시구매 -->
					</div>
				</div>
				</form>
				<div class="add-to-btn">
					<div class="add-comp">
						<custom:delProduct />
						<!-- 관리자 로그인만 보이게 -->
					</div>
					<div class="share-bar">
						<a class="btn hvr-hover" href="#"><i class="fab fa-facebook"
							aria-hidden="true"></i></a> <a class="btn hvr-hover" href="#"><i
							class="fab fa-google-plus" aria-hidden="true"></i></a> <a
							class="btn hvr-hover" href="#"><i class="fab fa-twitter"
							aria-hidden="true"></i></a> <a class="btn hvr-hover" href="#"><i
							class="fab fa-pinterest-p" aria-hidden="true"></i></a> <a
							class="btn hvr-hover" href="#"><i class="fab fa-whatsapp"
							aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>