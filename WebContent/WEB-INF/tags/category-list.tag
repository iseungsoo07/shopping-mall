<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${ sort == null }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do" class="active">전체 보기 </a> <a class="list-group-item list-group-item-action"
			href="#sub-men1" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse show" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${ sort == 'outer' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse show" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action active">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${ sort == 'shirts' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse show" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action active"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${ sort == 'jean' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse show" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action active">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>

<c:if test="${ sort == 'slacks' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse show" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action active"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${ sort == 'converse' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse show" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action active">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${ sort == 'dressShoes' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse show" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action active"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action">가방 </a>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${ sort == 'bag' }">
	<div class="list-group-collapse sub-men">
		<!-- 카테고리 상품 -->
		<a href="./showAllProduct.do">전체 보기 </a> <a class="list-group-item list-group-item-action" href="#sub-men1"
			data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1"
		>상의</a>
		<div class="collapse" id="sub-men1" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=outer" class="list-group-item list-group-item-action">아우터 </a> <a
					href="category.do?sort=shirts" class="list-group-item list-group-item-action"
				> 셔츠&블라우스 </a>
				<!-- 카테고리 상품끝 -->
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>하의</a>
		<div class="collapse" id="sub-men2" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=jean" class="list-group-item list-group-item-action">청바지 </a> <a
					href="category.do?sort=slacks" class="list-group-item list-group-item-action"
				>슬렉스 </a>

			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men2"
		>신발 </a>
		<div class="collapse" id="sub-men3" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=converse" class="list-group-item list-group-item-action">컨버스 </a> <a
					href="category.do?sort=dressShoes" class="list-group-item list-group-item-action"
				>구두&로퍼 </a>
			</div>
		</div>
	</div>
	<div class="list-group-collapse sub-men">
		<a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false"
			aria-controls="sub-men4"
		>악세서리 </a>
		<div class="collapse show" id="sub-men4" data-parent="#list-group-men">
			<div class="list-group">
				<a href="category.do?sort=bag" class="list-group-item list-group-item-action active">가방 </a>
			</div>
		</div>
	</div>
</c:if>
