<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=alert&type=my" class="first selected">내 소식</a> 
		<a href="/Poing/timeline.do?id=${ param.id }&tab=alert&type=poing" class="">포잉 알림</a>
	</div>

	<ul class="notice_list my">
	
	<c:forEach items="${nnlist }" var = "mdto" varStatus="status">
		<li class="item" data-type="like_review" data-target="193260"
			data-additional="28347">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(${mdto.un_img_ori})"></i>
			</div>
			<div class="info">
				<div class="text">${mdto.notice_type_content }</div>
				<div class="time">
					<!-- <script>document.write(moment("2019-05-24 10:26:06").locale("ko").fromNow());</script> -->
					${mdto.un_created_at}
				</div>
			</div>
		</li>
	</c:forEach>
	
	</ul>
	<div id="notice_pagination">
		<div class="page-list">
			<ul class="pagination" onselectstart="return false;">
				<li class="prevAll">&lt;&lt;</li>
				<li class="prev">&lt;</li>
				<li class="page active" data-page="1">1</li>
				<li class="page" data-page="2">2</li>
				<li class="page" data-page="3">3</li>
				<li class="page" data-page="4">4</li>
				<li class="page" data-page="5">5</li>
				<li class="next">&gt;</li>
				<li class="nextAll">&gt;&gt;</li>
			</ul>
		</div>
	</div>
</div>