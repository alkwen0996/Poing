<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=restaurant&type=restaurant" class="selected">찜한 매장</a>
		<a href="/Poing/timeline.do?id=${ param.id }&tab=restaurant&type=coupon" class="">찜한 티켓</a>
	</div>

	<div class="list">

		<div class="element  medium first ">
			<a href="/restaurant/detail/13087" class="image"
				style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxOTA0/15565285705cc6bdbae63eb.png&quot;);">
				<div class="shading"></div>

				<div class="top">
					예약 95&nbsp; 리뷰 34&nbsp; 조회수 29169 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="13087" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<p class="coupon">티켓</p>
					<span class="name">도미닉</span> <span class="area">이태원 · 바</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even "></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.6점</div>
					</div>
					<div class="budget">5만원 미만 (2인 기준)</div>
					<div class="comment">이태원 꼼데가르송길에 위치한 세련된 분위기의 와인바 &amp; 다이닝</div>
					<ul class="detail">
						<li><a href="/restaurant/detail/13087?photo">사진 12장</a></li>
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="13087" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/13087?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium  ">
			<a href="/restaurant/detail/28143" class="image"
				style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/55ffc1b3d820b9308500000d.png&quot;);">
				<div class="shading"></div>

				<div class="top">
					예약 2&nbsp; 리뷰 2&nbsp; 조회수 19753 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="28143" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<span class="name">모모 바 @ 코트야드 바이 메리어트 서울 타임스퀘어</span> <span
						class="area">서울 &gt; 영등포구 · 바</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even "></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.5점</div>
					</div>
					<div class="comment">코트야드 바이 메리어트 서울 타임스퀘어의 바</div>
					<ul class="detail">
						<li><a href="/restaurant/detail/28143?photo">사진 13장</a></li>
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="28143" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/28143?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium  ">
			<a href="/restaurant/detail/35504" class="image"
				style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxNzEx/150993701059ffcf72b16ba.jpeg&quot;);">
				<div class="shading"></div>

				<div class="top">
					예약 1&nbsp; 리뷰 1&nbsp; 조회수 5552 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="35504" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<span class="name">요리안</span> <span class="area">인천 &gt; 중구
						· 술집</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even "></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.3점</div>
					</div>
					<div class="comment">인천에 위치한 술과 함께 즐기기 좋은 레스토랑</div>
					<ul class="detail">
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="35504" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/35504?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium first ">
			<a href="/restaurant/detail/31256" class="image"
				style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxNzAy/148766042958abe58dbd2df.jpeg&quot;);">
				<div class="shading"></div>

				<div class="top">
					예약 143&nbsp; 리뷰 27&nbsp; 조회수 26486 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="31256" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<span class="name">르쁠라</span> <span class="area">일산 · 프랑스식</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even "></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.7점</div>
					</div>
					<div class="budget">5만원 미만 (2인 기준)</div>
					<div class="comment">일산에 위치한 따뜻한 분위기의 프렌치 레스토랑</div>
					<ul class="detail">
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="31256" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/31256?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium  ">
			<a href="/restaurant/detail/28268" class="image"
				style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/563c1b50d820b917a000007b.png&quot;);">
				<div class="shading"></div>

				<div class="top">
					예약 35&nbsp; 리뷰 6&nbsp; 조회수 21742 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="28268" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<span class="name">파크 카페</span> <span class="area">여의도 ·
						컨템퍼러리</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even "></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.7점</div>
					</div>
					<div class="budget">5-10만원 (2인 기준)</div>
					<div class="comment">메리어트 이그제큐티브 아파트먼트 서울의 다이닝 레스토랑</div>
					<ul class="detail">
						<li><a href="/restaurant/detail/28268?photo">사진 13장</a></li>
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="28268" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/28268?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium  ">
			<a href="/restaurant/detail/30572" class="image"
				style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxOTA1/15577106295cd8c7259c62e.png&quot;);">
				<div class="shading"></div>

				<div class="top">
					예약 415&nbsp; 리뷰 51&nbsp; 조회수 42592 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="30572" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<p class="coupon">티켓</p>
					<span class="name">소브레메사</span> <span class="area">강남역 ·
						스페인식</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">4.1점</div>
					</div>
					<div class="budget">10-16만원 (2인 기준)</div>
					<div class="comment">신논현역 근처 스페인 요리를 코스로 선보이는 곳</div>
					<ul class="detail">
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="30572" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/30572?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium first ">
			<a href="/restaurant/detail/27726" class="image lazy"
				data-src="http://c2.poing.co.kr/PIMAGE-original/5524b147d20c786b40000396.png">
				<div class="shading"></div>

				<div class="top">
					예약 198&nbsp; 리뷰 27&nbsp; 조회수 45429 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="27726" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<span class="name">빈티지 1988</span> <span class="area">분당 ·
						이탈리아식</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.8점</div>
					</div>
					<div class="budget">5만원 미만 (2인 기준)</div>
					<div class="comment">분당에 위치한 빈티지한 감성이 묻어나는 이탈리안 레스토랑</div>
					<ul class="detail">
						<li><a href="/restaurant/detail/27726?photo">사진 8장</a></li>
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="27726" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/27726?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium  ">
			<a href="/restaurant/detail/29664" class="image lazy"
				data-src="http://c2.poing.co.kr/PIMAGE-original/MjAxNzA2/1496389594593117da51ce3.jpeg">
				<div class="shading"></div>

				<div class="top">
					예약 126&nbsp; 리뷰 38&nbsp; 조회수 29250 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="29664" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<p class="coupon">티켓</p>
					<span class="name">오만지아</span> <span class="area">한남동 ·
						이탈리아식</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even "></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">3.6점</div>
					</div>
					<div class="budget">10-16만원 (2인 기준)</div>
					<div class="comment">한남동에 위치한 휼륭한 화덕 요리를 만날 수 있는 이탈리안 레스토랑</div>
					<ul class="detail">
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="29664" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/29664?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>

		<div class="element  medium  ">
			<a href="/restaurant/detail/36548" class="image lazy"
				data-src="http://c2.poing.co.kr/PIMAGE-original/MjAxODEw/15403673845bd02418d4a37.png">
				<div class="shading"></div>

				<div class="top">
					예약 216&nbsp; 리뷰 34&nbsp; 조회수 12590 <br>
					<button class="on" data-type="poing.restaurants.favorite"
						data-id="36548" onclick="return false;" tabindex="-1">
						<i class="icon favorite on"></i>
					</button>
				</div>
				<div class="bottom">
					<p class="coupon">티켓</p>
					<span class="name">고스마</span> <span class="area">서촌 · 이탈리아식</span>
				</div>
			</a>

			<div class="desc">
				<div class="place_info">
					<div class="rating">
						<div class="stars">
							<span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd active"></span><span
								class="star even active"></span><span class="star odd "></span><span
								class="star even "></span>
						</div>
						<div class="grade">4.0점</div>
					</div>
					<div class="budget">5만원 미만 (2인 기준)</div>
					<div class="comment">서촌에 와인과 요리를 즐기기 좋은 이탈리안 레스토랑</div>
					<ul class="detail">
					</ul>
				</div>
			</div>

			<div class="btn">
				<button type="button" class="reserve"
					data-type="poing.reservation.add" data-id="36548" tabindex="-1">예약하기</button>
				<a href="/restaurant/detail/36548?review" class="review ">리뷰 쓰기</a>
			</div>
		</div>
	</div>
	<div id="restaurant_pagination">
		<div class="page-list">
			<ul class="pagination" onselectstart="return false;">
				<li class="prevAll">&lt;&lt;</li>
				<li class="prev">&lt;</li>
				<li class="page active" data-page="1">1</li>
				<li class="page" data-page="2">2</li>
				<li class="next">&gt;</li>
				<li class="nextAll">&gt;&gt;</li>
			</ul>
		</div>
	</div>
</div>