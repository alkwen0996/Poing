<%@page import="poing.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<link rel='stylesheet' type='text/css' href='<%= request.getContextPath() %>/css/poing.slider.css'>

	<style>
		<%@include file="/css/style.css" %>
		<%@include file="/css/poing.slider.css" %>
	</style>
	<script type="text/javascript" 
        src="<%= request.getContextPath() %>/js/jquery-3.4.1.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/js/main.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/js/slider.js"></script>
	<meta charset="UTF-8">
	<title>
		Poing - ${ mdto.m_name }님의 담벼락입니다.		
	</title>
</head>

<body class="vsc-initialized">
<!-- body wrap -->
<div id="wrap" class="">
	<!-- header -->
	<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>

		<div id="container" class="">
			<!-- 상단에 배너가 있는 레이아웃 -->
			<div id="banner_wrap">

				<div id="banner" class="user">
					<div class="i_wrap background">
						<i class="image profile_image shading middle"
							style="width: 100%; height: 100%; background-image: url(http://c1.poing.co.kr/original/images/user/user_base.png)"></i>
					</div>
					<div class="i_wrap blur background">
						<i class="image profile_image shading middle"
							style="width: 100%; height: 100%; background-image: url(http://c1.poing.co.kr/original/images/user/user_base.png)"></i>
					</div>
					<div class="inner_wrap">
						<div class="inner">
							<div id="change_user_image" class="user_image i_wrap">
								<i class="image border_radius circle profile_image"
									style="width: 100%; height: 100%; background-image: url(http://c1.poing.co.kr/original/images/user/user_base.png)"></i>
								<div class="shading border_radius circle"></div>
								<div class="message border_radius circle">프로필 사진 바꾸기</div>
							</div>
							<div class="name">
								<span>고지용</span>
								<div class="point">4,000 P</div>
								<i class="icon question"></i>
							</div>
							<div class="intro">안녕하세요</div>
							<div class="level_text">LV.2 포잉에서 편리하게 예약하고 생생한 리뷰를 남겨보세요</div>
							<div class="level_bar">
								<i class="image" style="width: 54px; height: 100%;"></i>
							</div>
							<div class="level_qna">
								<i class="icon question"></i>
							</div>
							<div class="info">
								<a class="item" href="/timeline/1517256?reservation">예약 2</a> <a
									class="item" href="/timeline/1517256?review">리뷰 1</a> <a
									class="item" href="/timeline/1517256?restaurant">찜한 매장 1</a>
								<button class="empty item" tabindex="-1">
									<span>팔로워 3</span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="content_wrap">
				<div id="content" class="mypage">
					<c:choose>
						<c:when test="${authUser.m_no eq param.id}">
							<ul class="tab">
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=reservation">예약</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=coupon">티켓</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=review">리뷰</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=restaurant">찜</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=social">소식</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=payment">결제</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=friends">친구찾기</a></li>
								<li class="item "><a
									href="/Poing/timeline.do?id=${ param.id }&tab=setting">설정</a></li>
							</ul>
							<%MemberDTO mdto = (MemberDTO) session.getAttribute("authUser");
							  System.out.println("timeline.jsp line80 : " + mdto);%>
							<!-- 만약 tab이 null이거나  tab=reservation라면 -->
							
							<c:choose>
								<c:when test="${ param.tab eq null || param.tab eq 'reservation'}">
									<%-- <div id="reservation" class="body empty"> --%>
									<c:choose>
										<c:when test="${ param.type eq null || param.type eq 'recent'}">
											<jsp:include page="/WEB-INF/view/user/timeline/timeline_Own_Content_Reservation_recent.jsp"></jsp:include>
										</c:when>
										
										<c:otherwise>
											<jsp:include page="/WEB-INF/view/user/timeline/timeline_Own_Content_Reservation_past.jsp"></jsp:include>
										</c:otherwise>
									</c:choose>
									<%-- <div id="reservation" class="body empty"> end --%>
								</c:when>
	
								<%-- tab=coupon 이라면 --%>
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
									<%-- <div id="reservation" class="body empty"> --%>
									<c:if test="${ param.type eq null || param.type eq 'recent'}">
										<jsp:include
											page="/WEB-INF/view/user/timeline/timeline_Own_Content_Reservation_recent.jsp"></jsp:include>
									</c:if>
									<c:if test="${ param.type eq 'past'}">
										<jsp:include
											page="/WEB-INF/view/user/timeline/timeline_Own_Content_Reservation_past.jsp"></jsp:include>
									</c:if>
									<%-- <div id="reservation" class="body empty"> end--%>
								</c:when>
								
								<%-- tab=review 이라면--%>
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
								</c:when>
								
								<%-- tab=restaurant 이라면--%>
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
								</c:when>
								
								<%-- tab=social 이라면-->
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
								</c:when>
								
								<%-- tab=payment 이라면-->
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
								</c:when>
								
								<%-- tab=friends 이라면-->
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
								</c:when>
								
								<%-- tab=setting 이라면--%>
								
								<c:when test="${ param.tab eq null || param.tab eq 'coupon'}">
								</c:when>
								<c:otherwise> 
								
								
								
								</c:otherwise>
							</c:choose>
						</c:when>
						
						<c:otherwise>
							<ul class="tab">
								<li class="item "><a href="/timeline/610979?review">리뷰</a></li>
								<li class="item "><a href="/timeline/610979?restaurant">매장</a></li>
							</ul>
						</c:otherwise>

					</c:choose>
				</div>
				
				<!-- content end -->

				<c:if test="${authUser.m_no eq param.id}">
					<!-- 만약 내 담벼락이라면 -->
					<c:if test="${ param.tab eq null || param.tab eq 'reservation'}">
						<jsp:include page="/WEB-INF/view/user/timeline/timeline_Own_Slidebar_Reservation.jsp"></jsp:include>
					</c:if>
				</c:if>
			</div>

		</div>
		<!-- container -->

		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
	
</div> <!-- wrap end -->

<jsp:include page="/WEB-INF/layout/javascript/timeline_reserve.jsp"></jsp:include>
</body>
</html>