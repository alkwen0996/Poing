<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body first">
	<div class="title">리뷰 쓰기</div>
	<ul class="list">
		<li class="item grade">
			<div class="name">별점</div>
			<div class="detail">
				<i class="icon star medium odd " data-id="review_grade"
					data-index="0" style="cursor: pointer"></i><i
					class="icon star medium even " data-id="review_grade"
					data-index="1" style="cursor: pointer"></i><i
					class="icon star medium odd " data-id="review_grade" data-index="2"
					style="cursor: pointer"></i><i class="icon star medium even "
					data-id="review_grade" data-index="3" style="cursor: pointer"></i><i
					class="icon star medium odd " data-id="review_grade" data-index="4"
					style="cursor: pointer"></i><i class="icon star medium even "
					data-id="review_grade" data-index="5" style="cursor: pointer"></i><i
					class="icon star medium odd " data-id="review_grade" data-index="6"
					style="cursor: pointer"></i><i class="icon star medium even "
					data-id="review_grade" data-index="7" style="cursor: pointer"></i><i
					class="icon star medium odd " data-id="review_grade" data-index="8"
					style="cursor: pointer"></i><i class="icon star medium even "
					data-id="review_grade" data-index="9" style="cursor: pointer"></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="review_grade" data-grade="0"></span>
			</div>
		</li>
		<li class="item text">
			<div class="name">리뷰</div>
			<div class="detail">
				<textarea id="review_text" class="border_radius soft"
					placeholder="매장에 대한 리뷰를 30자 이상 작성해주세요. 
					매장과 관계없는 글, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제됩니다."></textarea>
				<div id="review_text_state" class="border_radius soft">평점을
					매겨주세요!</div>
				<i class="icon save"></i><span>저장됨</span>
			</div>
		</li>
		<li class="item photo">
			<div class="name">사진 등록</div>
			<div class="detail">
				<button type="button" class="addPhoto"
					data-target="#reviewPhotoUpload" tabindex="-1">사진 등록하기</button>
				<input id="reviewPhotoUpload" type="file" multiple="" hidden="">
				<span>사진 등록은 최대 20장까지 가능합니다.</span>

				<ul class="list ui-sortable"></ul>
			</div>
		</li>
	</ul>
</div>
<div class="body review write">
	<button class="border_radius soft" data-type="poing.reviews.upload"
		data-id="38304" data-grade="$('span[data-id=review_grade]')"
		data-text="$('#review_text')" data-photo="$('.item.photo ul.list>li')"
		tabindex="-1">리뷰 올리기</button>
</div>

<div class="sort_wrap">
	<span class="title">리뷰</span>
	<ul class="sort_list">
		<li class="item " data-item="최신순">최신순</li>
		<li class="item selected" data-item="인기순">인기순</li>
	</ul>
</div>
<div class="body review list review_wrap ">
	<div class="review" data-id="193936" data-place="38304"
		data-place-name="구전동화">
		<a class="author" href="/timeline/991400"> <span class="thumbnail"
			style="display: inline-block; background-image: url(&quot;http://c4.poing.co.kr/MjAxOTAx/15489037665c52655662df1.jpeg&quot;);"></span>
			<div class="info">
				<p class="name">떠우</p>
				<p class="stat">5 리뷰, 3 팔로워</p>
			</div>
			<button class="follow " type="button" data-type="poing.user.follow"
				data-id="991400" tabindex="-1">
				<i class="icon follow "></i>팔로우
			</button>
		</a>
		<div class="body">
			<div class="time  loaded" style="display: block;">6일 전</div>
			<div class="grade">
				<i class="icon star medium odd active" data-id="193936"
					data-index="0" style=""></i><i class="icon star medium even active"
					data-id="193936" data-index="1" style=""></i><i
					class="icon star medium odd active" data-id="193936" data-index="2"
					style=""></i><i class="icon star medium even active"
					data-id="193936" data-index="3" style=""></i><i
					class="icon star medium odd active" data-id="193936" data-index="4"
					style=""></i><i class="icon star medium even active"
					data-id="193936" data-index="5" style=""></i><i
					class="icon star medium odd active" data-id="193936" data-index="6"
					style=""></i><i class="icon star medium even active"
					data-id="193936" data-index="7" style=""></i><i
					class="icon star medium odd active" data-id="193936" data-index="8"
					style=""></i><i class="icon star medium even " data-id="193936"
					data-index="9" style=""></i><span
					style="display: inline-block; vertical-align: super;"
					data-id="193936" data-grade="90">4.5 / 오랫동안 기억에 남을 만한 곳이에요.</span>
			</div>
			<div class="text" data-truncated="">양은 적지만 적당한 가격과 구성 너무 좋습니다.
				동화갈비도 가봐야 겠어요.</div>
			<button class="like_list"
				data-type="poing.reviews.actions.user.showLikers" data-id="193936"
				tabindex="-1">김수한님, 정시완님 외 14명이 좋아합니다.</button>
			<div class="action">
				<button class="like " type="button"
					data-type="poing.reviews.actions.user.like" data-id="193936"
					tabindex="-1">
					<i class="icon like "></i>
					<p>
						좋아요 <span>16</span>
					</p>
				</button>
				<button class="favorite " type="button"
					data-type="poing.reviews.actions.user.favorite" data-id="193936"
					tabindex="-1">
					<i class="icon heart small "></i>
					<p>
						찜하기 <span>0</span>
					</p>
				</button>
				<button class="comment" type="button"
					data-type="poing.reviews.actions.user.loadComments"
					data-id="193936" tabindex="-1">
					<i class="icon balloon"></i>
					<p>
						댓글 <span>0</span>
					</p>
				</button>
				<button class="share" type="button"
					data-type="poing.reviews.actions.share.dropdown" data-id="193936"
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
			<textarea data-id="193936" placeholder="댓글을 입력해주세요"></textarea>
		</div>
	</div>

</div>
<c:forEach var="dto" items="${list }" varStatus="status">
	<div class="body review_wrap">
		<div class="review" data-id="${dto.rev_no }"
			data-place="${dto.rest_no }" data-place-name="${dto.rest_name }">
			<a class="author" href="/Poing/timeline.do?id=${dto.m_no }"> <span
				class="thumbnail"
				style="display: inline-block; background-image: url(&quot;${realPath}${ dto.m_img ne null ? dto.m_img : application.getAttribute("baseimg") }&quot;);"></span>
				<div class="info">
					<p class="name">${dto.m_name }</p>
					<p class="stat">${ dto.m_revcnt }리뷰, ${ dto.m_ercnt } 팔로워</p>
				</div> <c:if test="${ authUser.m_no ne dto.m_no }">
					<button class="follow ${ dto.amIfollow?'on':' '}" type="button"
						data-type="poing.user.follow" data-id="${ dto.m_no }"
						tabindex="-1">
						<i class="icon follow ${ dto.amIfollow?'on':' '}"></i>팔로우
					</button>
				</c:if>
			</a> <a class="place"
				href="/Poing/rest/detail.do?rest_seq=${ dto.rest_no }">
				<button class="favorite " type="button"
					data-type="poing.restaurants.favorite" data-id="${ dto.rest_no }"
					tabindex="-1">
					<i class="icon heart small "></i>매장찜
				</button>
				<p class="name">${dto.rest_name}</p>
				<p class="info">${dto.rest_loc}</p>
			</a>
			<div class="body">
				<div class="time  loaded" style="display: block;">${dto.rev_wtime}</div>
				<div class="grade">

					<c:forEach varStatus="status" var="i" begin="1" end="10" step="1">
						<c:if test="${i <= dto.rev_starpoint / 10 }">
							<c:if test="${i%2 ne 0 }">
								<i class="icon star medium odd active" data-id=""
									data-index="${status.count }" style=""></i>
							</c:if>
							<c:if test="${i%2 eq 0 }">
								<i class="icon star medium even active" data-id=""
									data-index="${status.count }" style=""></i>
							</c:if>
						</c:if>
					</c:forEach>
					<span id="pointComment"
						style="display: inline-block; vertical-align: super;"
						data-id="${ dto.rev_no }" data-grade="${ dto.rev_starpoint }"></span>
					<script type="text/javascript">
											//$("#pointComment").text("${ dto.rev_starpoint/10 } / " + ratingText[${ dto.rev_starpoint/10 }]);
										</script>
				</div>
				<div class="text" data-truncated="">${dto.rev_content }</div>


				<div class="photo" data-id="${dto.rev_no }">
					<c:if test="${dto.images ne null}">
						<c:forEach items="${dto.images }" var="image_dto">
							<button class="empty i_wrap"
								data-type="poing.popup.photoReviewViewerPopup"
								data-id="${dto.rev_no }" data-index="0"
								data-image-selector=".photo[data-id=${dto.rev_no }]>button>i"
								tabindex="-1">
								<i class="image border_radius soft"
									data-origin="${ realPath }${ image_dto }"
									style="background-image: url(&quot;${ realPath }${ image_dto }&quot;); display: inline-block;"
									title="${ dto.rest_name } 유저리뷰 이미지"></i>
							</button>
						</c:forEach>
					</c:if>
				</div>

				<button class="like_list"
					data-type="poing.reviews.actions.user.showLikers"
					data-id="${dto.rev_no }" tabindex="-1">김수한님, jwjwjw님 외
					12명이 좋아합니다.</button>
				<div class="action">
					<button class="like ${ dto.amIlike?'on':' '}" type="button"
						data-type="poing.reviews.actions.user.like"
						data-id="${dto.rev_no }" tabindex="-1">
						<i class="icon like ${ dto.amIlike?'on':' '}"></i>
						<p>
							좋아요 <span>${dto.like_cnt }</span>
						</p>
					</button>
					<button class="favorite ${ dto.amIpick?'on':' '}" type="button"
						data-type="poing.reviews.actions.user.favorite"
						data-id="${dto.rev_no }" tabindex="-1">
						<i class="icon heart small ${ dto.amIpick?'on':' '}"></i>
						<p>
							찜하기 <span>${dto.pick_cnt }</span>
						</p>
					</button>
					<button class="comment" type="button"
						data-type="poing.reviews.actions.user.loadComments"
						data-id="${dto.rev_no }" tabindex="-1">
						<i class="icon balloon"></i>
						<p>
							댓글 <span>${dto.commend_cnt}</span>
						</p>
					</button>
					<c:if test="${ authUser.m_no eq dto.m_no }">
						<div class="article">
							<button class="edit"
								data-type="poing.reviews.actions.auth.modify2"
								data-id="${ dto.rev_no }" tabindex="-1">수정하기</button>
							<button class="delete"
								data-type="poing.reviews.actions.auth.remove"
								data-id="${ dto.rev_no }" tabindex="-1">삭제하기</button>
						</div>
					</c:if>
				</div>
			</div>
			<div class="comment_list ">
				<c:if test="${ dto.cdto ne null }">
					<div class="comment">
						<a class="thumbnail"
							style="background-image: url('${realPath}${ dto.cdto.m_img ne null ? dto.cdto.m_img : application.getAttribute("
							baseimg") }')"
											href="/Poing/timeline.do?id=${ dto.cdto.m_no }"></a>
						<div class="author">
							<p class="time loaded" style="display: block;">${ dto.cdto.rc_wtime }</p>
							<a class="name" href="/timeline/1517256">${ dto.cdto.m_name }</a>
							<p class="text">${ dto.cdto.rc_content }</p>
							<c:if test="${ dto.cdto.m_no eq authUser.m_no }">
								<div class="action">
									<button type="button" class="edit"
										data-type="poing.reviews.comment.modify"
										data-id="${ dto.cdto.rc_no }">수정하기</button>
									<button type="button" class="delete"
										data-type="poing.reviews.comment.remove"
										data-id="${ dto.cdto.rc_no }">삭제하기</button>
								</div>
							</c:if>
						</div>
					</div>
				</c:if>
			</div>
			<div class="write">
				<span class="thumbnail"
					style="background-image: url('${realPath}${ authUser.m_img ne null ? authUser.m_img : application.getAttribute("baseimg") }')"></span>
				<textarea data-id="${ dto.rev_no }" placeholder="댓글을 입력해주세요"></textarea>
			</div>
		</div>
	</div>
</c:forEach>




<div id="review_pagination">
	<div class="page-list">
		<ul class="pagination" onselectstart="return false;">
			<li class="prevAll">&lt;&lt;</li>
			<li class="prev">&lt;</li>
			<li class="page active" data-page="1">1</li>
			<li class="page" data-page="2">2</li>
			<li class="page" data-page="3">3</li>
			<li class="next">&gt;</li>
			<li class="nextAll">&gt;&gt;</li>
		</ul>
	</div>
</div>

