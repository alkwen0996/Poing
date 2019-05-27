
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
<%@includefile="/css/style.css"%>
<%@includefile="/css/poing.slider.css"%>
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js?35740"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/slider.js"></script>

<script type="text/javascript" src="//developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
    
<title>Poing 레스토랑 디테일 > 지도 테스트</title>
<style>.gm-control-active>img{box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1){display:none}.gm-control-active:hover>img:nth-child(2),.gm-control-active:active>img:nth-child(3){display:block}
</style><style>.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px;box-sizing:border-box}
</style><style>@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style><style>.gm-ui-hover-effect{opacity:.6}.gm-ui-hover-effect:hover{opacity:1}
</style><style>.gm-style .transit-container{background-color:white;max-width:265px;overflow-x:hidden}.gm-style .transit-container .transit-title span{font-size:14px;font-weight:500}.gm-style .transit-container .transit-title{padding-bottom:6px}.gm-style .transit-container .transit-wheelchair-icon{background:transparent url('https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png');background-size:59px 492px;display:inline-block;background-position:-5px -450px;width:13px;height:13px}.gm-style.gm-china .transit-container .transit-wheelchair-icon{background-image:url('http://maps.gstatic.cn/mapfiles/api-3/images/mapcnt6.png')}@media (-webkit-min-device-pixel-ratio:1.2),(min-resolution:1.2dppx),(min-resolution:116dpi){.gm-style .transit-container .transit-wheelchair-icon{background-image:url('https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6_hdpi.png');background-size:59px 492px;display:inline-block;background-position:-5px -449px;width:13px;height:13px}.gm-style.gm-china .transit-container .transit-wheelchair-icon{background-image:url('http://maps.gstatic.cn/mapfiles/api-3/images/mapcnt6_hdpi.png')}}.gm-style .transit-container div{background-color:white;font-size:11px;font-weight:300;line-height:15px}.gm-style .transit-container .transit-line-group{overflow:hidden;margin-right:-6px}.gm-style .transit-container .transit-line-group-separator{border-top:1px solid #e6e6e6;padding-top:5px}.gm-style .transit-container .transit-nlines-more-msg{color:#999;margin-top:-3px;padding-bottom:6px}.gm-style .transit-container .transit-line-group-vehicle-icons{display:inline-block;padding-right:10px;vertical-align:top;margin-top:1px}.gm-style .transit-container .transit-line-group-content{display:inline-block;min-width:100px;max-width:228px;margin-bottom:-3px}.gm-style .transit-container .transit-clear-lines{clear:both}.gm-style .transit-container .transit-div-line-name{float:left;padding:0 6px 6px 0;white-space:nowrap}.gm-style .transit-container .transit-div-line-name .gm-transit-long{width:107px}.gm-style .transit-container .transit-div-line-name .gm-transit-medium{width:50px}.gm-style .transit-container .transit-div-line-name .gm-transit-short{width:37px}.gm-style .transit-div-line-name .renderable-component-icon{float:left;margin-right:2px}.gm-style .transit-div-line-name .renderable-component-color-box{background-image:url(https://maps.gstatic.com/mapfiles/transparent.png);height:10px;width:4px;float:left;margin-top:3px;margin-right:3px;margin-left:1px}.gm-style.gm-china .transit-div-line-name .renderable-component-color-box{background-image:url(http://maps.gstatic.cn/mapfiles/transparent.png)}.gm-style .transit-div-line-name .renderable-component-text{text-align:left;overflow:hidden;text-overflow:ellipsis;display:block}.gm-style .transit-div-line-name .renderable-component-text-box{overflow:hidden;text-overflow:ellipsis;display:block;font-size:8pt;font-weight:400;text-align:center;padding:1px 2px}.gm-style .transit-div-line-name .renderable-component-text-box-white{border:solid 1px #ccc;background-color:white;padding:0 2px}.gm-style .transit-div-line-name .renderable-component-bold{font-weight:400}
</style><style>.poi-info-window div,.poi-info-window a{color:#333;font-family:Roboto,Arial;font-size:13px;background-color:white;-moz-user-select:text;-webkit-user-select:text;-ms-user-select:text;user-select:text}.poi-info-window{cursor:default}.poi-info-window a:link{text-decoration:none;color:#427fed}.poi-info-window .view-link,.poi-info-window a:visited{color:#427fed}.poi-info-window .view-link:hover,.poi-info-window a:hover{cursor:pointer;text-decoration:underline}.poi-info-window .full-width{width:180px}.poi-info-window .title{overflow:hidden;font-weight:500;font-size:14px}.poi-info-window .address{margin-top:2px;color:#555}
</style><style>.gm-style .gm-style-iw{font-weight:300;font-size:13px;overflow:hidden}.gm-style .gm-style-iw-a{position:absolute;width:9999px;height:0}.gm-style .gm-style-iw-t{position:absolute;width:100%}.gm-style .gm-style-iw-t::after{background:white;box-shadow:-2px 2px 2px 0 rgba(178,178,178,.4);content:"";height:15px;left:0;position:absolute;top:0;transform:translate(-50%,-50%) rotate(-45deg);width:15px}.gm-style .gm-style-iw-c{position:absolute;box-sizing:border-box;overflow:hidden;top:0;left:0;transform:translate(-50%,-100%);background-color:white;border-radius:8px;padding:12px;box-shadow:0 2px 7px 1px rgba(0,0,0,0.3)}.gm-style .gm-style-iw-d{box-sizing:border-box;overflow:auto}.gm-style .gm-style-iw-d::-webkit-scrollbar{width:18px;height:12px;-webkit-appearance:none}.gm-style .gm-style-iw-d::-webkit-scrollbar-track,.gm-style .gm-style-iw-d::-webkit-scrollbar-track-piece{background:#fff}.gm-style .gm-style-iw-c .gm-style-iw-d::-webkit-scrollbar-thumb{background-color:rgba(0,0,0,0.12);border:6px solid transparent;border-radius:9px;background-clip:content-box}.gm-style .gm-style-iw-c .gm-style-iw-d::-webkit-scrollbar-thumb:horizontal{border:3px solid transparent}.gm-style .gm-style-iw-c .gm-style-iw-d::-webkit-scrollbar-thumb:hover{background-color:rgba(0,0,0,0.3)}.gm-style .gm-style-iw-c .gm-style-iw-d::-webkit-scrollbar-corner{background:transparent}.gm-style .gm-iw{color:#2c2c2c}.gm-style .gm-iw b{font-weight:400}.gm-style .gm-iw a:link,.gm-style .gm-iw a:visited{color:#4272db;text-decoration:none}.gm-style .gm-iw a:hover{color:#4272db;text-decoration:underline}.gm-style .gm-iw .gm-title{font-weight:400;margin-bottom:1px}.gm-style .gm-iw .gm-basicinfo{line-height:18px;padding-bottom:12px}.gm-style .gm-iw .gm-website{padding-top:6px}.gm-style .gm-iw .gm-photos{padding-bottom:8px;-ms-user-select:none;-moz-user-select:none;-webkit-user-select:none}.gm-style .gm-iw .gm-sv,.gm-style .gm-iw .gm-ph{cursor:pointer;height:50px;width:100px;position:relative;overflow:hidden}.gm-style .gm-iw .gm-sv{padding-right:4px}.gm-style .gm-iw .gm-wsv{cursor:pointer;position:relative;overflow:hidden}.gm-style .gm-iw .gm-sv-label,.gm-style .gm-iw .gm-ph-label{cursor:pointer;position:absolute;bottom:6px;color:#fff;font-weight:400;text-shadow:rgba(0,0,0,0.7) 0 1px 4px;font-size:12px}.gm-style .gm-iw .gm-stars-b,.gm-style .gm-iw .gm-stars-f{height:13px;font-size:0}.gm-style .gm-iw .gm-stars-b{position:relative;background-position:0 0;width:65px;top:3px;margin:0 5px}.gm-style .gm-iw .gm-rev{line-height:20px;-ms-user-select:none;-moz-user-select:none;-webkit-user-select:none}.gm-style.gm-china .gm-iw .gm-rev{display:none}.gm-style .gm-iw .gm-numeric-rev{font-size:16px;color:#dd4b39;font-weight:400}.gm-style .gm-iw.gm-transit{margin-left:15px}.gm-style .gm-iw.gm-transit td{vertical-align:top}.gm-style .gm-iw.gm-transit .gm-time{white-space:nowrap;color:#676767;font-weight:bold}.gm-style .gm-iw.gm-transit img{width:15px;height:15px;margin:1px 5px 0 -20px;float:left}
</style><style>.gm-iw {text-align:left;}.gm-iw .gm-numeric-rev {float:left;}.gm-iw .gm-photos,.gm-iw .gm-rev {direction:ltr;}.gm-iw .gm-stars-f, .gm-iw .gm-stars-b {background:url("https://maps.gstatic.com/mapfiles/api-3/images/review_stars.png") no-repeat;background-size: 65px 26px;float:left;}.gm-iw .gm-stars-f {background-position:left -13px;}.gm-iw .gm-sv-label,.gm-iw .gm-ph-label {left: 4px;}</style><link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans"><style>.gm-style-pbc{transition:opacity ease-in-out;background-color:rgba(0,0,0,0.45);text-align:center}.gm-style-pbt{font-size:22px;color:white;font-family:Roboto,Arial,sans-serif;position:relative;margin:0;top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%)}
</style><style>.gm-style img{max-width: none;}.gm-style {font: 400 11px Roboto, Arial, sans-serif; text-decoration: none;}</style>
<style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#1d3c78;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}</style>
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
									${dto.rest_loc} ${dto.rest_food_type}</span>
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
											<c:forEach varStatus="status" var="i" begin="1" end="10"
												step="1">
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
				<div id="content" class="detail map">
					<ul class="tab">
						<li class="item "><a href="/Poing/restList/detail.do?rest_seq=${dto.rest_seq}">정보</a>
						</li>
						<li class="item "><a href="/Poing/restList/detail/photo.do?rest_seq=${dto.rest_seq}">포토</a>
						</li>
						<li class="item "><a href="/restaurant/detail/35740?review">리뷰(19)</a>
						</li>
						<li class="item "><a href="/Poing/restList/detail/menu.do?rest_seq=${dto.rest_seq}">메뉴</a>
						</li>
						<li class="item selected"><a
							href="/restaurant/detail/35740?map">지도</a></li>
					</ul>

					<div class="body first last">
						<div id="map">
						</div>
					</div>
				</div>

				<div id="sidebar_wrap" class="detail">
					<div id="reserve_button" class="sidebar empty">
						<button class="red_fill border_radius soft"
							data-type="poing.reservation.add" data-id="35740" tabindex="-1">즉시
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
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
		<%-- <jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include> --%>
		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
	</div>
<div id="map"></div>
<script>
function initMap() {
	var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 14,
        center: {lat: -34.397, lng: 150.644}
      }); //2번 매개변수
	var geocoder = new google.maps.Geocoder(); //1번 매개변수
	geocodeAddress(geocoder, map);
}

function geocodeAddress(geocoder, resultsMap) {
    var address = '${dto.rest_loc}';
    geocoder.geocode({'address': address}, function(results, status) {
      if (status === 'OK') {
        resultsMap.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
          map: resultsMap,
          position: results[0].geometry.location
        });
        var infowindow = new google.maps.InfoWindow({
            /* content: '<div><div class="inner"><span class="image" style="background-image:url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398359e843ff78add.jpeg)"></span><div>만<br><span>서울시 강남구 신사동 636-23</span></div></div></div>' */
            content: '<div><div class="inner"><img src="http://c2.poing.co.kr/PIMAGE-original/MjAxNzEw/150839398359e843ff78add.jpeg" style="display: inline-block; width: 50px; height: 50px;"><div style="vertical-align: top; width: 134px; display: inline-block; margin-left:10px">${dto.rest_name}<br><span>${dto.rest_loc}</span></div></div></div>'  
          });
        infowindow.open(map, marker);
        google.maps.event.addListener(marker,'click',function() {
	        infowindow.open(map, marker);    	  
        	});
      } else {
        alert('주소를 찾을 수 없습니다: ' + status);
      }
    });
  }
    </script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBd3AEpRuYNo5NnomHPAXXRCyXxgtYzz3g&callback=initMap">
    </script>
</body>
</html>