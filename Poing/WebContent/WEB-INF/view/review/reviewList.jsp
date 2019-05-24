<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang = "ko">
<head>
	<meta charset="UTF-8">
	<title>리뷰</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/main.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/slider.js"></script>
	<style>
			<%@include file="/css/style.css" %>
	</style>
</head>
<body>
	<div id="wrap" class="">
		
		<jsp:include page="/WEB-INF/layout/header.jsp"/>
		
		<!-- container -->
		<div id="container" class="">
			<!-- 상단에 배너가 있는 레이아웃 -->
			<div id="banner_wrap"></div>
			<div id="content_wrap">
				<div id="content" class="review_feed">
					<div class="section write">
						<div class="title">리뷰 쓰기</div>
						<div class="body">
							<div class="search">
								<div class="title">레스토랑 검색</div>
								<div class="detail">
									<input id="review_search" type="text"
										class="border_radius soft" placeholder="리뷰를 작성할 매장을 검색하세요.">
									<i class="icon glass"></i>
									<ul id="review_auto_complete" class="border_radius soft">
										<li>
											<div class="name">검색 결과가 없습니다.</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="grade">
								<div class="title">별점</div>
								<div class="detail">
									<i class="icon star medium odd " data-id="review_grade"
										data-index="0" style="cursor: pointer"></i><i
										class="icon star medium even " data-id="review_grade"
										data-index="1" style="cursor: pointer"></i><i
										class="icon star medium odd " data-id="review_grade"
										data-index="2" style="cursor: pointer"></i><i
										class="icon star medium even " data-id="review_grade"
										data-index="3" style="cursor: pointer"></i><i
										class="icon star medium odd " data-id="review_grade"
										data-index="4" style="cursor: pointer"></i><i
										class="icon star medium even " data-id="review_grade"
										data-index="5" style="cursor: pointer"></i><i
										class="icon star medium odd " data-id="review_grade"
										data-index="6" style="cursor: pointer"></i><i
										class="icon star medium even " data-id="review_grade"
										data-index="7" style="cursor: pointer"></i><i
										class="icon star medium odd " data-id="review_grade"
										data-index="8" style="cursor: pointer"></i><i
										class="icon star medium even " data-id="review_grade"
										data-index="9" style="cursor: pointer"></i><span
										style="display: inline-block; vertical-align: super;"
										data-id="review_grade" data-grade="0"></span>
								</div>
							</div>
							<div class="text">
								<div class="title">리뷰</div>
								<div class="detail">
									<textarea id="review_text" class="border_radius soft"
										placeholder="매장에 대한 리뷰를 30자 이상 작성해주세요.
	매장과 관계없는 글, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제됩니다."></textarea>
									<div id="review_text_state" class="border_radius soft">평점을
										매겨주세요!</div>
									<i class="icon save"></i><span>저장됨</span>
								</div>
							</div>
							<div class="photo">
								<div class="title">사진 등록</div>
								<div class="detail">
									<button type="button" class="addPhoto"
										data-target="#reviewPhotoUpload" tabindex="-1">사진
										등록하기</button>
									<input id="reviewPhotoUpload" type="file" multiple="" hidden="">
									<span>사진 등록은 최대 20장까지 가능합니다.</span>

									<ul class="list ui-sortable"></ul>
								</div>
							</div>
							<button id="upload_review" class="border_radius soft"
								data-type="poing.reviews.upload"
								data-grade="$('span[data-id=review_grade]')" data-id=""
								data-text="$('#review_text')"
								data-photo="$('.section.write .photo ul.list>li')" tabindex="-1">리뷰
								올리기</button>
						</div>
					</div>

					<div class="section realtime">
						<div class="filter">
							<a href="?type=all" class="selected">모든 사용자</a> <a
								href="?type=follower" class="follower ">팔로잉</a>
						</div>
						<div class="title">실시간 리뷰</div>
						<div class="body review_wrap">
							<div class="review" data-id="193284" data-place="41800"
								data-place-name="부토">
								<a class="author" href="/timeline/643871"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/MjAxNzA3/1499996293596820856bc3c.jpeg&quot;);"></span>
									<div class="info">
										<p class="name">민덩</p>
										<p class="stat">129 리뷰, 32 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="643871" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/41800">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="41800"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">부토</p>
									<p class="info">한남동 · 한식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">3시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193284"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193284"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193284"
											data-index="2" style=""></i><i
											class="icon star medium even active" data-id="193284"
											data-index="3" style=""></i><i
											class="icon star medium odd active" data-id="193284"
											data-index="4" style=""></i><i class="icon star medium even "
											data-id="193284" data-index="5" style=""></i><i
											class="icon star medium odd " data-id="193284" data-index="6"
											style=""></i><i class="icon star medium even "
											data-id="193284" data-index="7" style=""></i><i
											class="icon star medium odd " data-id="193284" data-index="8"
											style=""></i><i class="icon star medium even "
											data-id="193284" data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193284" data-grade="50">2.5 / 다 괜찮은데 뭔가 조금
											아쉬워요!</span>
									</div>
									<div class="text" data-truncated="">식당들이 즐비한 한남동의 골목상권에
										위치한 곳으로, 낯설면서도 익숙한 듯한 맛의 한식기반 안주와 다양한 종류를 곁들일 수 있는 주점. 내부가 작은
										편인데다 술집이라는 특성상 회전율이 느린편이므로, 에약하고 방문하는걸 추천. 식사로도 무방할 요리들이 많았지만,
										2차로 간단하게 즐기러 오기에 더 좋을 분위기. 주문한 가지튀김(17.0_은 이곳의 대표 메뉴로, 오징어 먹물을
										이용한 까만 튀김반죽이 인상적이지만, 사실 맛은 평범. 오히려 아무런 맛이 나질 않아서, 의문만 들었던 요리.
										베지테리언 사시미와 같은 독특한 컨셉의 요리를 주문했으면 나았을까 싶은 아쉬움이 남아요. 이곳만의 개성 있는
										요리를 기대하고 간 사람으로써는 아쉬움이 많이 남아 재방문의사는 없지만, 한번쯤 가고 싶었던 곳이라 방문했다는
										것만으로도 만족. 하지만 굳이 지인들에게 추천할 것 같지는 않아요.</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193284" tabindex="-1">김수한님, jwjwjw님 외 12명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193284"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>14</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193284" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193284" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193284" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193284" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
							<div class="review" data-id="193280" data-place="36716"
								data-place-name="도마">
								<a class="author" href="/timeline/734855"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/579b4e97668a481428000015.jpg&quot;);"></span>
									<div class="info">
										<p class="name">이수미</p>
										<p class="stat">7 리뷰, 1 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="734855" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/36716">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="36716"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">도마</p>
									<p class="info">서울 &gt; 강남구 · 양식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">7시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193280"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193280"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193280"
											data-index="2" style=""></i><i
											class="icon star medium even active" data-id="193280"
											data-index="3" style=""></i><i
											class="icon star medium odd active" data-id="193280"
											data-index="4" style=""></i><i
											class="icon star medium even active" data-id="193280"
											data-index="5" style=""></i><i
											class="icon star medium odd active" data-id="193280"
											data-index="6" style=""></i><i class="icon star medium even "
											data-id="193280" data-index="7" style=""></i><i
											class="icon star medium odd " data-id="193280" data-index="8"
											style=""></i><i class="icon star medium even "
											data-id="193280" data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193280" data-grade="70">3.5 / 평균 이상! 한 번 쯤은
											다시 올 것 같아요.</span>
									</div>
									<div class="text" data-truncated="">
										첫번째로는 콜키지프리인점이 너무 좋았고<br> 요리도 분위기도 안정감있이 좋았다<br>
										직원분이 와인에 대해 많은 지식이있어 편했다<br> <br> 다만 단점을 꼽자면 스테이크가
										차카운 대이석접시나 도마에<br> 나오기때문에 고기가 금방식고 말랐다<br> 직원분이 먼저
										고기를 조금 더 따듯하게 해주겠다고 해서 센스^^
									</div>
									<div class="photo" data-id="193280">
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193280" data-index="0"
											data-image-selector=".photo[data-id=193280]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585554225ce5ab1e9b18b.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585554225ce5ab1e9b18b.jpeg&quot;); display: inline-block;"
												title="도마 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193280" data-index="1"
											data-image-selector=".photo[data-id=193280]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585554245ce5ab20b73d2.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585554245ce5ab20b73d2.jpeg&quot;); display: inline-block;"
												title="도마 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193280" data-index="2"
											data-image-selector=".photo[data-id=193280]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585554265ce5ab224af15.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585554265ce5ab224af15.jpeg&quot;); display: inline-block;"
												title="도마 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193280" data-index="3"
											data-image-selector=".photo[data-id=193280]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585554285ce5ab249d587.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585554285ce5ab249d587.jpeg&quot;); display: inline-block;"
												title="도마 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193280" data-index="4"
											data-image-selector=".photo[data-id=193280]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585554295ce5ab25bc910.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585554295ce5ab25bc910.jpeg&quot;); display: inline-block;"
												title="도마 유저리뷰 이미지"></i>
										</button>
									</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193280" tabindex="-1">이호진님, Ina Jung님 외 8명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193280"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>10</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193280" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193280" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193280" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193280" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
							<div class="review" data-id="193276" data-place="39472"
								data-place-name="파크 바 @ 르 메르디앙 서울">
								<a class="author" href="/timeline/734855"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/579b4e97668a481428000015.jpg&quot;);"></span>
									<div class="info">
										<p class="name">이수미</p>
										<p class="stat">7 리뷰, 1 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="734855" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/39472">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="39472"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">파크 바 @ 르 메르디앙 서울</p>
									<p class="info">강남역 · 양식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">7시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193276"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193276"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193276"
											data-index="2" style=""></i><i
											class="icon star medium even active" data-id="193276"
											data-index="3" style=""></i><i
											class="icon star medium odd active" data-id="193276"
											data-index="4" style=""></i><i
											class="icon star medium even active" data-id="193276"
											data-index="5" style=""></i><i
											class="icon star medium odd active" data-id="193276"
											data-index="6" style=""></i><i class="icon star medium even "
											data-id="193276" data-index="7" style=""></i><i
											class="icon star medium odd " data-id="193276" data-index="8"
											style=""></i><i class="icon star medium even "
											data-id="193276" data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193276" data-grade="70">3.5 / 평균 이상! 한 번 쯤은
											다시 올 것 같아요.</span>
									</div>
									<div class="text" data-truncated="">
										파크바의 와인마켓은 좋았다<br> 안주 가격이 조금 쎈편에 비해 맛은 많이 못따라갔지만,<br>
										피크닉나온느낌에 만족
									</div>
									<div class="photo" data-id="193276">
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193276" data-index="0"
											data-image-selector=".photo[data-id=193276]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585552115ce5aa4b43050.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585552115ce5aa4b43050.jpeg&quot;); display: inline-block;"
												title="파크 바 @ 르 메르디앙 서울 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193276" data-index="1"
											data-image-selector=".photo[data-id=193276]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585552125ce5aa4c7cb56.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585552125ce5aa4c7cb56.jpeg&quot;); display: inline-block;"
												title="파크 바 @ 르 메르디앙 서울 유저리뷰 이미지"></i>
										</button>
									</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193276" tabindex="-1">박수영님, jwjwjw님 외 7명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193276"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>9</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193276" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193276" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193276" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193276" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
							<div class="review" data-id="193272" data-place="13631"
								data-place-name="그라넘 다이닝 라운지">
								<a class="author" href="/timeline/734855"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/579b4e97668a481428000015.jpg&quot;);"></span>
									<div class="info">
										<p class="name">이수미</p>
										<p class="stat">7 리뷰, 1 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="734855" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/13631">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="13631"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">그라넘 다이닝 라운지</p>
									<p class="info">서울 &gt; 중구 · 양식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">7시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193272"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193272"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193272"
											data-index="2" style=""></i><i
											class="icon star medium even active" data-id="193272"
											data-index="3" style=""></i><i class="icon star medium odd "
											data-id="193272" data-index="4" style=""></i><i
											class="icon star medium even " data-id="193272"
											data-index="5" style=""></i><i class="icon star medium odd "
											data-id="193272" data-index="6" style=""></i><i
											class="icon star medium even " data-id="193272"
											data-index="7" style=""></i><i class="icon star medium odd "
											data-id="193272" data-index="8" style=""></i><i
											class="icon star medium even " data-id="193272"
											data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193272" data-grade="40">2.0 / 평균 이하! 이 정도
											레스토랑은 어디에나 있죠.</span>
									</div>
									<div class="text" data-truncated="">
										요즘은 개인카페의 애프터눈티 구성이 훨씬 더 매력있다<br> 호텔 애프터눈티들도 달달한 케이크들 위주로
										맞추지말고<br> 정말 애프터눈티처럼 스콘같이 베이커리 위주로 했으면 좋겠다<br> <br>
										호텔의 분위기를 느끼기에도 그라넘다이닝은 그닥..<br> 직원들도 단정하지못하고 호텔리어의 느낌
										전혀없다<br> <br> 애프터눈티보다는 직원들의 단정치못함에 더 놀람...
									</div>
									<div class="photo" data-id="193272">
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193272" data-index="0"
											data-image-selector=".photo[data-id=193272]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585551015ce5a9dd4df8e.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585551015ce5a9dd4df8e.jpeg&quot;); display: inline-block;"
												title="그라넘 다이닝 라운지 유저리뷰 이미지"></i>
										</button>
									</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193272" tabindex="-1">이무민님, 이호진님 외 10명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193272"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>12</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193272" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193272" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193272" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193272" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
							<div class="review" data-id="193268" data-place="39560"
								data-place-name="세야스시">
								<a class="author" href="/timeline/803940"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/MjAxNzAx/1485737417588e8dc9dd257.jpeg&quot;);"></span>
									<div class="info">
										<p class="name">dano</p>
										<p class="stat">343 리뷰, 59 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="803940" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/39560">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="39560"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">세야스시</p>
									<p class="info">경기 &gt; 화성시 · 일식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">11시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193268"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193268"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193268"
											data-index="2" style=""></i><i
											class="icon star medium even active" data-id="193268"
											data-index="3" style=""></i><i
											class="icon star medium odd active" data-id="193268"
											data-index="4" style=""></i><i
											class="icon star medium even active" data-id="193268"
											data-index="5" style=""></i><i
											class="icon star medium odd active" data-id="193268"
											data-index="6" style=""></i><i
											class="icon star medium even active" data-id="193268"
											data-index="7" style=""></i><i
											class="icon star medium odd active" data-id="193268"
											data-index="8" style=""></i><i
											class="icon star medium even active" data-id="193268"
											data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193268" data-grade="100">5.0 / 완벽 그 자체!
											환상적이에요.</span>
									</div>
									<div class="text" data-truncated="">
										zero defect. 무결점의 스시. 맛의 정점.<br> 그 어떤 수식도 아깝지 않은 곳.<br>
										<br>
									</div>
									<div class="photo" data-id="193268">
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="0"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425585ce578de9dc09.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425585ce578de9dc09.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="1"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425615ce578e198184.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425615ce578e198184.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="2"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425645ce578e444dd4.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425645ce578e444dd4.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="3"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425675ce578e73c931.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425675ce578e73c931.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="4"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425705ce578ea0277a.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425705ce578ea0277a.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="5"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425725ce578ed000eb.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425725ce578ed000eb.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
											<div class="more">+10</div>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="6"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425765ce578f0166ef.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425765ce578f0166ef.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="7"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425785ce578f294d59.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425785ce578f294d59.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="8"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425815ce578f519a1c.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425815ce578f519a1c.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="9"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425835ce578f7b3e2f.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425835ce578f7b3e2f.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="10"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425865ce578fa339b9.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425865ce578fa339b9.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="11"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425895ce578fd6ac1a.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425895ce578fd6ac1a.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="12"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425925ce57900dbb69.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425925ce57900dbb69.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="13"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425955ce57903e6ee1.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425955ce57903e6ee1.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap hide"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193268" data-index="14"
											data-image-selector=".photo[data-id=193268]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585425995ce57907666bf.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585425995ce57907666bf.jpeg&quot;); display: inline-block;"
												title="세야스시 유저리뷰 이미지"></i>
										</button>
									</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193268" tabindex="-1">박상혁님, 박수영님 외 10명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193268"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>12</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193268" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193268" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193268" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193268" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
							<div class="review" data-id="193264" data-place="27830"
								data-place-name="필동면옥">
								<a class="author" href="/timeline/803940"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/MjAxNzAx/1485737417588e8dc9dd257.jpeg&quot;);"></span>
									<div class="info">
										<p class="name">dano</p>
										<p class="stat">343 리뷰, 59 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="803940" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/27830">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="27830"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">필동면옥</p>
									<p class="info">서울 &gt; 중구 · 한식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">11시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193264"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193264"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193264"
											data-index="2" style=""></i><i class="icon star medium even "
											data-id="193264" data-index="3" style=""></i><i
											class="icon star medium odd " data-id="193264" data-index="4"
											style=""></i><i class="icon star medium even "
											data-id="193264" data-index="5" style=""></i><i
											class="icon star medium odd " data-id="193264" data-index="6"
											style=""></i><i class="icon star medium even "
											data-id="193264" data-index="7" style=""></i><i
											class="icon star medium odd " data-id="193264" data-index="8"
											style=""></i><i class="icon star medium even "
											data-id="193264" data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193264" data-grade="30">1.5 / 맛, 분위기,
											서비스...전체적으로 다 별로예요!</span>
									</div>
									<div class="text" data-truncated="
	 
	 ">
										제육 한접시, 물냉_<br> <br> 반접시 주문 불가의 마상 크게 받음.<br>
										혼자오는 어르신들은? 어쩌고?<br> 아니 그럼 퀄리티라도 관리 잘하던가 제육은 왜 이모냥이여-<br>
										냉면은 왜 군데군데 뭉쳐있어<br> <br> 주인분 카운터에서 주문서, 계산만 신경쓰지 말고<br>
										정신부터 차려야지- 왜 그러실까?<br> <a> ... 더 보기</a>
									</div>
									<div class="photo" data-id="193264">
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193264" data-index="0"
											data-image-selector=".photo[data-id=193264]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585423875ce57833d63d4.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585423875ce57833d63d4.jpeg&quot;); display: inline-block;"
												title="필동면옥 유저리뷰 이미지"></i>
										</button>
										<button class="empty i_wrap"
											data-type="poing.popup.photoReviewViewerPopup"
											data-id="193264" data-index="1"
											data-image-selector=".photo[data-id=193264]>button>i"
											tabindex="-1">
											<i class="image border_radius soft"
												data-origin="http://c5.poing.co.kr/original/MjAxOTA1/15585423915ce57837ef9f8.jpeg"
												style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/MjAxOTA1/15585423915ce57837ef9f8.jpeg&quot;); display: inline-block;"
												title="필동면옥 유저리뷰 이미지"></i>
										</button>
									</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193264" tabindex="-1">김복숭님, 이호진님 외 9명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193264"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>11</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193264" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193264" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193264" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193264" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
							<div class="review" data-id="193260" data-place="28347"
								data-place-name="소풍">
								<a class="author" href="/timeline/1517256"> <span
									class="thumbnail"
									style="display: inline-block; background-image: url(&quot;http://c1.poing.co.kr/original/images/common/default_profile_162.png&quot;);"></span>
									<div class="info">
										<p class="name">고지용</p>
										<p class="stat">2 리뷰, 3 팔로워</p>
									</div>
									<button class="follow " type="button"
										data-type="poing.user.follow" data-id="1517256" tabindex="-1">
										<i class="icon follow "></i>팔로우
									</button>
								</a> <a class="place" href="/restaurant/detail/28347">
									<button class="favorite " type="button"
										data-type="poing.restaurants.favorite" data-id="28347"
										tabindex="-1">
										<i class="icon heart small "></i>매장찜
									</button>
									<p class="name">소풍</p>
									<p class="info">압구정 · 한식</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">13시간 전</div>
									<div class="grade">
										<i class="icon star medium odd active" data-id="193260"
											data-index="0" style=""></i><i
											class="icon star medium even active" data-id="193260"
											data-index="1" style=""></i><i
											class="icon star medium odd active" data-id="193260"
											data-index="2" style=""></i><i
											class="icon star medium even active" data-id="193260"
											data-index="3" style=""></i><i
											class="icon star medium odd active" data-id="193260"
											data-index="4" style=""></i><i
											class="icon star medium even active" data-id="193260"
											data-index="5" style=""></i><i
											class="icon star medium odd active" data-id="193260"
											data-index="6" style=""></i><i
											class="icon star medium even active" data-id="193260"
											data-index="7" style=""></i><i class="icon star medium odd "
											data-id="193260" data-index="8" style=""></i><i
											class="icon star medium even " data-id="193260"
											data-index="9" style=""></i><span
											style="display: inline-block; vertical-align: super;"
											data-id="193260" data-grade="80">4.0 / 인상적이네요. 꼭 추천하고
											싶어요.</span>
									</div>
									<div class="text" data-truncated="">맛있는 소고기와 안주... 돈벌면
										소고기 사먹어야지!!</div>
									<button class="like_list"
										data-type="poing.reviews.actions.user.showLikers"
										data-id="193260" tabindex="-1">이호진님, 꼬르륵님 외 9명이
										좋아합니다.</button>
									<div class="action">
										<button class="like " type="button"
											data-type="poing.reviews.actions.user.like" data-id="193260"
											tabindex="-1">
											<i class="icon like "></i>
											<p>
												좋아요 <span>11</span>
											</p>
										</button>
										<button class="favorite " type="button"
											data-type="poing.reviews.actions.user.favorite"
											data-id="193260" tabindex="-1">
											<i class="icon heart small "></i>
											<p>
												찜하기 <span>0</span>
											</p>
										</button>
										<button class="comment" type="button"
											data-type="poing.reviews.actions.user.loadComments"
											data-id="193260" tabindex="-1">
											<i class="icon balloon"></i>
											<p>
												댓글 <span>0</span>
											</p>
										</button>
										<button class="share" type="button"
											data-type="poing.reviews.actions.share.dropdown"
											data-id="193260" tabindex="-1">
											<i class="icon share"></i>
											<p>공유</p>
											<ul class="list">
												<li data-type="poing.reviews.actions.share.facebook">페이스북
													공유</li>
												<li data-type="poing.reviews.actions.share.twitter">트위터
													공유</li>
											</ul>
										</button>
									</div>
								</div>
								<div class="comment_list"></div>
								<div class="write">
									<span class="thumbnail"
										style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
									<textarea data-id="193260" placeholder="댓글을 입력해주세요"></textarea>
								</div>
							</div>
						</div>

						<div id="review_pagination">
							<div class="page-list">
								<ul class="pagination" onselectstart="return false;">
									<li class="prevAll">&lt;&lt;</li>
									<li class="prev">&lt;</li>
									<li class="page active" data-page="1">1</li>
									<li class="page" data-page="2">2</li>
									<li class="page" data-page="3">3</li>
									<li class="page" data-page="4">4</li>
									<li class="page" data-page="5">5</li>
									<li class="page" data-page="6">6</li>
									<li class="page" data-page="7">7</li>
									<li class="page" data-page="8">8</li>
									<li class="page" data-page="9">9</li>
									<li class="page" data-page="10">10</li>
									<li class="next">&gt;</li>
									<li class="nextAll">&gt;&gt;</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div id="sidebar_wrap" class="review">
					<div id="best_review" class="sidebar">
						<div class="title">베스트 리뷰</div>
						<ul class="list">
							<li class="item"><a class="i_wrap" href="/timeline/621822">
									<i class="image border_radius circle"
									style="background-image: url(&quot;http://c4.poing.co.kr/MjAxNzEx/15104866525a08327c4540c.png&quot;); display: inline-block;"></i>
							</a>
								<div class="user">
									<div class="desc">
										<a href="/timeline/621822" class="name">강현</a><br> <a
											href="/restaurant/detail/12413" class="restaurant">피에르
											가니에르 서울</a>
									</div>
									<div class="grade">
										<i class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even "></i><span>4.5</span>
									</div>
								</div>
								<div class="comment">원래도 가성비 좋은 피에르 가니에르 런치이지만 포잉 프로모션 덕분에
									더욱 즐거운 식사시간이었네요. 해산물을 좋아해 바다로 이용했습니다(값도 더 저렴하고 ^ ^). 웰컴 디쉬는
									디자인과 당근 퓨레가 상큼하니...</div> <a
								href="/restaurant/detail/12413?review=25751" class="more">더보기</a>
							</li>
							<li class="item"><a class="i_wrap" href="/timeline/657461">
									<i class="image border_radius circle"
									style="background-image: url(&quot;http://c4.poing.co.kr/MjAxODA2/15287337435b1ea02fbb855.png&quot;); display: inline-block;"></i>
							</a>
								<div class="user">
									<div class="desc">
										<a href="/timeline/657461" class="name">매련</a><br> <a
											href="/restaurant/detail/10640" class="restaurant">더 파크뷰</a>
									</div>
									<div class="grade">
										<i class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><span>5.0</span>
									</div>
								</div>
								<div class="comment">평일 디너 2부에 가족끼리 창가자리에 앉아서 먹었어요 ~ 역시
									신라호텔은 로비장식이 정말 예뻐요. 일단 음식을 평해보자면 유명한 도삭 자장면은 쫄깃하긴 한데 기대만큼은
									아니었고, LA갈비랑 광어 연어회, 부...</div> <a
								href="/restaurant/detail/10640?review=22131" class="more">더보기</a>
							</li>
							<li class="item"><a class="i_wrap" href="/timeline/672641">
									<i class="image border_radius circle"
									style="background-image: url(&quot;http://c4.poing.co.kr/571c7c7e43320410880022ff.jpg&quot;); display: inline-block;"></i>
							</a>
								<div class="user">
									<div class="desc">
										<a href="/timeline/672641" class="name">일식마이쪙</a><br> <a
											href="/restaurant/detail/26801" class="restaurant">야마야
											(여의도점)</a>
									</div>
									<div class="grade">
										<i class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd active"></i><i
											class="icon star small even active"></i><i
											class="icon star small odd "></i><i
											class="icon star small even "></i><span>4.0</span>
									</div>
								</div>
								<div class="comment">일단 돈! 에 대한 문제는 차치하고서 이야기를 진행하고자 합니다.
									순전히 맛으로! (그 말인즉 가성비는 그다지 좋지 않다는 뜻입니다.)갓절임주먹밥, 명란계란말이, 명란 풍미 치킨
									가라아게, 유자 츄하이를 밤...</div> <a
								href="/restaurant/detail/26801?review=22087" class="more">더보기</a>
							</li>
						</ul>
						<a href="?best" class="more">베스트리뷰 더보기</a>
					</div><!-- best_review -->
				</div><!-- sidebar_wrap -->

<script>
	$(document).ready(function(){
	    new Pagination({'selector':'#review_pagination', 
	                    'current_page':1, 
	                    'per_page':10, 
	                    'total_page':7924, 
	                    'event':function(page) {
	                        var sep = {};
	                        if(location.search.substr(1).length > 0)
	                            $.each(location.search.substr(1).split("&"), function(key, value) {sep[value.split("=")[0]] = value.split("=")[1] });
	
	                        sep['pg'] = page;
	
	                        location.search = $.param(sep);
	                    } });
	
	    // 임시저장
	    poing.reviews.actions.temp.save($(".section.write"), 'seoul');
	    
	    // review focus / unfocus
	    var $photos = $(".section.write .photo ul.list");
	    $("#review_text")
	        .focus(function(){
	            $(".section.write").addClass('focus');
	        })
	        .blur(function(){
	            if(	$(this).val().length === 0 && // 리뷰 0자
	                $("#upload_review").data('id').length === 0 && // 선택된 레스토랑 없음
	                $photos.children().length == 0 ) // 업로드한 이미지 없음
	                   $(".section.write").removeClass('focus');
	    });
	
	    // review photo upload
	    $(".section.write .photo .addPhoto").mousedown(function() {
	        poing.reviews.addImage.call(this);
	    });
	    $photos
	        .sortable({
	            tolerance: 'pointer',
	            containment: $photos,
	            revert: true,
	            scroll: false,
	        })
	        .on("click", " .remove", function() {
	            $(this).parent().remove();
	        });
	    $("#reviewPhotoUpload").change(function() {
	        $(".section.write").addClass('focus');
	    });
	
	    // auto complete
	    $("#review_search").on("keyup", function(){
	        if( $(this).val().length > 0) {
	            $.ajax({'url': "/restaurant/ajaxSearch/"+encodeURIComponent($(this).val()),
	                    'type': "GET",
	                    'success': function(res) {
	                        res = $.parseJSON(res).data.ac_keywords;
	
	                        var list = $("#review_auto_complete");
	                        list.empty();
	
	                        if(res.length > 0) {
	                            for(var i=0; i<res.length && i<5; ++i) {
	                                var e = res[i];
	                                var li = $("<li>", {'data-id':e.id});
	                                li.append( $("<div>", {	'class':'name',
	                                                        'text':e.name }) );
	                                li.append( $("<div>", {	'class':'desc',
	                                                        'text':e.description }) );
	                                list.append(li);
	                            }
	                        } else {
	                            var li = $("<li>");
	                            li.append( $("<div>", {'text':'검색 결과가 없습니다.' }) );
	                            list.append(li);
	                        }
	                    }
	            });
	        } else {
	            var list = $("#review_auto_complete").empty();
	
	            var li = $("<li>");
	            li.append( $("<div>", {'text':'검색 결과가 없습니다.' }) );
	            list.append(li);
	        }
	    });
		$(".filter>a.follower").click(function(){
			return poing.account.checkLoginState();
		});
		// select restaurant
		$("#review_search").focus(function() {
			$("#review_auto_complete").show();
		});
		$("#review_search").blur(function(e) {
			$("#review_auto_complete").hide();
		});
		$("#review_auto_complete").on("mousedown", "li", function(e) {
			var id = $(this).data('id');
			id = id? id:'';
	
			$("#upload_review").data('id', id);
	
			$("#review_search").val($(this).find(".name").text());
			$("#review_text").focus();
		});
	
		// review grade
		var reviewGrade = -1;
		$("i.star[data-id=review_grade]").on("click", function()
		{
			if(!poing.account.checkLoginState())
			{
				$(this).blur();
				return;
			}
	
			var index = $(this).data("index");
			for(var i = 0; i <= index; i++)
				$("i.star[data-id=review_grade][data-index="+i+"]").addClass("active");
			for(var i = index+1; i <= 9; i++)
				$("i.star[data-id=review_grade][data-index="+i+"]").removeClass("active");
	
			reviewGrade = (index+1)*10;
			$("span[data-id=review_grade]").data("grade", reviewGrade);
			$("span[data-id=review_grade]").html(((index+1)/2).toFixed(1) + " / " + ratingText[index]);
	
			var text_length = $("#review_text").val().length;
			if(text_length < 30 && $photos.children().length == 0)
			{
				$("#review_text_state").css("background", "rgb(68,68,68)");
				$("#review_text_state").html(String(text_length)+"자를 쓰셨어요! 30자 이상을 쓰거나, 사진을 올려주세요!");
			}
			else
			{
				$("#review_text_state").css("background", "rgb(60,191,54)");
				$("#review_text_state").html("이제 리뷰를 올리실 수 있어요!");
			}
		});
		$("i.star[data-id=review_grade]").on("mouseover", function()
		{
			if(reviewGrade >= 0)
				return;
	
			var index = $(this).data("index");
			for(var i = 0; i <= index; i++)
				$("i.star[data-id=review_grade][data-index="+i+"]").addClass("active");
			for(var i = index+1; i <= 9; i++)
				$("i.star[data-id=review_grade][data-index="+i+"]").removeClass("active");
	
			$("span[data-id=review_grade]").html(((index+1)/2).toFixed(1) + " / " + ratingText[index]);
		});
		$("i.star[data-id=review_grade]").on("mouseout", function()
		{
			if(reviewGrade >= 0)
				return;
	
			for(var i = 0; i <= 9; i++)
				$("i.star[data-id=review_grade][data-index="+i+"]").removeClass("active");
	
			$("span[data-id=review_grade]").html("");
		});
		// review text
		$("#review_text").on("focus", function()
		{
			if(!poing.account.checkLoginState())
				$(this).blur();
		});
		$("#review_text").on("keydown keyup", function()
		{
			if(reviewGrade < 0)
				return;
	
			var text_length = $(this).val().length;
			if(text_length < 30 && $photos.children().length == 0)
			{
				$("#review_text_state").css("background", "rgb(68,68,68)");
				$("#review_text_state").html(String(text_length)+"자를 쓰셨어요! 30자 이상을 쓰거나, 사진을 올려주세요!");
			}
			else
			{
				$("#review_text_state").css("background", "rgb(60,191,54)");
				$("#review_text_state").html("이제 리뷰를 올리실 수 있어요!");
			}
		});
	});
</script>
			</div><!-- content_wrap end -->
		</div><!-- container end -->
		
		<!-- header -->
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"/>
	</div>
		<!-- wrap end -->
	<jsp:include page="/WEB-INF/layout/footer.jsp"/>
	
	<jsp:include page="/WEB-INF/layout/javascript/review.jsp"/>
</body>
</html>
