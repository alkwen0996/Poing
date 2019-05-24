<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="sidebar_wrap" class="mypage">

			<div id="reservation_calendar" class="sidebar">
				<div class="title">예약 캘린더</div>
				<div class="calendar hasDatepicker" id="dp1558673024945">
					<div
						class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
						style="display: block;">
						<div
							class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
							<a class="ui-datepicker-prev ui-corner-all" data-handler="prev"
								data-event="click" title="Prev"><span
								class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a
								class="ui-datepicker-next ui-corner-all" data-handler="next"
								data-event="click" title="Next"><span
								class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
							<div class="ui-datepicker-title">
								<span class="ui-datepicker-month">5월</span>&nbsp;<span
									class="ui-datepicker-year">2019</span>
							</div>
						</div>
						<table class="ui-datepicker-calendar">
							<thead>
								<tr>
									<th class="ui-datepicker-week-end"><span title="Sunday">일</span></th>
									<th><span title="Monday">월</span></th>
									<th><span title="Tuesday">화</span></th>
									<th><span title="Wednesday">수</span></th>
									<th><span title="Thursday">목</span></th>
									<th><span title="Friday">금</span></th>
									<th class="ui-datepicker-week-end"><span title="Saturday">토</span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td
										class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled date-sunday"><span
										class="ui-state-default">28</span></td>
									<td
										class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled "><span
										class="ui-state-default">29</span></td>
									<td
										class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled "><span
										class="ui-state-default">30</span></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">1</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">2</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">3</a></td>
									<td class=" ui-datepicker-week-end date-saturday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">4</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end date-sunday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">5</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">6</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">7</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">8</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">9</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">10</a></td>
									<td class=" ui-datepicker-week-end date-saturday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">11</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end date-sunday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">12</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">13</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">14</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">15</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">16</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">17</a></td>
									<td class=" ui-datepicker-week-end date-saturday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">18</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end date-sunday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">19</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">20</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">21</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">22</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">23</a></td>
									<td
										class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a
										class="ui-state-default ui-state-highlight ui-state-active ui-state-hover"
										href="#">24</a></td>
									<td class=" ui-datepicker-week-end date-saturday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">25</a></td>
								</tr>
								<tr>
									<td class=" ui-datepicker-week-end date-sunday"
										data-handler="selectDay" data-event="click" data-month="4"
										data-year="2019"><a class="ui-state-default" href="#">26</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">27</a></td>
									<td class=" " data-handler="selectDay" data-event="click"
										data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">28</a></td>
									<td class=" date-recentReserve" data-handler="selectDay"
										data-event="click" data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">29</a></td>
									<td class=" date-recentReserve" data-handler="selectDay"
										data-event="click" data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">30</a></td>
									<td class=" date-recentReserve" data-handler="selectDay"
										data-event="click" data-month="4" data-year="2019"><a
										class="ui-state-default" href="#">31</a></td>
									<td
										class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled date-saturday"><span
										class="ui-state-default">1</span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="desc">
					<span class="recent"></span> <span class="text margin">방문 예정</span>
					<span class="past"></span> <span class="text">지나간 예약</span> <span
						class="coupon"></span> <span class="text">티켓 사용</span>
				</div>
			</div>
			<div id="editor_recommend_restaurant" class="sidebar">
				<div class="title">에디터 추천 레스토랑</div>
				<ul class="list">
					<li class="item"><a class="i_wrap"
						href="/restaurant/detail/32260"> <i
							class="image border_radius soft"
							style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzA0/149205819058ef004e8abff.jpeg)"></i>
					</a>
						<div class="detail">
							<div class="name">
								<a href="/restaurant/detail/32260">그램스 그라운드</a>
							</div>
							<div class="info">분당 · 컨템퍼러리</div>
							<div class="grade">
								<i class="icon star small odd active" data-id="" data-index="0"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="1" style=""></i><i
									class="icon star small odd active" data-id="" data-index="2"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="3" style=""></i><i
									class="icon star small odd active" data-id="" data-index="4"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="5" style=""></i><i
									class="icon star small odd active" data-id="" data-index="6"
									style=""></i><i class="icon star small even " data-id=""
									data-index="7" style=""></i><i class="icon star small odd "
									data-id="" data-index="8" style=""></i><i
									class="icon star small even " data-id="" data-index="9"
									style=""></i><span data-id="" data-grade="66">3.3</span>
							</div>
							<button class="gray_red border_radius soft "
								data-type="poing.restaurants.favorite" data-id="32260"
								tabindex="-1">
								<i class="icon heart gray large "></i> <span>찜하기</span>
							</button>
						</div></li>
					<li class="item"><a class="i_wrap"
						href="/restaurant/detail/28673"> <i
							class="image border_radius soft"
							style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxOTA0/15541084385ca1d016dd1fc.png)"></i>
					</a>
						<div class="detail">
							<div class="name">
								<a href="/restaurant/detail/28673">청미심</a>
							</div>
							<div class="info">청담동 · 구이</div>
							<div class="grade">
								<i class="icon star small odd active" data-id="" data-index="0"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="1" style=""></i><i
									class="icon star small odd active" data-id="" data-index="2"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="3" style=""></i><i
									class="icon star small odd active" data-id="" data-index="4"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="5" style=""></i><i
									class="icon star small odd active" data-id="" data-index="6"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="7" style=""></i><i class="icon star small odd "
									data-id="" data-index="8" style=""></i><i
									class="icon star small even " data-id="" data-index="9"
									style=""></i><span data-id="" data-grade="80">4.0</span>
							</div>
							<button class="gray_red border_radius soft "
								data-type="poing.restaurants.favorite" data-id="28673"
								tabindex="-1">
								<i class="icon heart gray large "></i> <span>찜하기</span>
							</button>
						</div></li>
					<li class="item"><a class="i_wrap"
						href="/restaurant/detail/29155"> <i
							class="image border_radius soft"
							style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzA4/1502330475598bbe6b42b1f.jpeg)"></i>
					</a>
						<div class="detail">
							<div class="name">
								<a href="/restaurant/detail/29155">도사 by 백승욱</a>
							</div>
							<div class="info">청담동 · 컨템퍼러리</div>
							<div class="grade">
								<i class="icon star small odd active" data-id="" data-index="0"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="1" style=""></i><i
									class="icon star small odd active" data-id="" data-index="2"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="3" style=""></i><i
									class="icon star small odd active" data-id="" data-index="4"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="5" style=""></i><i
									class="icon star small odd active" data-id="" data-index="6"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="7" style=""></i><i
									class="icon star small odd active" data-id="" data-index="8"
									style=""></i><i class="icon star small even " data-id=""
									data-index="9" style=""></i><span data-id="" data-grade="86">4.3</span>
							</div>
							<button class="gray_red border_radius soft "
								data-type="poing.restaurants.favorite" data-id="29155"
								tabindex="-1">
								<i class="icon heart gray large "></i> <span>찜하기</span>
							</button>
						</div></li>
					<li class="item"><a class="i_wrap"
						href="/restaurant/detail/36428"> <i
							class="image border_radius soft"
							style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNzEy/15132442985a32468ab601e.jpeg)"></i>
					</a>
						<div class="detail">
							<div class="name">
								<a href="/restaurant/detail/36428">스시산원 경</a>
							</div>
							<div class="info">광화문 · 일식</div>
							<div class="grade">
								<i class="icon star small odd active" data-id="" data-index="0"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="1" style=""></i><i
									class="icon star small odd active" data-id="" data-index="2"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="3" style=""></i><i
									class="icon star small odd active" data-id="" data-index="4"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="5" style=""></i><i
									class="icon star small odd active" data-id="" data-index="6"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="7" style=""></i><i class="icon star small odd "
									data-id="" data-index="8" style=""></i><i
									class="icon star small even " data-id="" data-index="9"
									style=""></i><span data-id="" data-grade="77">3.9</span>
							</div>
							<button class="gray_red border_radius soft "
								data-type="poing.restaurants.favorite" data-id="36428"
								tabindex="-1">
								<i class="icon heart gray large "></i> <span>찜하기</span>
							</button>
						</div></li>
					<li class="item"><a class="i_wrap"
						href="/restaurant/detail/28777"> <i
							class="image border_radius soft"
							style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/MjAxNjA5/147462071257e4ed283bef4.jpeg)"></i>
					</a>
						<div class="detail">
							<div class="name">
								<a href="/restaurant/detail/28777">세상의 모든 아침</a>
							</div>
							<div class="info">여의도 · 카페/베이커리</div>
							<div class="grade">
								<i class="icon star small odd active" data-id="" data-index="0"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="1" style=""></i><i
									class="icon star small odd active" data-id="" data-index="2"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="3" style=""></i><i
									class="icon star small odd active" data-id="" data-index="4"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="5" style=""></i><i
									class="icon star small odd active" data-id="" data-index="6"
									style=""></i><i class="icon star small even active" data-id=""
									data-index="7" style=""></i><i class="icon star small odd "
									data-id="" data-index="8" style=""></i><i
									class="icon star small even " data-id="" data-index="9"
									style=""></i><span data-id="" data-grade="71">3.6</span>
							</div>
							<button class="gray_red border_radius soft "
								data-type="poing.restaurants.favorite" data-id="28777"
								tabindex="-1">
								<i class="icon heart gray large "></i> <span>찜하기</span>
							</button>
						</div></li>
				</ul>
			</div>
		</div>

<script>
$(document).ready(function(){
	$("#content.mypage>.body>.list").on("click", ".reservation>.info>.log>.i_wrap", function(e) {
        if($(this).hasClass("flipped")) {
			$(this).removeClass("flipped");
			$(this).next().children("li:not(:first)").hide();
		} else {
			$(this).addClass("flipped");
			$(this).next().children().show();
		}
	});
	// 티켓 예약 변경
	$("#content.mypage>.body>.list").on("click", ".reservation>button.coupon", function(){
	    $.popup("reserve_coupon", $(this).data());
	});

    // 예약 더 불러오기
    $(".more.reservation").click(function() {

        var page = $(this).data('page');
        var type = 'current';

        $.ajax({
            url: '/user/LoadReservations',
            type: 'GET',
            data: {type: type, page: page+1},
            success: $.proxy(function(res) {
                res = $.parseJSON(res);

                var page = $(this).data('page');
                $(this).data('page', page + 1);
                var el = new EJS({url: '/template/Reservation.ejs'}).render({
                    reservations: res.data.reservations,
                    user_id: '1520484',
                    type: 'current'
                });
                
                $(el).insertBefore(this);
                if(res.meta.page * res.meta.per_page >= res.meta.total)
                    $(this).remove();
            }, this)
        });
    });
});
</script>
