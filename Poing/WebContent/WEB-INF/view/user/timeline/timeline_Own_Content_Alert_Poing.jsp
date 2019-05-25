<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=alert&type=my" class="first ">내 소식</a> 
		<a href="/Poing/timeline.do?id=${ param.id }&tab=alert&type=poing" class="selected">포잉 알림</a>
	</div>

	<ul class="notice_list poing">
		<li class="item" data-type="level_up" data-target="1517256"
			data-additional="">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(http://c1.poing.co.kr/147081205757aacf991cba7.png)"></i>
			</div>
			<div class="info">
				<div class="text">고지용님, 레벨 업! 레벨 2 달성으로 1,000P가 적립되었습니다.</div>
				<div class="time">
					<script>document.write(moment("2019-05-17 14:36:35").locale("ko").fromNow());</script>
					7일 전
				</div>
			</div>
		</li>
		<li class="item" data-type="cancel_reservation" data-target="32252"
			data-additional="">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(http://c2.poing.co.kr/PIMAGE-thumbnail/MjAxNzA0/149205812658ef000e43060.jpeg)"></i>
			</div>
			<div class="info">
				<div class="text">[예약취소] 그래니 살룬/05.16(목)/18:00/1명 예약이 정상적으로
					취소되었습니다.</div>
				<div class="time">
					<script>document.write(moment("2019-05-14 17:39:25").locale("ko").fromNow());</script>
					10일 전
				</div>
			</div>
		</li>
		<li class="item" data-type="accept_reservation" data-target="32252"
			data-additional="">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(http://c2.poing.co.kr/PIMAGE-thumbnail/MjAxNzA0/149205812658ef000e43060.jpeg)"></i>
			</div>
			<div class="info">
				<div class="text">[예약대기] 그래니 살룬/05.16(목)/18:00/1명 예약이 접수
					대기중입니다. 매장과의 연결 즉시 예약 확정 여부를 알려드리겠습니다. (매장 오픈 상황에 따라 예약 연결이 지연 될수도
					있습니다.)</div>
				<div class="time">
					<script>document.write(moment("2019-05-14 17:39:02").locale("ko").fromNow());</script>
					10일 전
				</div>
			</div>
		</li>
		<li class="item" data-type="cancel_reservation" data-target="26440"
			data-additional="">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(http://c2.poing.co.kr/PIMAGE-thumbnail/55127522d20c7819c600001c.png)"></i>
			</div>
			<div class="info">
				<div class="text">[예약취소] 비스테까 토레엔/05.31(금)/20:00/1명 예약이 정상적으로
					취소되었습니다.</div>
				<div class="time">
					<script>document.write(moment("2019-05-14 17:24:07").locale("ko").fromNow());</script>
					10일 전
				</div>
			</div>
		</li>
		<li class="item" data-type="accept_reservation" data-target="26440"
			data-additional="">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(http://c2.poing.co.kr/PIMAGE-thumbnail/55127522d20c7819c600001c.png)"></i>
			</div>
			<div class="info">
				<div class="text">[예약대기] 비스테까 토레엔/05.31(금)/20:00/1명 예약이 접수
					대기중입니다. 매장과의 연결 즉시 예약 확정 여부를 알려드리겠습니다. (매장 오픈 상황에 따라 예약 연결이 지연 될수도
					있습니다.)</div>
				<div class="time">
					<script>document.write(moment("2019-05-14 17:23:31").locale("ko").fromNow());</script>
					10일 전
				</div>
			</div>
		</li>
		<li class="item" data-type="add_point" data-target="1517256"
			data-additional="">
			<div class="i_wrap">
				<i class="image border_radius circle"
					style="background-image: url(http://c1.poing.co.kr/147081205757aacf991cba7.png)"></i>
			</div>
			<div class="info">
				<div class="text">포잉에 오신 것을 환영합니다! 가입 축하 포인트 3,000P가 적립 되었습니다.
				</div>
				<div class="time">
					<script>document.write(moment("2019-04-29 17:54:13").locale("ko").fromNow());</script>
					25일 전
				</div>
			</div>
		</li>
	</ul>
	<div id="notice_pagination">
		<div class="page-list">
			<ul class="pagination" onselectstart="return false;">
				<li class="prevAll">&lt;&lt;</li>
				<li class="prev">&lt;</li>
				<li class="page active" data-page="1">1</li>
				<li class="next">&gt;</li>
				<li class="nextAll">&gt;&gt;</li>
			</ul>
		</div>
	</div>
</div>