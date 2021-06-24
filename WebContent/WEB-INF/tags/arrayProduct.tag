<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:forEach var="v" items="${datas}">
	<!-- 받은 데이터에 정렬에 따른 출력 -->
	<div class="type-lb">
		<p class="sale">Sale</p>
	</div>
	<img src="images/아우터1.jpg" class="img-fluid" alt="Image">
	<div class="mask-icon">
		<ul>
			<li><a href="shop-detail2.jsp" data-toggle="tooltip"
				data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
			<li><a href="#" data-toggle="tooltip" data-placement="right"
				title="Compare"><i class="fas fa-sync-alt"></i></a></li>
			<li><a href="#" data-toggle="tooltip" data-placement="right"
				title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
		</ul>
		<a class="cart" href="#">Add to Cart</a>
	</div>
</c:forEach>
	<tr>

		<td>${v.nid}</td>

		<td class="tit_notice"><a href="./showNcon.do?nid=${v.nid }">${v.ntitle}</a>
		</td>
		<td>${v.visitor}</td>
		<td>${v.day}</td>


	</tr>