<%@page import="poing.product.ProductDTO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/sevlet class SIST168 (2019. 5. 23. - 오후 3:18:02)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="" />
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
								<span class="name"> ${dto.rest_name } </span> <span class="info">
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
										<span class="main">할인</span><br> <span class="sub">
											OFF</span>
									</div>
									<span class="reduced">${dto.p_dc_money }</span><br> <span
										class="original">${dto.p_origin_money }</span>
								</div>
								<div id="left_time">
									남은시간 <span>7일 02:10:35</span>
								</div>
								<div class="dropbox">
									<div class="label">
										<span class="text">옵션을 선택해주세요.</span><span class="i_wrap"><i
											class="icon arrow small red down"></i></span>
									</div>
									<ul class="items" style="display: none;">
										<li class="" data-id="17684" data-min="2" data-limit="5">
											<span class="option"><span>${dto.p_option }</span></span><span class="price">${dto.p_origin_money }</span>
										</li>
										
									</ul>
								</div>
								<ul class="selected"></ul>
								<div class="summary">
									<span class="label">총 합계</span> <span class="value">일단보류</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="content_wrap">

				<div id="content" class="detail map">
					<ul class="tab">
						<li class="item "><a href="/Poing/product/detail.do?p_num=${param.p_num }&&type=detail">상세정보</a>
						</li>
						<li class="item "><a href="/Poing/product/detail/photo.do?p_num=${param.p_num }&&type=photo">포토</a>
						</li>
						<li class="item "><a href="/Poing/product/detail/menu.do?p_num=${param.p_num }&&type=menu">메뉴</a>
						</li>
						<li class="item selected"><a href="/Poing/product/detail/map.do?p_num=${param.p_num }&&type=map">지도</a>
						</li>
						<li class="item "><a href="/Poing/product/detail/qna.do?p_num=${param.p_num }&&type=qna">상품문의</a>
						</li>
					</ul>
					<div class="body first last">
						<div id="map" style="position: relative; overflow: hidden;">
							<div
								style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
								<div class="gm-style"
									style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
									<div tabindex="0"
										style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;">
										<div
											style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 0;">
													<div
														style="position: absolute; z-index: 983; transform: matrix(1, 0, 0, 1, -120, -182);">
														<div
															style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
														<div
															style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;">
															<div style="width: 256px; height: 256px;"></div>
														</div>
													</div>
												</div>
											</div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: -1;">
													<div
														style="position: absolute; z-index: 983; transform: matrix(1, 0, 0, 1, -120, -182);">
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 0px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 0px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: -256px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: -256px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: -256px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 0px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 256px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 256px;"></div>
														<div
															style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 256px;"></div>
													</div>
												</div>
												<div
													style="width: 24px; height: 37px; overflow: hidden; position: absolute; left: -12px; top: -37px; z-index: 0;">
													<img alt=""
														src="http://c1.poing.co.kr/original/images/marker_default.png"
														draggable="false"
														style="position: absolute; left: 0px; top: 0px; user-select: none; width: 24px; height: 37px; border: 0px; padding: 0px; margin: 0px; max-width: none;">
												</div>
											</div>
											<div
												style="position: absolute; left: 0px; top: 0px; z-index: 0;">
												<div
													style="position: absolute; z-index: 983; transform: matrix(1, 0, 0, 1, -120, -182);">
													<div
														style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111788!3i50777!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=14343"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111789!3i50778!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=4301"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111787!3i50777!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=42726"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111787!3i50776!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=24385"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111788!3i50776!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=127073"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111788!3i50778!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=32684"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111787!3i50778!4i256!2m3!1e0!2sm!3i467176432!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=61067"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111789!3i50777!4i256!2m3!1e0!2sm!3i467176456!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=54177"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
													<div
														style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
														<img draggable="false" alt="" role="presentation"
															src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i17!2i111789!3i50776!4i256!2m3!1e0!2sm!3i467176456!3m9!2sko-KR!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!4e0&amp;key=AIzaSyBxpwVKcWIdzFKMn-VEtjTCfNz29JrWGtQ&amp;token=35836"
															style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
												</div>
											</div>
										</div>
										<div class="gm-style-pbc"
											style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
											<p class="gm-style-pbt"></p>
										</div>
										<div
											style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
											<div
												style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;">
													<div title=""
														style="width: 24px; height: 37px; overflow: hidden; position: absolute; opacity: 0; cursor: pointer; touch-action: none; left: -12px; top: -37px; z-index: 0;">
														<img alt=""
															src="http://c1.poing.co.kr/original/images/marker_default.png"
															draggable="false"
															style="position: absolute; left: 0px; top: 0px; user-select: none; width: 24px; height: 37px; border: 0px; padding: 0px; margin: 0px; max-width: none;">
													</div>
												</div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;">
													<div
														style="cursor: default; position: absolute; top: 0px; left: 0px; z-index: -129;">
														<div class="gm-style-iw-a"
															style="position: absolute; left: 0px; top: 0px;">
															<div class="gm-style-iw-t"
																style="right: 0px; bottom: 48px;">
																<div class="gm-style-iw gm-style-iw-c"
																	style="padding-right: 0px; padding-bottom: 0px; max-width: 548px; max-height: 278px;">
																	<div class="gm-style-iw-d"
																		style="overflow: scroll; max-width: 530px; max-height: 260px;">
																		<div>
																			<div class="inner">
																				<span class="image"
																					style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxODA2/15287711595b1f3257d2994.jpeg)"></span>
																				<div>
																					킨카 스시바 이자카야 청담<br> <span>서울시 강남구 신사동
																						650-13 B1층</span>
																				</div>
																			</div>
																		</div>
																	</div>
																	<button draggable="false" title="닫기" aria-label="닫기"
																		type="button" class="gm-ui-hover-effect"
																		style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: -6px; right: -6px; width: 30px; height: 30px;">
																		<img
																			src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A"
																			style="pointer-events: none; display: block; width: 14px; height: 14px; margin: 8px;">
																	</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<iframe aria-hidden="true" frameborder="0"
										style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"
										src="about:blank"></iframe>
									<div
										style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
										<a target="_blank" rel="noopener"
											href="https://maps.google.com/maps?ll=37.52343,127.036205&amp;z=17&amp;t=m&amp;hl=ko-KR&amp;gl=US&amp;mapclient=apiv3"
											title="Google 지도에서 이 지역 열기(새 창으로 열림)"
											style="position: static; overflow: visible; float: none; display: inline;"><div
												style="width: 66px; height: 26px; cursor: pointer;">
												<img alt=""
													src="https://maps.gstatic.com/mapfiles/api-3/images/google4.png"
													draggable="false"
													style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
											</div></a>
									</div>
									<div
										style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 184px; top: 133px;">
										<div style="padding: 0px 0px 10px; font-size: 16px;">지도
											데이터</div>
										<div style="font-size: 13px;">지도 데이터 ©2019 Google, SK
											telecom</div>
										<button draggable="false" title="닫기" aria-label="닫기"
											type="button" class="gm-ui-hover-effect"
											style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;">
											<img
												src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A"
												style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;">
										</button>
									</div>
									<div class="gmnoprint"
										style="z-index: 1000001; position: absolute; right: 49px; bottom: 0px; width: 186px;">
										<div draggable="false" class="gm-style-cc"
											style="user-select: none; height: 14px; line-height: 14px;">
											<div
												style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
												<div style="width: 1px;"></div>
												<div
													style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
											</div>
											<div
												style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
												<a
													style="text-decoration: none; cursor: pointer; display: none;">지도
													데이터</a><span>지도 데이터 ©2019 Google, SK telecom</span>
											</div>
										</div>
									</div>
									<div class="gmnoscreen"
										style="position: absolute; right: 0px; bottom: 0px;">
										<div
											style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">지도
											데이터 ©2019 Google, SK telecom</div>
									</div>
									<div class="gmnoprint gm-style-cc" draggable="false"
										style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
										<div
											style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
											<div style="width: 1px;"></div>
											<div
												style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
										</div>
										<div
											style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
											<a
												href="https://www.google.com/intl/ko-KR_US/help/terms_maps.html"
												target="_blank" rel="noopener"
												style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">이용약관</a>
										</div>
									</div>
									<button draggable="false" title="전체 화면보기로 전환"
										aria-label="전체 화면보기로 전환" type="button"
										class="gm-control-active gm-fullscreen-control"
										style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;">
										<img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%20018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
											style="height: 18px; width: 18px;"><img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
											style="height: 18px; width: 18px;"><img
											src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
											style="height: 18px; width: 18px;">
									</button>
									<div draggable="false" class="gm-style-cc"
										style="user-select: none; height: 14px; line-height: 14px; display: none; position: absolute; right: 0px; bottom: 0px;">
										<div
											style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
											<div style="width: 1px;"></div>
											<div
												style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
										</div>
										<div
											style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
											<a target="_blank" rel="noopener"
												title="Google에 도로 지도 또는 이미지 오류 신고"
												href="https://www.google.com/maps/@37.5234303,127.0362045,17z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
												style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">지도
												오류 신고</a>
										</div>
									</div>
									<div
										class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
										draggable="false" controlwidth="40" controlheight="81"
										style="margin: 10px; user-select: none; position: absolute; bottom: 95px; right: 40px;">
										<div class="gmnoprint" controlwidth="40" controlheight="81"
											style="position: absolute; left: 0px; top: 0px;">
											<div draggable="false"
												style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;">
												<button draggable="false" title="확대" aria-label="확대"
													type="button" class="gm-control-active"
													style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23666%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23333%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23111%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;">
												</button>
												<div
													style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;"></div>
												<button draggable="false" title="축소" aria-label="축소"
													type="button" class="gm-control-active"
													style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;">
												</button>
											</div>
										</div>
										<div class="gmnoprint" controlwidth="40" controlheight="40"
											style="display: none; position: absolute;">
											<div style="width: 40px; height: 40px;">
												<button draggable="false" title="지도 90도 회전"
													aria-label="지도 90도 회전" type="button"
													class="gm-control-active"
													style="background: none rgb(255, 255, 255); display: none; border: 0px; margin: 0px 0px 32px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="height: 18px; width: 18px;">
												</button>
												<button draggable="false" title="지도 기울이기"
													aria-label="지도 기울이기" type="button"
													class="gm-tilt gm-control-active"
													style="background: none rgb(255, 255, 255); display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
													<img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="width: 18px;"><img
														src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
														style="width: 18px;">
												</button>
											</div>
										</div>
									</div>
								</div>
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
								href="/product/detail/5360"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxOTAz/15528866895c8f2ba1ea194.png)"></i>
							</a>
								<div class="desc">
									<div class="name">알라또레</div>
									<div class="comment">홍대 이탈리안 레스토랑 '알라또레' DUETTO 세트</div>
								</div></li>
							<li class="item"><a class="i_wrap"
								href="/product/detail/5248"> <i
									class="image border_radius soft"
									style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/546b71c8d20c781a2700003c.png)"></i>
							</a>
								<div class="desc">
									<div class="name">비엘티 스테이크</div>
									<div class="comment">JW 메리어트 동대문 스퀘어 서울, 비엘티 스테이크</div>
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