<%@page import="poing.product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%	
ProductDTO pickRownum = (ProductDTO) request.getAttribute("pickRownum");
int rownum = pickRownum.getPickrownum();
String a = null;
if (rownum % 5 == 0) {
	rownum = rownum / 5;
} else if (rownum % 5 != 0) {
	rownum = rownum / 5 + 1;
}; 


%>
<div class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=restaurant&type=restaurant" class="">찜한 매장</a>
		<a href="/Poing/timeline.do?id=${ param.id }&tab=restaurant&type=coupon" class="selected">찜한 티켓</a>
	</div>
	
	
	<div class="list">
	<c:forEach items="${ticList}" var="ticList" varStatus="status">

		<div class="element  small_coupon first ">
			<a href="/Poing/product/detail.do?tic_seq=${ticList.tic_seq }" class="image" style="display: block; background-image: url(/Poing${ticList.tic_img});">
				<div class="shading"></div>

				<div class="bottom">
					<span class="name">${ticList.rest_name }</span> <span class="area">${ticList.rest_address }</span>
				</div>
				
			</a>

			<div class="desc">
				<div class="coupon">
					<div class="option">${ticList.tic_name }</div>
					
					<div class="price ">
						<div class="ratio long ">${ticList.tic_type }</div>
						<div class="discount">${ticList.tic_dc_price }</div>
						<div class="origin">${ticList.tic_original_price }</div>
					</div>
					
				</div>
			</div>

		</div>
	</c:forEach>

		
	</div>
	
	
	<div id="restaurant_pagination">
		<div class="page-list">
			<ul class="pagination" onselectstart="return false;">
				<li class="prevAll">&lt;&lt;</li>
				<li class="prev">&lt;</li>
				<li class="page active" data-page="1">1</li>
				<li class="page" data-page="<%=rownum %>"><%=rownum %></li><!-- 로우넘 줘서 마지막값 -->
				<li class="next">&gt;</li>
				<li class="nextAll">&gt;&gt;</li>
			</ul>
		</div>
	</div>
</div>