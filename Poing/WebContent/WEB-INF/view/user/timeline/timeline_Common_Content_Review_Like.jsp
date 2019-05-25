<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=review&type=write" class="">리뷰</a> 
		<a href="/Poing/timeline.do?id=${ param.id }&tab=review&type=like" class="selected">찜한 리뷰</a>
	</div>
</div>

<div class="body review list review_wrap">
	<div class="review" data-id="22214" data-place="27593"
		data-place-name="마이스윗">
		<a class="author" href="/timeline/672862"> <span
			class="thumbnail"
			style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/547dd4abd20c78319d00024f.jpg&quot;);"></span>
			<div class="info">
				<p class="name">이주영</p>
				<p class="stat">39 리뷰, 27 팔로워</p>
			</div>
			<button class="follow on" type="button"
				data-type="poing.user.follow" data-id="672862" tabindex="-1">
				<i class="icon follow on"></i>팔로우
			</button>
		</a> <a class="place" href="/restaurant/detail/27593">
			<button class="favorite " type="button"
				data-type="poing.restaurants.favorite" data-id="27593"
				tabindex="-1">
				<i class="icon heart small "></i>매장찜
			</button>
			<p class="name">마이스윗</p>
			<p class="info">이태원 · 이탈리아식</p>
		</a>
		<div class="body">
			<div class="time  loaded" style="display: block;">3년 전</div>
			<div class="grade">
				<i class="icon star medium odd active" data-id="22214"
					data-index="0" style=""></i><i
					class="icon star medium even active" data-id="22214"
					data-index="1" style=""></i><i class="icon star medium odd active"
					data-id="22214" data-index="2" style=""></i><i
					class="icon star medium even active" data-id="22214"
					data-index="3" style=""></i><i class="icon star medium odd active"
					data-id="22214" data-index="4" style=""></i><i
					class="icon star medium even active" data-id="22214"
					data-index="5" style=""></i><i class="icon star medium odd active"
					data-id="22214" data-index="6" style=""></i><i
					class="icon star medium even active" data-id="22214"
					data-index="7" style=""></i><i class="icon star medium odd active"
					data-id="22214" data-index="8" style=""></i><i
					class="icon star medium even active" data-id="22214"
					data-index="9" style=""></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="22214" data-grade="100">5.0 / 완벽 그 자체! 환상적이에요.</span>
			</div>
			<div class="text" data-truncated="">늦은시간 디저트랑 맥주 같이 먹기에 딱 좋은
				곳!! 디저트가게가 대부분 문 닫은 시간에 열려있어서 너무 좋았어요. 근데 맛있기까지해서 감동*-* 특히 시그니처
				디저트랑 맥주랑 같이 먹으니까 더더 맛있더라구요!! 단거 잘 못 먹는 사람(별로 없겠지만)보다 단거 완전 좋아하는
				사람한테 추천해용!!!</div>
			<div class="photo" data-id="22214">
				<button class="empty i_wrap"
					data-type="poing.popup.photoReviewViewerPopup" data-id="22214"
					data-index="0"
					data-image-selector=".photo[data-id=22214]>button>i" tabindex="-1">
					<i class="image border_radius soft"
						data-origin="http://14.63.213.63/57349606668a485d9b000063.jpg"
						style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/57349606668a485d9b000063.jpg&quot;); display: inline-block;"
						title="마이스윗 유저리뷰 이미지"></i>
				</button>
			</div>
			<button class="like_list"
				data-type="poing.reviews.actions.user.showLikers" data-id="22214"
				tabindex="-1">나희경님, 장해련님 외 29명이 좋아합니다.</button>
			<div class="action">
				<button class="like " type="button"
					data-type="poing.reviews.actions.user.like" data-id="22214"
					tabindex="-1">
					<i class="icon like "></i>
					<p>
						좋아요 <span>31</span>
					</p>
				</button>
				<button class="favorite on" type="button"
					data-type="poing.reviews.actions.user.favorite" data-id="22214"
					tabindex="-1">
					<i class="icon heart small on"></i>
					<p>
						찜하기 <span>1</span>
					</p>
				</button>
				<button class="comment" type="button"
					data-type="poing.reviews.actions.user.loadComments"
					data-id="22214" tabindex="-1">
					<i class="icon balloon"></i>
					<p>
						댓글 <span>2</span>
					</p>
				</button>
				<button class="share" type="button"
					data-type="poing.reviews.actions.share.dropdown" data-id="22214"
					tabindex="-1">
					<i class="icon share"></i>
					<p>공유</p>
					<ul class="list">
						<li data-type="poing.reviews.actions.share.facebook">페이스북 공유</li>
						<li data-type="poing.reviews.actions.share.twitter">트위터 공유</li>
					</ul>
				</button>
			</div>
		</div>
		<div class="comment_list">
			<div class="comment">
				<a class="thumbnail" href="/timeline/620996"
					style="display: block; background-image: url(&quot;http://c4.poing.co.kr/5714403a433204480c000043.jpg&quot;);"></a>
				<div class="author">
					<p class="time loaded" style="display: block;">3년 전</p>
					<a class="name" href="/timeline/620996">장해련</a>
					<p class="text">사진 느낌이 한결같이 넘나 좋은 것 ㅠㅠ</p>
				</div>
			</div>
		</div>
		<div class="write">
			<span class="thumbnail"
				style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
			<textarea data-id="22214" placeholder="댓글을 입력해주세요"></textarea>
		</div>
	</div>
</div>
<div class="body review list review_wrap">
	<div class="review" data-id="22212" data-place="28338"
		data-place-name="소셜 테이블">
		<a class="author" href="/timeline/672862"> <span
			class="thumbnail"
			style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/547dd4abd20c78319d00024f.jpg&quot;);"></span>
			<div class="info">
				<p class="name">이주영</p>
				<p class="stat">39 리뷰, 27 팔로워</p>
			</div>
			<button class="follow on" type="button"
				data-type="poing.user.follow" data-id="672862" tabindex="-1">
				<i class="icon follow on"></i>팔로우
			</button>
		</a> <a class="place" href="/restaurant/detail/28338">
			<button class="favorite " type="button"
				data-type="poing.restaurants.favorite" data-id="28338"
				tabindex="-1">
				<i class="icon heart small "></i>매장찜
			</button>
			<p class="name">소셜 테이블</p>
			<p class="info">경리단길 · 컨템퍼러리</p>
		</a>
		<div class="body">
			<div class="time  loaded" style="display: block;">3년 전</div>
			<div class="grade">
				<i class="icon star medium odd active" data-id="22212"
					data-index="0" style=""></i><i
					class="icon star medium even active" data-id="22212"
					data-index="1" style=""></i><i class="icon star medium odd active"
					data-id="22212" data-index="2" style=""></i><i
					class="icon star medium even active" data-id="22212"
					data-index="3" style=""></i><i class="icon star medium odd active"
					data-id="22212" data-index="4" style=""></i><i
					class="icon star medium even active" data-id="22212"
					data-index="5" style=""></i><i class="icon star medium odd active"
					data-id="22212" data-index="6" style=""></i><i
					class="icon star medium even active" data-id="22212"
					data-index="7" style=""></i><i class="icon star medium odd active"
					data-id="22212" data-index="8" style=""></i><i
					class="icon star medium even " data-id="22212" data-index="9"
					style=""></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="22212" data-grade="90">4.5 / 오랫동안 기억에 남을 만한 곳이에요.</span>
			</div>
			<div class="text" data-truncated="">2층으로 올라가는 예쁜 길을 따라 올라가서
				들어갔더니 넓고 (좀 어둡지만) 분위기 좋았어요:)! 처음 방문이라고하니 메뉴 설명도 상세히 해주셨구요. 타파스 3개
				정도에 그릴 하나 시켰더니 여자셋이서 양은 적당했어요!! 맥주도 종류가 꽤나 많아 선택해서 먹기 좋았구요. 금요일
				저녁이었는데도 생각보다 사람이 많지 않아서 여유롭고 기분좋게 식사할 수 있었습니다-! 아!! 음식은 다 맛났는데
				개인적으로 주키니튀김이 맥주안주로 좋았어용</div>
			<div class="photo" data-id="22212">
				<button class="empty i_wrap"
					data-type="poing.popup.photoReviewViewerPopup" data-id="22212"
					data-index="0"
					data-image-selector=".photo[data-id=22212]>button>i" tabindex="-1">
					<i class="image border_radius soft"
						data-origin="http://14.63.213.63/573492a2668a48590e0000a5.jpg"
						style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/573492a2668a48590e0000a5.jpg&quot;); display: inline-block;"
						title="소셜 테이블 유저리뷰 이미지"></i>
				</button>
			</div>
			<button class="like_list"
				data-type="poing.reviews.actions.user.showLikers" data-id="22212"
				tabindex="-1">장해련님, 나희경님 외 29명이 좋아합니다.</button>
			<div class="action">
				<button class="like " type="button"
					data-type="poing.reviews.actions.user.like" data-id="22212"
					tabindex="-1">
					<i class="icon like "></i>
					<p>
						좋아요 <span>31</span>
					</p>
				</button>
				<button class="favorite on" type="button"
					data-type="poing.reviews.actions.user.favorite" data-id="22212"
					tabindex="-1">
					<i class="icon heart small on"></i>
					<p>
						찜하기 <span>1</span>
					</p>
				</button>
				<button class="comment" type="button"
					data-type="poing.reviews.actions.user.loadComments"
					data-id="22212" tabindex="-1">
					<i class="icon balloon"></i>
					<p>
						댓글 <span>0</span>
					</p>
				</button>
				<button class="share" type="button"
					data-type="poing.reviews.actions.share.dropdown" data-id="22212"
					tabindex="-1">
					<i class="icon share"></i>
					<p>공유</p>
					<ul class="list">
						<li data-type="poing.reviews.actions.share.facebook">페이스북 공유</li>
						<li data-type="poing.reviews.actions.share.twitter">트위터 공유</li>
					</ul>
				</button>
			</div>
		</div>
		<div class="comment_list"></div>
		<div class="write">
			<span class="thumbnail"
				style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
			<textarea data-id="22212" placeholder="댓글을 입력해주세요"></textarea>
		</div>
	</div>
</div>
<div class="body review list review_wrap">
	<div class="review" data-id="22211" data-place="27588"
		data-place-name="로코스 바베큐">
		<a class="author" href="/timeline/672862"> <span
			class="thumbnail"
			style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/547dd4abd20c78319d00024f.jpg&quot;);"></span>
			<div class="info">
				<p class="name">이주영</p>
				<p class="stat">39 리뷰, 27 팔로워</p>
			</div>
			<button class="follow on" type="button"
				data-type="poing.user.follow" data-id="672862" tabindex="-1">
				<i class="icon follow on"></i>팔로우
			</button>
		</a> <a class="place" href="/restaurant/detail/27588">
			<button class="favorite " type="button"
				data-type="poing.restaurants.favorite" data-id="27588"
				tabindex="-1">
				<i class="icon heart small "></i>매장찜
			</button>
			<p class="name">로코스 바베큐</p>
			<p class="info">경리단길 · 펍/호프</p>
		</a>
		<div class="body">
			<div class="time  loaded" style="display: block;">3년 전</div>
			<div class="grade">
				<i class="icon star medium odd active" data-id="22211"
					data-index="0" style=""></i><i
					class="icon star medium even active" data-id="22211"
					data-index="1" style=""></i><i class="icon star medium odd active"
					data-id="22211" data-index="2" style=""></i><i
					class="icon star medium even active" data-id="22211"
					data-index="3" style=""></i><i class="icon star medium odd active"
					data-id="22211" data-index="4" style=""></i><i
					class="icon star medium even active" data-id="22211"
					data-index="5" style=""></i><i class="icon star medium odd active"
					data-id="22211" data-index="6" style=""></i><i
					class="icon star medium even active" data-id="22211"
					data-index="7" style=""></i><i class="icon star medium odd active"
					data-id="22211" data-index="8" style=""></i><i
					class="icon star medium even " data-id="22211" data-index="9"
					style=""></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="22211" data-grade="90">4.5 / 오랫동안 기억에 남을 만한 곳이에요.</span>
			</div>
			<div class="text" data-truncated="">예약하고 갔더니 룸으로 준비해주셔서 친구들끼리
				시간보낼 수 있어서 좋았어요:)! 생일이라고 서비스도 주시고, 시켰던 메뉴들도 맛났답니다!! 옥수수는 직접 잘라먹어야하는
				불편함이 조금 있었지만 그래도 나름 재밌고 맛있었어용 (미국맛이랄까..?)</div>
			<div class="photo" data-id="22211">
				<button class="empty i_wrap"
					data-type="poing.popup.photoReviewViewerPopup" data-id="22211"
					data-index="0"
					data-image-selector=".photo[data-id=22211]>button>i" tabindex="-1">
					<i class="image border_radius soft"
						data-origin="http://14.63.213.63/573490aa668a485d9b00003f.jpg"
						style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/573490aa668a485d9b00003f.jpg&quot;); display: inline-block;"
						title="로코스 바베큐 유저리뷰 이미지"></i>
				</button>
				<button class="empty i_wrap"
					data-type="poing.popup.photoReviewViewerPopup" data-id="22211"
					data-index="1"
					data-image-selector=".photo[data-id=22211]>button>i" tabindex="-1">
					<i class="image border_radius soft"
						data-origin="http://14.63.213.63/573490ae4332043d3700012d.jpg"
						style="background-image: url(&quot;http://c5.poing.co.kr/thumbnail/573490ae4332043d3700012d.jpg&quot;); display: inline-block;"
						title="로코스 바베큐 유저리뷰 이미지"></i>
				</button>
			</div>
			<button class="like_list"
				data-type="poing.reviews.actions.user.showLikers" data-id="22211"
				tabindex="-1">장해련님, 나희경님 외 29명이 좋아합니다.</button>
			<div class="action">
				<button class="like " type="button"
					data-type="poing.reviews.actions.user.like" data-id="22211"
					tabindex="-1">
					<i class="icon like "></i>
					<p>
						좋아요 <span>31</span>
					</p>
				</button>
				<button class="favorite on" type="button"
					data-type="poing.reviews.actions.user.favorite" data-id="22211"
					tabindex="-1">
					<i class="icon heart small on"></i>
					<p>
						찜하기 <span>1</span>
					</p>
				</button>
				<button class="comment" type="button"
					data-type="poing.reviews.actions.user.loadComments"
					data-id="22211" tabindex="-1">
					<i class="icon balloon"></i>
					<p>
						댓글 <span>4</span>
					</p>
				</button>
				<button class="share" type="button"
					data-type="poing.reviews.actions.share.dropdown" data-id="22211"
					tabindex="-1">
					<i class="icon share"></i>
					<p>공유</p>
					<ul class="list">
						<li data-type="poing.reviews.actions.share.facebook">페이스북 공유</li>
						<li data-type="poing.reviews.actions.share.twitter">트위터 공유</li>
					</ul>
				</button>
			</div>
		</div>
		<div class="comment_list">
			<div class="comment">
				<a class="thumbnail" href="/timeline/620996"
					style="display: block; background-image: url(&quot;http://c4.poing.co.kr/5714403a433204480c000043.jpg&quot;);"></a>
				<div class="author">
					<p class="time loaded" style="display: block;">3년 전</p>
					<a class="name" href="/timeline/620996">장해련</a>
					<p class="text">생일축하드려요 주영님 :)</p>
				</div>
			</div>
		</div>
		<div class="write">
			<span class="thumbnail"
				style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
			<textarea data-id="22211" placeholder="댓글을 입력해주세요"></textarea>
		</div>
	</div>
</div>
<div class="body review list review_wrap">
	<div class="review" data-id="163108" data-place="41332"
		data-place-name="하쿠시">
		<a class="author" href="/timeline/649971"> <span
			class="thumbnail"
			style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/MjAxODA4/15347395035b7a442f2de3b.jpeg&quot;);"></span>
			<div class="info">
				<p class="name">먹보</p>
				<p class="stat">221 리뷰, 336 팔로워</p>
			</div>
			<button class="follow on" type="button"
				data-type="poing.user.follow" data-id="649971" tabindex="-1">
				<i class="icon follow on"></i>팔로우
			</button>
		</a> <a class="place" href="/restaurant/detail/41332">
			<button class="favorite " type="button"
				data-type="poing.restaurants.favorite" data-id="41332"
				tabindex="-1">
				<i class="icon heart small "></i>매장찜
			</button>
			<p class="name">하쿠시</p>
			<p class="info">가로수길 · 주점</p>
		</a>
		<div class="body">
			<div class="time edited loaded" style="display: block;">6달 전</div>
			<div class="grade">
				<i class="icon star medium odd active" data-id="163108"
					data-index="0" style=""></i><i
					class="icon star medium even active" data-id="163108"
					data-index="1" style=""></i><i class="icon star medium odd active"
					data-id="163108" data-index="2" style=""></i><i
					class="icon star medium even active" data-id="163108"
					data-index="3" style=""></i><i class="icon star medium odd active"
					data-id="163108" data-index="4" style=""></i><i
					class="icon star medium even active" data-id="163108"
					data-index="5" style=""></i><i class="icon star medium odd active"
					data-id="163108" data-index="6" style=""></i><i
					class="icon star medium even " data-id="163108" data-index="7"
					style=""></i><i class="icon star medium odd " data-id="163108"
					data-index="8" style=""></i><i class="icon star medium even "
					data-id="163108" data-index="9" style=""></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="163108" data-grade="70">3.5 / 평균 이상! 한 번 쯤은 다시 올 것
						같아요.</span>
				</div>
				<div class="text"
					data-truncated="

가오픈때 방문하여 살작 엉성했을 수 있으니 한 6개월 쯤 지나면 다시 한번 가보고 싶다ㅎㅎ
">
					요즘 강남권 일대에 많이 생기고 있는 갓포요리 전문점인듯 한데 새로 생긴 가게라하여 한번 방문해보았다. <br>
					우선 골목 안쪽 지하에 위치하고 있어 입구가 찾기 쉽지 않았음.<br> 들어가니 기대보다 흥겨운? 분위기였다.
					음악소리도 크고. <br> <br> 사시미, 덴푸라, 생선구이, 와규 등 다양하게 주문해서 사케를
					곁들임. <br> 자신감 넘치는 셰프님과 친절한 서버분들이 있어 즐겁게 식사할 수 있었다.<br>
					아무래도<br> <br> 개인적인 아쉬움은 술 안주로 삼기엔 간과 flavor가 좀 약하다는 것과
					구성/포션 대비 가격대가 좀 있는 편이라는 것?<br> 대신 재료는 정말 좋은 것들 많이 쓰시는 것 같았다.<a>
						... 더 보기</a>
				</div>
				<button class="like_list"
					data-type="poing.reviews.actions.user.showLikers" data-id="163108"
					tabindex="-1">김수한님, 이성수님 외 14명이 좋아합니다.</button>
				<div class="action">
					<button class="like " type="button"
						data-type="poing.reviews.actions.user.like" data-id="163108"
						tabindex="-1">
						<i class="icon like "></i>
						<p>
							좋아요 <span>16</span>
						</p>
					</button>
					<button class="favorite on" type="button"
						data-type="poing.reviews.actions.user.favorite" data-id="163108"
						tabindex="-1">
						<i class="icon heart small on"></i>
						<p>
							찜하기 <span>2</span>
						</p>
					</button>
					<button class="comment" type="button"
						data-type="poing.reviews.actions.user.loadComments"
						data-id="163108" tabindex="-1">
						<i class="icon balloon"></i>
						<p>
							댓글 <span>0</span>
						</p>
					</button>
					<button class="share" type="button"
						data-type="poing.reviews.actions.share.dropdown" data-id="163108"
						tabindex="-1">
						<i class="icon share"></i>
						<p>공유</p>
						<ul class="list">
							<li data-type="poing.reviews.actions.share.facebook">페이스북 공유</li>
							<li data-type="poing.reviews.actions.share.twitter">트위터 공유</li>
						</ul>
					</button>
				</div>
			</div>
			<div class="comment_list"></div>
			<div class="write">
				<span class="thumbnail"
					style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
			<textarea data-id="163108" placeholder="댓글을 입력해주세요"></textarea>
		</div>
	</div>
</div>
<div class="body review list review_wrap">
	<div class="review" data-id="163124" data-place="39704"
		data-place-name="송하 한정식">
		<a class="author" href="/timeline/649971"> <span
			class="thumbnail"
			style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/MjAxODA4/15347395035b7a442f2de3b.jpeg&quot;);"></span>
			<div class="info">
				<p class="name">먹보</p>
				<p class="stat">221 리뷰, 336 팔로워</p>
			</div>
			<button class="follow on" type="button"
				data-type="poing.user.follow" data-id="649971" tabindex="-1">
				<i class="icon follow on"></i>팔로우
			</button>
		</a> <a class="place" href="/restaurant/detail/39704">
			<button class="favorite " type="button"
				data-type="poing.restaurants.favorite" data-id="39704"
				tabindex="-1">
				<i class="icon heart small "></i>매장찜
			</button>
			<p class="name">송하 한정식</p>
			<p class="info">조치원 · 한식</p>
		</a>
		<div class="body">
			<div class="time  loaded" style="display: block;">6달 전</div>
			<div class="grade">
				<i class="icon star medium odd active" data-id="163124"
					data-index="0" style=""></i><i
					class="icon star medium even active" data-id="163124"
					data-index="1" style=""></i><i class="icon star medium odd active"
					data-id="163124" data-index="2" style=""></i><i
					class="icon star medium even active" data-id="163124"
					data-index="3" style=""></i><i class="icon star medium odd active"
					data-id="163124" data-index="4" style=""></i><i
					class="icon star medium even active" data-id="163124"
					data-index="5" style=""></i><i class="icon star medium odd active"
					data-id="163124" data-index="6" style=""></i><i
					class="icon star medium even active" data-id="163124"
					data-index="7" style=""></i><i class="icon star medium odd "
					data-id="163124" data-index="8" style=""></i><i
					class="icon star medium even " data-id="163124" data-index="9"
					style=""></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="163124" data-grade="80">4.0 / 인상적이네요. 꼭 추천하고 싶어요.</span>
			</div>
			<div class="text" data-truncated="">정말 어디 구석에 먼지한톨 없이 완벽하게
				관리되는 식당 모습이 인상깊었네요. 에약이 워낙 많다보니 예약관리도 철저하게 하시는 것 같고... 주인 아주머니의
				깐깐함을 음식맛과 식당 전반에서 느낄 수 있었습니다. 민어 자체는 팔뚝만한 고기를 통째로 튀기듯 구워내어 살짝 오버쿡된
				느낌이 있었지만 밥 반찬으로 먹기엔 좋았습니다. 건강하게 집에서 만든듯한 느낌의 다양한 나물과 반찬들도 좋아요. 근처에서
				격식있는 식사장소나 든든한 한끼 원하실땐 추천합니다</div>
			<button class="like_list"
				data-type="poing.reviews.actions.user.showLikers" data-id="163124"
				tabindex="-1">Perambulating_cloud님, 꼬르륵님 외 1명이 좋아합니다.</button>
			<div class="action">
				<button class="like " type="button"
					data-type="poing.reviews.actions.user.like" data-id="163124"
					tabindex="-1">
					<i class="icon like "></i>
					<p>
						좋아요 <span>3</span>
					</p>
				</button>
				<button class="favorite on" type="button"
					data-type="poing.reviews.actions.user.favorite" data-id="163124"
					tabindex="-1">
					<i class="icon heart small on"></i>
					<p>
						찜하기 <span>1</span>
					</p>
				</button>
				<button class="comment" type="button"
					data-type="poing.reviews.actions.user.loadComments"
					data-id="163124" tabindex="-1">
					<i class="icon balloon"></i>
					<p>
						댓글 <span>0</span>
					</p>
				</button>
				<button class="share" type="button"
					data-type="poing.reviews.actions.share.dropdown" data-id="163124"
					tabindex="-1">
					<i class="icon share"></i>
					<p>공유</p>
					<ul class="list">
						<li data-type="poing.reviews.actions.share.facebook">페이스북 공유</li>
						<li data-type="poing.reviews.actions.share.twitter">트위터 공유</li>
					</ul>
				</button>
			</div>
		</div>
		<div class="comment_list"></div>
		<div class="write">
			<span class="thumbnail"
				style="background-image: url('http://c1.poing.co.kr/original/images/common/default_profile_162.png')"></span>
			<textarea data-id="163124" placeholder="댓글을 입력해주세요"></textarea>
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
			<li class="next">&gt;</li>
			<li class="nextAll">&gt;&gt;</li>
		</ul>
	</div>
</div>
