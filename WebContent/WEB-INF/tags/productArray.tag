<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:forEach var="v" items="${datas}">
	<!-- 받은 설정 데이터에 따른 상품정렬출력 shop  --><!-- 변수들 바꿔야함! -->
	<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
		<div class="products-single fix">
			<div class="box-img-hover">
				<div class="type-lb">
					<p class="sale">Sale</p>
				</div>
				<img src=${v.image } class="img-fluid" alt="Image">
				<div class="mask-icon">
					<ul>
						<li><a href="shop-detail2.jsp" data-toggle="tooltip"
							data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
					</ul>
					<a class="cart" href="./cart.do?pid=${v.pid }">Add to Cart</a><!--장바구니 담기, qid를 c에 전달해줌 -->
				</div>
			</div>
			<div class="why-text">
				<a href="./showdetail.do?pid=${v.pid }">${v.name }</a><!-- 해당상품의 detail을 보여줌 -->
				<h5>${v.price }원</h5>
			</div>
		</div>
	</div>
</c:forEach>
