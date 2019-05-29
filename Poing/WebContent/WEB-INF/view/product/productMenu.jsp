<%@page import="poing.product.ProductDTO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel='stylesheet' type='text/css' href='<%= request.getContextPath() %>/css/poing.slider.css'>
<style>
		<%@include file="/css/style.css" %>
		<%@include file="/css/poing.slider.css" %>
	</style>

	

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/slider.js"></script>
<meta charset="UTF-8">
</head>
	<%
	ProductDTO dto = (ProductDTO) request.getAttribute("dto");
%>
<body>
	<!-- body wrap -->
	<div id="wrap" class="">
		<!-- header -->
		<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>

		<!-- container -->
		<div id="container" class="">
			<!-- 상단에 배너가 있는 레이아웃 -->
			<div id="banner_wrap">

				<div id="banner" class="product">
					<div class="i_wrap background">
						<i class="image"
							style="width: 100%; height: 100%; background-image: url('http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png')"></i>
					</div>
					<div class="i_wrap blur background">
						<i class="image"
							style="width: 100%; height: 100%; background-image: url('http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png')"></i>
					</div>
					<div class="inner_wrap">
						<div class="inner">
							<div class="header">
								<span class="name"> ${dto.r_name } </span> <span class="info">
									${dto.r_location }-${dto.r_type } </span>
								<button class="empty favorite " data-id="5432" tabindex="-1">
									찜하기<i class="icon heart large "></i>
								</button>
							</div>

							<div class="body">
								<div class="slider_wrap PoingSlider_wrap">
									<div id="slider" class="PoingSlider">
										<div class="i_wrap slice" style="top: 0px; left: -100%;">
											<i class="image" data-index="0"
												style="background-image: url(${dto.photo_img})"
												title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
										</div>
										<div class="i_wrap slice" style="top: 0px; left: -100%;">
											<i class="image" data-index="1"
												style="background-image: url(${dto.editer_img})"
												title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
										</div>
										
									</div>
								</div>
								<div class="price">
									<div class="i_wrap ">
										<span class="main">할인</span><br>
										<span class="sub"> OFF</span>
									</div>
									<span class="reduced">${dto.discount }</span><br> <span
										class="original">${dto.before_dc }</span>
								</div>
								<div id="left_time">
									남은시간 <span>7일 02:12:34</span>
								</div>
								<div class="dropbox">
									<div class="label">
										<span class="text">옵션을 선택해주세요.</span><span class="i_wrap"><i
											class="icon arrow small red down"></i></span>
									</div>
									<ul class="items" style="display: none;">
										<li class="" data-id="17684" data-min="2" data-limit="5">
											<span class="option"><span>${dto.p_option }</span></span><span class="price">${dto.discount }</span>
										</li>
										
									</ul>
								</div>
								<ul class="selected"></ul>
								<div class="summary">
									<span class="label">총 합계</span> <span class="value">일단보류...</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="content_wrap">

				<div id="content" class="detail menu">
					<ul class="tab">
						<li class="item "><a href="/Poing/product/detail.do?p_num=${param.p_num }">상세정보</a>
						</li>
						<li class="item "><a href="/Poing/product/detail/photo.do?p_num=${param.p_num }">포토</a>
						</li>
						<li class="item selected"><a href="/Poing/product/detail/menu.do?p_num=${param.p_num }">메뉴</a>
						</li>
						<li class="item "><a href="/Poing/product/detail/map.do?p_num=${param.p_num }">지도</a></li>
						<li class="item "><a href="/Poing/product/detail/qna.do?p_num=${param.p_num }">상품문의</a>
						</li>
					</ul>
					<div class="body first last">
						<div class="section">
							<div class="slider PoingSlider_wrap">
								<div id="menu_slider" class="PoingSlider">
									<button class="empty i_wrap current slice"
										data-type="poing.popup.photoReviewViewerPopup" data-index="0"
										data-image-selector="#menu_slider>.i_wrap>i" tabindex="-1"
										style="top: 0px; left: 0px;">
										<i class="image"
											style="background-image: url('${dto.photo_img}')"></i>
									</button>
								</div>
								<span class="prev i_wrap"><i class="icon slider prev"></i></span>
								<span class="next i_wrap"><i class="icon slider next"></i></span>
							</div>
							<div class="count">
								<span>1</span> / 1
							</div>
							<div class="nav_wrap">
								<div class="nav">
									<div class="slice">
										<div class="i_wrap selected" data-index="0">
											<i class="image"
												style="background-image: url('${dto.photo_img}')"></i>
										</div>
									</div>
								</div>
								<span class="prev">&lt;</span> <span class="next">&gt;</span>
							</div>
						</div>
					</div>
				</div>

				<div id="sidebar_wrap" class="detail">
					<button class="sidebar buy border_radius soft" data-id="5432"
						data-cart="true" tabindex="-1">바로 구매하기</button>
					<button class="sidebar addCart border_radius soft" tabindex="-1">장바구니
						담기</button>

					<script>
						$("#sidebar_wrap>.buy")
								.click(
										function() {
											if (poing.account.checkLoginState()) {
												var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
												var options = [];

												if (selected.length === 0) {
													$
															.popup(
																	"confirm",
																	{
																		'text' : '구매하실 옵션을 선택해주세요.',
																		'alert' : true
																	});
													return;
												}
												for (var i = 0; i < selected.length; ++i) {
													var op = selected.eq(i);
													options[i] = {
														id : op.data('id'),
														count : op
																.find(
																		".count_box>input")
																.val()
													};
												}

												$
														.ajax({
															'url' : "/pay/addCart",
															'method' : "POST",
															'dataType' : "JSON",
															'data' : {
																'options' : options
															},
															'success' : function(
																	response) {
																if (response.status) {
																	$
																			.popup(
																					"reserve_coupon",
																					{
																						'id' : response.data.cart_id,
																						'mode' : 'buy'
																					});
																} else {
																	if ($
																			.inArray(
																					response.error.code,
																					[ 1503 ]) > -1)
																		alert(response.error.message);
																	else
																		$
																				.popup(
																						"confirm",
																						{
																							'text' : response.error.message,
																							'alert' : true
																						});
																}
															}
														});
											}
										});
						$("#sidebar_wrap>.addCart")
								.click(
										function() {
											if (poing.account.checkLoginState()) {
												var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
												var options = [];

												if (selected.length === 0) {
													$
															.popup(
																	"confirm",
																	{
																		'text' : '장바구니에 담을 옵션을 선택해주세요.',
																		'alert' : true
																	});
													return;
												}

												for (var i = 0; i < selected.length; ++i) {
													var op = selected.eq(i);
													options[i] = {
														id : op.data('id'),
														count : op
																.find(
																		".count_box>input")
																.val()
													};
												}

												$
														.ajax({
															'url' : "/pay/addCart",
															'method' : "POST",
															'dataType' : "JSON",
															'data' : {
																'options' : options
															},
															'success' : function(
																	response) {
																if (response.status) {
																	ga(
																			'send',
																			'event',
																			'KPI',
																			'[KPI]장바구니담기성공');
																	$
																			.popup(
																					"confirm",
																					{
																						'text' : '장바구니에 상품을 담았습니다.',
																						'left_btn' : '쇼핑 계속하기',
																						'right_btn' : '카트 보기'
																					},
																					null,
																					function() {
																						location.href = "/pay/cart";
																					});
																} else {
																	if ($
																			.inArray(
																					response.error.code,
																					[ 1503 ]) > -1)
																		alert(response.error.message);
																	else
																		$
																				.popup(
																						"confirm",
																						{
																							'text' : response.error.message,
																							'alert' : true
																						});
																}
															}
														});
											}
										});
					</script>
					<div id="recommend_coupon" class="sidebar">
						<div class="title">이 달의 추천 티켓</div>
						<ul class="list">
							<li class="item"><a class="i_wrap"
								href="/product/detail/5536"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxOTA0/15541055995ca1c4ff784d1.png)"></i>
							</a>
								<div class="desc">
									<div class="name">더 팀버 하우스 @ 파크하얏트서울</div>
									<div class="comment">파크 하얏트 서울에서 즐기는 스시 오마카세</div>
								</div></li>
							<li class="item"><a class="i_wrap"
								href="/product/detail/5336"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxOTAy/15495925835c5ce807f0cc6.png)"></i>
							</a>
								<div class="desc">
									<div class="name">재패니즈다이닝 타노</div>
									<div class="comment">갓포 코스와 포잉 예약만의 특별한 혜택</div>
								</div></li>
						</ul>
						<a href="/seoul/product/list">티켓 더보기</a>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
	</div>







</body>
</html>