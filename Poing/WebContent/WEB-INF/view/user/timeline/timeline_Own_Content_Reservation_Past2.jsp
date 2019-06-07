<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="reservation" class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=reservation&type=recent" class="">방문 예정 예약</a>					
		<a href="/Poing/timeline.do?id=${ param.id }&tab=reservation&type=past" class="selected">지나간 예약</a>
	</div>

	<div class="list">
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/13087"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxOTA0/15565285705cc6bdbae63eb.png);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/13087">도미닉</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.5.30 (목) 오후 2:00</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324332"
				tabindex="-1">리스트에서 삭제</button>
		</div>
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/11760"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/57b6a1f8668a483e1a000019.png);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/11760">탑클라우드 23</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.6.27 (목) 오전 11:30</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324336"
				tabindex="-1">리스트에서 삭제</button>
		</div>
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/30752"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzAx/1484296917587892d5c63bd.jpeg);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/30752">스시현</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.5.31 (금) 오후 6:30</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324328"
				tabindex="-1">리스트에서 삭제</button>
		</div>
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/12197"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/54d2da80d20c7846060003ce.png);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/12197">딘 타이 펑 (명동중앙점)</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.5.29 (수) 오전 11:00</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324324"
				tabindex="-1">리스트에서 삭제</button>
		</div>
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/6943"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzA3/14996526375962e21de1c30.jpeg);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/6943">초록바구니</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.5.31 (금) 오후 12:00</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324344"
				tabindex="-1">리스트에서 삭제</button>
		</div>
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/38180"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxODA3/15323218295b556025aabc0.png);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/38180">루프808</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.5.31 (금) 오전 10:00</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324340"
				tabindex="-1">리스트에서 삭제</button>
		</div>
		<div class="reservation">
			<a class="i_wrap image" href="/restaurant/detail/37392"> <i
				class="image border_radius hard"
				style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxODA0/15233374655acc48f98e24d.jpeg);"></i>
			</a>

			<div class="info">
				<div class="name">
					<a href="/restaurant/detail/37392">빌리스 테이블 (도산공원점)</a> <span
						class="label red border_radius soft">취소</span>
				</div>
				<div class="date">예약정보: 2019.5.31 (금) 오전 11:30</div>
				<div class="party_size">인원: 1명</div>



			</div>

			<button class="gray border_radius soft"
				data-type="poing.reservation.disappear" data-id="1324348"
				tabindex="-1">리스트에서 삭제</button>
		</div>
	</div>
	
	<!-- 
	만약 데이터가 없다면 아래 blank div태그를 출력
	<div class="blank">
		<div class="i_wrap">
			<i class="icon blank reservation"></i>
		</div>
		<div class="message">
			예약이 없습니다.<br>지금 레스토랑에 예약해보시겠어요?
		</div>
		<button class="disable" onclick="" tabindex="-1"></button>
	</div> -->
	
</div>