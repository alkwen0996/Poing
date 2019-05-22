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
	        포잉		
	</title>
</head>

<body class="vsc-initialized">
<!-- body wrap -->
<div id="wrap" class="">
	<!-- header -->
	<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>
	
	<div id="container" class="">
			<div id="content_wrap">
				<div class="section small_flipper main slider">
					<div class="title">카테고리별 검색</div>
					<div class="body slider">
						<div class="slider_wrap PoingSlider_wrap">
							<div class="slider PoingSlider">
								<div class="current slice" style="top: 0px; left: 0px;">
									<div class="element  large awards first ">
										<a href="/Poing/theme/hotPlace.do?seoul" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15471926035c38491bc1e84.png&quot;);">
											<div class="shading"></div>
											<div class="center">
												<div class="middle">
													<div class="title">인기 지역별</div>
												</div>
											</div>
										</a>


									</div>

									<div class="element  large awards  ">
										<a href="/banner/theme/10424" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15471925785c38490266d92.png&quot;);">
											<div class="shading"></div>

											<div class="center">
												<div class="middle">
													<div class="title">호텔별</div>
												</div>
											</div>
										</a>
									</div>
									<div class="element  large awards  ">
										<a href="/banner/theme/10428" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15471925265c3848ce51588.png&quot;);">
											<div class="shading"></div>

											<div class="center">
												<div class="middle">
													<div class="title">음식 종류별</div>
												</div>
											</div>
										</a>


									</div>
								</div>
							</div>
							<i class="icon nav prev"></i> <i class="icon nav next"></i>
						</div>
					</div>
				</div>
				<div class="section realtime_review main slider">
					<div class="title">실시간 리뷰</div>
					<div class="body slider">
						<a class="more" href="seoul/review">+ 전체보기</a>
						<div class="slider_wrap PoingSlider_wrap">
							<div class="slider PoingSlider">
								<div class="current slice" style="top: 0px; left: 0px;">
									<div class="element  main_review first ">
										<a href="/restaurant/detail/30748" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxNzAx/1484297155587893c36848b.jpeg&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">와이스타일 (서래마을점)</span> <span class="area">서래마을
													· 일식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/1503844"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/1503844">오홍석</a>
													</div>
													<div class="count">리뷰수 2, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span><span class="star odd "></span><span
																class="star even "></span><span class="star odd "></span><span
																class="star even "></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">1.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>솔직히 말하자면 돈 아깝습니다. 고기의 신선도가 떨어지는 느낌에 식사와 후식은
														이도저도 아닌 맛에 거의 남겼네요. 서비스가 친절하지도 않아요! </span> <a
														href="/restaurant/detail/30748?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/26839" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxNzA0/149119438158e1d20de5272.jpeg&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">붓처스컷 (판교점)</span> <span class="area">분당
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>다인힐 위크때 방문. 평타는 치지만 할인 안된 가격으로 올 가치는 사실 못느낌.</span> <a
														href="/restaurant/detail/26839?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/37932" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxODA1/15271304175b062931c2026.jpeg&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">스시진수</span> <span class="area">서울
													&gt; 서초구 · 일식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>런치에 방문. 가성비는 훌륭. 그러나 임팩트는 부족. 재방문은 글쎄?</span> <a
														href="/restaurant/detail/37932?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="slice" style="top: 0px; left: 100%;">
									<div class="element  main_review first ">
										<a href="/restaurant/detail/26680" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/5465a1ecd20c787a4700000c.png&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">로리스 더 프라임 립</span> <span class="area">강남역
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>친구가 사줘서 방문. 스테이크가 그렇게 특별하지 않았지만 의외로 파스타가 매우
														인상적. 하지만 가격은 사악</span> <a href="/restaurant/detail/26680?review"
														class="more">더보기 &gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/28299" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxOTAz/15524589155c88a4a3d95fa.png&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">보칼리노</span> <span class="area">광화문
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span class="star even "></span><span
																class="star odd "></span><span class="star even "></span><span
																class="star odd "></span><span class="star even "></span>
														</div>
														<div class="grade">2.5점</div>
													</div>
												</div>
												<div class="preview">
													<span>내가 갔을 때 주방에서 간을 안했는지 정말 맛없는 봉골레를 먹고 왔음. 평점을 보니
														재방문해서 다시 확인해봐야할듯</span> <a href="/restaurant/detail/28299?review"
														class="more">더보기 &gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/28402" class="image lazy"
											data-src="http://c2.poing.co.kr/PIMAGE-original/5666663ed820b93dfd0000eb.png">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">오레노</span> <span class="area">이태원
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span class="star even "></span>
														</div>
														<div class="grade">4.5점</div>
													</div>
												</div>
												<div class="preview">
													<span>난 여기 너무 맛있음. 같이 간 사람들도 항상 맛있다고 함. 전에 사라진 달팽이
														스프 그립다. 다시 돌아오길.</span> <a href="/restaurant/detail/28402?review"
														class="more">더보기 &gt;</a>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="slice" style="top: 0px; left: 100%;">
									<div class="element  main_review first ">
										<a href="/restaurant/detail/28405" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/566685d8d820b96aab000004.png&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">마렘마</span> <span class="area">한남동
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>분위기 좋고 맛도 있지만 가성비가 폭망... 남이 사주면 갑니다.</span> <a
														href="/restaurant/detail/28405?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/36532" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxNzEy/15139230305a3ca1d6d58a8.jpeg&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">볼피노 (도산점)</span> <span class="area">압구정
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>맛있다. 하지만 너무 비쌈. 특히 양이 진짜 너무함. 굳이 이 돈 내고
														다시가고싶진않다. 남이 사주면 갑니다.</span> <a
														href="/restaurant/detail/36532?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/2457" class="image lazy"
											data-src="http://c2.poing.co.kr/PIMAGE-original/MjAxNjEw/147668446758046ab3b026a.jpeg">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">마켓오 (도곡점)</span> <span class="area">서울
													&gt; 강남구 · 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>가까운 관계로 자주방문 맛도 평타는 치고 가격도 회원가입하면 굿!</span> <a
														href="/restaurant/detail/2457?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="slice" style="top: 0px; left: 100%;">
									<div class="element  main_review first ">
										<a href="/restaurant/detail/30168" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxNjEw/147765302758133223c8aba.jpeg&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">트라토리아 몰토</span> <span class="area">서울
													&gt; 마포구 · 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">3.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>난 이집이 왜 유명한지 모르겠음. 맛도 평범하고 결정적으로 상암에 멀리 사는
														나로서는 굳이 여기올 이유는 전혀 없음.</span> <a
														href="/restaurant/detail/30168?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/32908" class="image"
											style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-original/MjAxODEw/15391629885bbdc36c96962.png&quot;);">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">오스떼리아 로</span> <span class="area">샤로수길
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span class="star odd "></span><span
																class="star even "></span>
														</div>
														<div class="grade">4.0점</div>
													</div>
												</div>
												<div class="preview">
													<span>친구가 관악에 파스타 맛집이 있다고 해서 내가 무슨 파스타먹으러 관악을 가냐고
														욕했지만 그럴 가치가 있었다. 친구야 미안ㅋㅋㅋ사실 2번갔어</span> <a
														href="/restaurant/detail/32908?review" class="more">더보기
														&gt;</a>
												</div>
											</div>
										</div>

									</div>

									<div class="element  main_review  ">
										<a href="/restaurant/detail/1117" class="image lazy"
											data-src="http://c2.poing.co.kr/PIMAGE-original/MjAxODA1/15253344415aeac1a9bfd2b.jpeg">
											<div class="shading"></div>

											<div class="bottom">
												<span class="name">그라노</span> <span class="area">압구정
													· 양식</span>
											</div>
										</a>

										<div class="desc">
											<div class="author">
												<a href="/timeline/665001"><i class="profile"></i></a>
												<div class="info">
													<div class="name">
														<a href="/timeline/665001">김재우</a>
													</div>
													<div class="count">리뷰수 53, 팔로워 3</div>
													<div class="rating">
														<div class="stars">
															<span class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span
																class="star even active"></span><span
																class="star odd active"></span><span class="star even "></span><span
																class="star odd "></span><span class="star even "></span>
														</div>
														<div class="grade">3.5점</div>
													</div>
												</div>
												<div class="preview">
													<span>전설의 그라노. 그러나 테라13이나 스코파더가 더 나은듯. 그래도 한번쯤은
														가보는게?</span> <a href="/restaurant/detail/1117?review"
														class="more">더보기 &gt;</a>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
							<i class="icon nav prev"></i> <i class="icon nav next"></i>
						</div>
					</div>
				</div>
				<div class="section rectangle main slider">
					<div class="title">오래 기억에 남을, 포잉 어워즈</div>
					<div class="body slider">
						<div class="slider_wrap PoingSlider_wrap">
							<div class="slider PoingSlider">
								<div class="current slice" style="top: 0px; left: 0px;">
									<div class="element  large awards first ">
										<a href="/static/1424" class="image lazy"
											data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15471880625c38375ebd94e.png">
											<div class="shading"></div>

										</a>


									</div>

									<div class="element  large awards  ">
										<a href="/static/848" class="image lazy"
											data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15471880815c3837711eebb.png">
											<div class="shading"></div>

										</a>


									</div>

									<div class="element  large awards  ">
										<a href="/static/356" class="image lazy"
											data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15471880895c38377924693.png">
											<div class="shading"></div>

										</a>


									</div>
								</div>
								<div class="slice" style="top: 0px; left: 100%;">
									<div class="element  large awards first ">
										<a href="https://www.poing.co.kr/notice?title=award"
											class="image lazy"
											data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15471880715c383767bacc6.png">
											<div class="shading"></div>

										</a>


									</div>
								</div>
							</div>
							<i class="icon nav prev"></i> <i class="icon nav next"></i>
						</div>
					</div>
				</div>

				<script>
	(function(){
	    function slider(wrap_selector) {
	        if($(wrap_selector).length > 0) {
	            var s = PoingSlider.Create({
	                'selector': wrap_selector+">.slider"
	            });
	            $(wrap_selector+">.nav.prev").on("click", function(){
	                if(s.getCurrentSliceIndex() > 0)
	                    s.slideToPrev();
	            });
	            $(wrap_selector+">.nav.next").on("click", function(){
	                if(s.getCurrentSliceIndex() < s.getSliceCount() -1)
	                    s.slideToNext();
	            });
	        }
	    };
	
	    slider(".section.coupon>.body>.slider_wrap");
	    slider(".section.awards>.body>.slider_wrap");
	    slider(".section.theme>.body>.slider_wrap");
	    slider(".section.mag>.body>.slider_wrap");
	    slider(".section.large_square>.body>.slider_wrap");
	    slider(".section.orient_rectangle>.body>.slider_wrap");
	    slider(".section.small_flipper>.body>.slider_wrap");
	    slider(".section.rectangle>.body>.slider_wrap");
	    slider(".section.realtime_review>.body>.slider_wrap");
	    slider(".section.squer>.body>.slider_wrap");
	})();
	
	</script>
			</div>
			content_wrap

		</div>
	
	<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
	
</div> <!-- wrap end -->

<jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>
</body>
</html>