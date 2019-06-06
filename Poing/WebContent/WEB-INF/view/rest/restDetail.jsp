
<%@page import="poing.rest.RestListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="poing.rest.RestListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<style>
	<%@include file="/css/style.css" %>
	<%@include file="/css/poing.slider.css" %>
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js?35740"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/slider.js"></script>

<c:if test="${ param.tab eq 'map' }">
	<script type="text/javascript" src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
	<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans">    
	<style>
		<%@includefile="/css/googleMap.css"%>
	</style>
</c:if>

<title>Poing 레스토랑 디테일 테스트</title>

</head>
<%
	RestListDTO dto = (RestListDTO) request.getAttribute("dto");
	double starpoint = dto.getRest_starpoint();
	int tenpoint = (int) Math.round(starpoint * 2);
	request.setAttribute("tenpoint", tenpoint);
	System.out.print(tenpoint);
%>
<body>

	<div id="wrap" class="">
		<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>

		<div id="container" class>
			<div id="banner_wrap">
				<div id="banner" class="restaurant_detail">
					<div class="i_wrap background">
						<i class="image"
							style="width: 100%; height: 100%; bakcgounrd-color: gray; background-image: url(#)"></i>
					</div>
					<div class="i_wrap blur background">
						<i class="image"
							style="width: 100%; height: 100%; bakcgounrd-color: black; background-image: url(#)"></i>
					</div>
					<div class="inner_wrap">
						<div class="inner">
							<div class="title">
								<span class="name"> ${dto.rest_name } </span> <span class="info">
									지역코드:${dto.rest_loc} ${dto.rest_food_type}</span>
								<div class="count border_radius soft">예약
									${dto.rest_reservation_cnt}건 / 리뷰 ${dto.rest_review_cnt}건 / 조회
									${dto.rest_view_cnt}건</div>
								<button class="empty " data-type="poing.restaurants.favorite"
									data-id="" tabindex="-1">
									찜하기<i class="icon heart large "></i>
								</button>
							</div>
							<ul class="info_list">
								<li class="item grade">
									<div class="name">별점</div>
									<div class="text">
										<div class="rest_starpoint">
											<c:forEach varStatus="status" var="i" begin="1" end="10" step="1">
												<c:if test="${i <= tenpoint }">
													<c:if test="${i%2 ne 0 }"><i class="icon star large odd active" data-id="" data-index="${status.index}" style=""></i></c:if>
													<c:if test="${i%2 eq 0 }">
														<i class="icon star large even active" data-id=""
															data-index="${status.index}" style=""></i>
													</c:if>
												</c:if>
												<c:if test="${i > tenpoint }"><c:if test="${i%2 ne 0 }"><i class="icon star large odd " data-id="" data-index="${status.index}" style=""></i></c:if>
													<c:if test="${i%2 eq 0 }">
														<i class="icon star large even " data-id=""
															data-index="${status.index}" style=""></i>
													</c:if>
												</c:if>
												<c:if test="${status.last }">
													<span style="display: inline-block; vertical-align: super;"
														data-id="" data-grade="78">${dto.rest_starpoint}</span>
												</c:if>
											</c:forEach>
										</div>
										<!-- <span style="display: inline-block; vertical-align: super;" data-id="" data-grade="78">${dto.rest_starpoint}</span> -->
									</div>

								</li>
								<li class="item">
									<div class="name">전화번호</div>
									<div class="text">${dto.rest_tel}</div>
								</li>
								<li class="item">
									<div class="name">주소</div>
									<div class="text">${dto.rest_loc}</div>
								</li>
								<li class="item">
									<div class="name">영업시간</div>
									<div class="text">${dto.rest_hour}</div>
								</li>
								<li class="item">
									<div class="name">휴무일</div>
									<div class="text">미구현</div>
								</li>

								<li class="item">
									<div class="name">예산 (2인 기준)</div>
									<div class="text">${dto.rest_budget_type}</div>
								</li>
								<li class="item description">
									<div class="name">한줄 설명</div>
									<div class="text">${dto.rest_line_exp}</div>
								</li>
							</ul>
							<div class="slider PoingSlider_wrap">
								<div id="detail_slider" class="PoingSlider">
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="0"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398359e843ff78add.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="1"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398459e8440036021.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="2"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398459e84400876e4.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="3"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398459e844005c2b3.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="4"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398459e84400ba951.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="5"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398359e843ffd20a3.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="6"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398459e844000c1ae.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="7"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839401059e8441a292d0.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="8"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839401059e8441a65b44.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="9"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839401059e8441ab2f44.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="10"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839400959e844199807c.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice current" style="top: 0px; left: 0px;">
										<i class="image" data-index="11"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839405359e8444597c12.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="12"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839401059e8441af25cc.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="13"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839401159e8441b33d23.jpeg)"
											title="만 매장 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
										<i class="image" data-index="14"
											style="width: 319px; height: 213px; background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEx/15119203265a1e12c6cc27a.jpeg)"
											title="만 매장 이미지"></i>
									</div>
								</div>
								<span class="prev"><i class="icon small_slider prev"></i></span>
								<span class="next"><i class="icon small_slider next"></i></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div id="content_wrap">
				<div id="content" class="detail ${ param.tab }">
					<ul class="tab">
						<li class="item info">
							<a href="/Poing/rest/detail.do?rest_seq=${dto.rest_seq}&tab=info">정보</a>
						</li>
						<li class="item photo">
							<a href="/Poing/rest/detail.do?rest_seq=${dto.rest_seq}&tab=photo">포토</a>
						</li>
						<li class="item review">
							<a href="/Poing/rest/detail.do?rest_seq=${dto.rest_seq}&tab=review">리뷰(${dto.rest_review_cnt})</a>
						</li>
						<li class="item menu">
							<a href="/Poing/rest/detail.do?rest_seq=${dto.rest_seq}&tab=menu">메뉴</a>
						</li>
						<li class="item map">
							<a href="/Poing/rest/detail.do?rest_seq=${dto.rest_seq}&tab=map">지도</a>
						</li>
					</ul>
					<script type="text/javascript">
						$("#content > ul > li.item.${param.tab ne null ? param.tab : info}").addClass("selected");
					</script>
					<!-- product 부분 -->
					
					<c:choose>
						<c:when test="${ param.tab eq 'info' }" >
							<% System.out.println("info"); %>
							<jsp:include page="/WEB-INF/view/rest/rest_info.jsp"/>
						</c:when>
						
						<c:when test="${ param.tab eq 'photo' }">
							<% System.out.println("photo"); %>
							<jsp:include page="/WEB-INF/view/rest/rest_photo.jsp"/>
						</c:when>
						
						<c:when test="${ param.tab eq 'review' }">
						<% System.out.println("review"); %>
							<jsp:include page="/WEB-INF/view/rest/rest_review.jsp"/>
						</c:when> 
						
						<c:when test="${ param.tab eq 'menu' }">
						<% System.out.println("menu"); %>
							<jsp:include page="/WEB-INF/view/rest/rest_menu.jsp"/>
						</c:when>
						
						<c:when test="${ param.tab eq 'map' }">
						<% System.out.println("map"); %>
							<jsp:include page="/WEB-INF/view/rest/rest_map.jsp"/>
						</c:when>
						
						<c:otherwise>
						<% System.out.println("c:otherwise"); %>
							<jsp:include page="/WEB-INF/view/rest/rest_info.jsp"/>
						</c:otherwise>
					</c:choose>
					
				</div>
				
				<div id="sidebar_wrap" class="detail">
					<div id="reserve_button" class="sidebar empty">
						<button class="red_fill border_radius soft"
							data-type="poing.reservation.add" data-id="${ authUser.m_no }" tabindex="-1">즉시
							예약하기</button>
					</div>

					<script>
						$("#btnGoReview").on("click", function() {
							location.href = "/restaurant/detail/35740?review";
						});
					</script>
					<div id="custom_button" class="sidebar empty">
						<a href="https://www.poing.co.kr/product/detail/4928">티켓 구매하고
							5% 적립받기</a>
					</div>
					<div id="editor_recommend_restaurant" class="sidebar">
						<div class="title">에디터 추천 레스토랑</div>
						<ul class="list">
							<li class="item"><a class="i_wrap"
								href="/restaurant/detail/30000"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNjEw/147686135358071da9ab0d3.jpeg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/restaurant/detail/30000">스시쇼우키</a>
									</div>
									<div class="info">서울 &gt; 강남구 · 일식</div>
									<div class="grade">
										<i class="icon star small odd active" data-id=""
											data-index="0" style=""></i><i
											class="icon star small even active" data-id="" data-index="1"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="2" style=""></i><i
											class="icon star small even active" data-id="" data-index="3"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="4" style=""></i><i
											class="icon star small even active" data-id="" data-index="5"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="6" style=""></i><i
											class="icon star small even active" data-id="" data-index="7"
											style=""></i><i class="icon star small odd " data-id=""
											data-index="8" style=""></i><i class="icon star small even "
											data-id="" data-index="9" style=""></i><span data-id=""
											data-grade="74">3.7</span>
									</div>
									<button class="gray_red border_radius soft "
										data-type="poing.restaurants.favorite" data-id="30000"
										tabindex="-1">
										<i class="icon heart gray large "></i> <span>찜하기</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap"
								href="/restaurant/detail/27791"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/553f38aad20c7839180000cc.png)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/restaurant/detail/27791">스시 효 (앰배서더점)</a>
									</div>
									<div class="info">서울 &gt; 중구 · 일식</div>
									<div class="grade">
										<i class="icon star small odd active" data-id=""
											data-index="0" style=""></i><i
											class="icon star small even active" data-id="" data-index="1"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="2" style=""></i><i
											class="icon star small even active" data-id="" data-index="3"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="4" style=""></i><i
											class="icon star small even active" data-id="" data-index="5"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="6" style=""></i><i
											class="icon star small even active" data-id="" data-index="7"
											style=""></i><i class="icon star small odd " data-id=""
											data-index="8" style=""></i><i class="icon star small even "
											data-id="" data-index="9" style=""></i><span data-id=""
											data-grade="80">4.0</span>
									</div>
									<button class="gray_red border_radius soft "
										data-type="poing.restaurants.favorite" data-id="27791"
										tabindex="-1">
										<i class="icon heart gray large "></i> <span>찜하기</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap"
								href="/restaurant/detail/27062"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzA0/149119477158e1d39326b7f.jpeg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/restaurant/detail/27062">투뿔등심 (그랑서울점)</a>
									</div>
									<div class="info">종로 · 구이</div>
									<div class="grade">
										<i class="icon star small odd active" data-id=""
											data-index="0" style=""></i><i
											class="icon star small even active" data-id="" data-index="1"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="2" style=""></i><i
											class="icon star small even active" data-id="" data-index="3"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="4" style=""></i><i
											class="icon star small even active" data-id="" data-index="5"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="6" style=""></i><i
											class="icon star small even active" data-id="" data-index="7"
											style=""></i><i class="icon star small odd " data-id=""
											data-index="8" style=""></i><i class="icon star small even "
											data-id="" data-index="9" style=""></i><span data-id=""
											data-grade="77">3.9</span>
									</div>
									<button class="gray_red border_radius soft "
										data-type="poing.restaurants.favorite" data-id="27062"
										tabindex="-1">
										<i class="icon heart gray large "></i> <span>찜하기</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap"
								href="/restaurant/detail/12252"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzAz/149033425558d4b22fc0580.jpeg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/restaurant/detail/12252">무궁화 @ 롯데호텔서울</a>
									</div>
									<div class="info">명동 · 한식</div>
									<div class="grade">
										<i class="icon star small odd active" data-id=""
											data-index="0" style=""></i><i
											class="icon star small even active" data-id="" data-index="1"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="2" style=""></i><i
											class="icon star small even active" data-id="" data-index="3"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="4" style=""></i><i
											class="icon star small even active" data-id="" data-index="5"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="6" style=""></i><i
											class="icon star small even active" data-id="" data-index="7"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="8" style=""></i><i class="icon star small even "
											data-id="" data-index="9" style=""></i><span data-id=""
											data-grade="85">4.3</span>
									</div>
									<button class="gray_red border_radius soft "
										data-type="poing.restaurants.favorite" data-id="12252"
										tabindex="-1">
										<i class="icon heart gray large "></i> <span>찜하기</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap"
								href="/restaurant/detail/36756"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxOTA0/15550587605cb0504849bd0.png)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/restaurant/detail/36756">현스시</a>
									</div>
									<div class="info">서울 &gt; 용산구 · 일식</div>
									<div class="grade">
										<i class="icon star small odd active" data-id=""
											data-index="0" style=""></i><i
											class="icon star small even active" data-id="" data-index="1"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="2" style=""></i><i
											class="icon star small even active" data-id="" data-index="3"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="4" style=""></i><i
											class="icon star small even active" data-id="" data-index="5"
											style=""></i><i class="icon star small odd active" data-id=""
											data-index="6" style=""></i><i
											class="icon star small even active" data-id="" data-index="7"
											style=""></i><i class="icon star small odd " data-id=""
											data-index="8" style=""></i><i class="icon star small even "
											data-id="" data-index="9" style=""></i><span data-id=""
											data-grade="74">3.7</span>
									</div>
									<button class="gray_red border_radius soft "
										data-type="poing.restaurants.favorite" data-id="36756"
										tabindex="-1">
										<i class="icon heart gray large "></i> <span>찜하기</span>
									</button>
								</div></li>
						</ul>
					</div>

					<div id="editor_recommend_restaurant" class="sidebar">
						<div class="title">추천 리뷰어</div>
						<ul class="list">
							<li class="item"><a class="i_wrap" href="/timeline/616424">
									<i class="image border_radius circle"
									style="background-image: url(http://c4.poing.co.kr/thumbnail/555b11549f4d6049c2000270.jpg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/timeline/616424">Solha Park</a>
									</div>
									<div class="info">
										57 리뷰, <span data-type="poing.user.follow" data-id="616424">53</span>
										팔로워
									</div>
									<button class="gray_red_fill border_radius soft "
										data-type="poing.user.follow" data-id="616424" tabindex="-1">
										<i class="icon follow "></i> <span>팔로우</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap" href="/timeline/537740">
									<i class="image border_radius circle"
									style="background-image: url(http://c4.poing.co.kr/thumbnail/556aa9e6418c1a3c9d0007db.jpg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/timeline/537740">김규철</a>
									</div>
									<div class="info">
										35 리뷰, <span data-type="poing.user.follow" data-id="537740">14</span>
										팔로워
									</div>
									<button class="gray_red_fill border_radius soft "
										data-type="poing.user.follow" data-id="537740" tabindex="-1">
										<i class="icon follow "></i> <span>팔로우</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap" href="/timeline/573606">
									<i class="image border_radius circle"
									style="background-image: url(http://c4.poing.co.kr/thumbnail/546d8150d20c78798b00030c.jpg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/timeline/573606">Kaito Shin</a>
									</div>
									<div class="info">
										115 리뷰, <span data-type="poing.user.follow" data-id="573606">135</span>
										팔로워
									</div>
									<button class="gray_red_fill border_radius soft "
										data-type="poing.user.follow" data-id="573606" tabindex="-1">
										<i class="icon follow "></i> <span>팔로우</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap" href="/timeline/672862">
									<i class="image border_radius circle"
									style="background-image: url(http://c4.poing.co.kr/thumbnail/547dd4abd20c78319d00024f.jpg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/timeline/672862">이주영</a>
									</div>
									<div class="info">
										39 리뷰, <span data-type="poing.user.follow" data-id="672862">26</span>
										팔로워
									</div>
									<button class="gray_red_fill border_radius soft "
										data-type="poing.user.follow" data-id="672862" tabindex="-1">
										<i class="icon follow "></i> <span>팔로우</span>
									</button>
								</div></li>
							<li class="item"><a class="i_wrap" href="/timeline/336595">
									<i class="image border_radius circle"
									style="background-image: url(http://c4.poing.co.kr/thumbnail/5470aa93d20c7855230003fa.jpg)"></i>
							</a>
								<div class="detail">
									<div class="name">
										<a href="/timeline/336595">박소은</a>
									</div>
									<div class="info">
										120 리뷰, <span data-type="poing.user.follow" data-id="336595">62</span>
										팔로워
									</div>
									<button class="gray_red_fill border_radius soft "
										data-type="poing.user.follow" data-id="336595" tabindex="-1">
										<i class="icon follow "></i> <span>팔로우</span>
									</button>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/popup_wrap_rest.jsp"></jsp:include>

		<%-- <jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include> --%>
		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
	</div>
	
</body>
</html>