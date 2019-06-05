<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<style>
		<%@include file="/css/style.css" %>
 	</style>
	<script type="text/javascript" 
        src="<%= request.getContextPath() %>/js/jquery-3.4.1.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/js/main.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/js/slider.js"></script>
	<meta charset="UTF-8">
	<title>
	        프로덕트		
	</title>
</head>
<body>
	<div id="wrap" class="">
		<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>
		
		<div id="container" class>
			<div id="banner_wrap">
				<div id="banner" class="image "
					style="background-image: url(http://c2.poing.co.kr/banner/MjAxOTA0/15543549885ca5932c9a0ad.png)">
					<div class="title_wrap">
						<div class="title">도산공원</div>
					</div>
					<div class="line">
						<hr>
					</div>
					<div class="subtitle">청담부터 로데오까지, 꾸준히 핫한 플레이스들.</div>
				</div>
			</div>
			<div id="content_wrap">
				<div class="section">
					<div class="gap"></div>
					<div class="body">
						<c:forEach items="${list}" var="dto" varStatus="status">
							<c:if test="${status.index % 4 eq 0}">
								<div class="element small_coupon first">
							</c:if>
							<c:if test="${status.index % 4 ne 0 }">
								<div class="element  small_coupon">
							</c:if>
									<a href="/Poing/product/detail.do?p_num=${dto.p_num}" class="image"
										style="display: block; background-image: url(&quot;http://c2.poing.co.kr/MRI-original/MjAxOTA0/15566107485cc7febcc1e8e.png&quot;);">
										<div class="shading"></div>
	
										<div class="bottom">
											<span class="name">${dto.rest_name }</span> <span class="area">${dto.r_location}</span>
										</div>
									</a>
	
									<div class="desc">
									<div class="coupon">
										<div class="option">${dto.p_name }</div>
										<div class="price fixed">
											<div class="ratio long ">${dto.p_type }</div>
											<div class="discount">${dto.p_dc_money }원</div>
											<div class="origin"></div>
										</div>
									</div>
								</div> <!-- desc -->
								</div><!-- element -->
						</c:forEach>
					</div><!-- "body" -->
					<div id="coupon_pagination">
					<div class="page-list">
						<ul class="pagination" onselectstart="return false;">
							<li class="prev">
								<a href="list.do?pg=${paging.prevPageNo}">&lt;</a>
							</li>
							<c:forEach begin="${paging.startPageNo }"
								end="${paging.endPageNo}" step="1" var="cpage">
								<c:if test="${cpage ne paging.cpage }">
									<li class="page" data-page="${cpage}"><a
										href="list.do?pg=${cpage}">${cpage}</a></li>
								</c:if>
								<c:if test="${cpage eq paging.cpage }">
									<li class="page active" data-page="${cpage}"><a
										href="list.do?pg=${cpage}">${cpage}</a></li>
								</c:if>
							</c:forEach>
							<li class="next">
								<a href="list.do?pg=${paging.nextPageno}">&gt;</a>
							</li>
						</ul>
					</div>
				</div>

			</div><!-- section -->
			</div><!-- content_wrap -->
		</div><!-- container -->
		<!-- header -->
		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
	<!-- wrap end -->

	<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
</div>
</body>
</html>