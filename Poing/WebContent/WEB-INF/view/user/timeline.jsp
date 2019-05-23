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
		
		<!-- 만약 내 담벼락이라면 -->
		<!-- 만약 type이 null이거나  type=reservation라면 -->
		
		<!-- type=coupon 이라면-->
		<!-- type=review 이라면-->
		<!-- type=restaurant 이라면-->
		<!-- type=social 이라면-->
		<!-- type=payment 이라면-->
		<!-- type=friends 이라면-->
		<!-- type=setting 이라면-->

		
		
		<!-- 만약 다른사람 담벼락이라면 -->
		
		<!-- 만약 type이 null이거나  type=review라면 -->
		<%-- <jsp:include page="/WEB-INF/view/user/timeline/timeline_Other_Content_Review.jsp"></jsp:include> --%>
		
		<!-- type=restaurant 이라면-->
		<%-- <jsp:include page="/WEB-INF/view/user/timeline/timeline_Other_Content_Restaurant.jsp"></jsp:include> --%>
		
		
	</div>

	<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
		
	<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	

</div> <!-- wrap end -->

<jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>
</body>
</html>