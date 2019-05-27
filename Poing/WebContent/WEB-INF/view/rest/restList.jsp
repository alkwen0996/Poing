<%@page import="poing.rest.RestListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="poing.rest.RestListDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type='text/css'
	href='<%=request.getContextPath()%>/css/app.css?v=1557742885314'>
<style>
<%@include file="/css/style.css"%>

</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/slider.js"></script>
<meta charset="UTF-8">
<title>Poing 레스토랑 리스트 테스트</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="">
<style>
</style>
<script>
	$(document).ready(function() {
	});
</script>
</head>
<% 
	ArrayList<RestListDTO> list = (ArrayList<RestListDTO>)request.getAttribute("list");
	System.out.println("restList.jsp list : " + list);
	int size = list.size();
%>
<body>

<div id="wrap" class="">
	<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>
	
	<div id="container" class>
		<div id="content_wrap">
			<div id="content" class="search">
				<div class="result">
					총 <span class="highlight"></span><%=size%>개가 검색되었습니다.
				</div>

				<ul class="sort_order_spread">
					<li class="selected" data-order="">에디터 추천순</li>
					<li class="" data-order="average_grade">별점순</li>
					<li class="" data-order="reservation">예약순</li>
					<li class="" data-order="view">조회순</li>
				</ul>

				<div class="list">
					<c:forEach items="${list}" var="dto" varStatus="status">
						<c:if test="${status.index % 3 ne 0 }">
							<div class="element  medium ">
						</c:if>
						<c:if test="${status.index % 3 eq 0 }">
							<div class="element  medium first">
						</c:if>
						<a href="/Poing/restList/detail.do?rest_seq=${dto.rest_seq}"
							class="image"
							data-src="http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398359e843ff78add.jpeg"
							style="display: block; background-color: gray">
							<div class="shading"></div>

							<div class="top">
								예약 ${dto.rest_reservation_cnt}&nbsp; 리뷰
								${dto.rest_review_cnt}&nbsp; 조회수 ${dto.rest_view_cnt} <br>
								<button class="" data-type="poing.restaurants.favorite"
									data-id="35740" onclick='return false;'>
									<i class="icon favorite "></i>
								</button>
							</div>
							<div class="bottom">
								<p class="coupon">티켓</p>
								<span class="name">${dto.rest_name}</span> <span class="area">${dto.rest_loc_seq}</span>
							</div>
						</a>

						<div class="desc">
							<div class="place_info">
								<div class="rating">
									<div class="stars">


										<span class='star odd active'></span><span
											class='star even active'></span><span
											class='star odd active'></span><span
											class='star even active'></span><span
											class='star odd active'></span><span
											class='star even active'></span><span
											class='star odd active'></span><span
											class='star even active'></span><span class='star odd '></span><span
											class='star even '></span>
									</div>
									<div class="grade">${dto.rest_starpoint}점</div>
								</div>
								<div class="budget">${dto.rest_budget_type}</div>
								<div class="comment">${dto.rest_line_exp}</div>
								<ul class="detail">
									<li><a href="/restaurant/detail/35740?menu">메뉴있음</a></li>
									<li><a href="/restaurant/detail/35740?photo">사진 74장</a></li>
								</ul>
							</div>
						</div>

						<div class="btn">
							<button type="button" class="reserve"
								data-type="poing.reservation.add" data-id="35740">예약하기</button>
							<a href="/restaurant/detail/35740?review" class="review ">리뷰
								쓰기</a>
						</div>
				</div>
				</c:forEach>

			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>

</div>

</body>
</html>