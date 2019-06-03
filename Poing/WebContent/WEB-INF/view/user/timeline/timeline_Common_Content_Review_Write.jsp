<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="body empty">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=review&type=write" class="selected">리뷰</a> 
		<a href="/Poing/timeline.do?id=${ param.id }&tab=review&type=like" class="">찜한 리뷰</a>
	</div>
</div>
<c:forEach var = "dto" items = "${review_list }" varStatus = "status">
<div class="body review list review_wrap">
	<div class="review" data-id="${dto.rev_no }" data-place="${dto.rest_no }"
		data-place-name="${dto.rest_name }">
		<a class="place" href="/Poing/rest/detail.do?rest_seq=${dto.rest_no }"> <span
			class="thumbnail"
			style="display: block; background-image: url(&quot;${realPath}rest_img&quot;);"></span>
			<button class="favorite " type="button"
				data-type="poing.restaurants.favorite" data-id="2345" tabindex="-1">
				<i class="icon heart small "></i>매장찜
			</button>
			<p class="name">${dto.rest_name }</p>
			<p class="info">${dto.rest_loc }</p>
		</a>
		<div class="body">
			<div class="time  loaded" style="display: block;">${dto.rev_wtime }</div>
			<div class="grade">
				
				<c:forEach varStatus = "status" var = "i" begin = "1" end = "10" step = "1">
					<c:if test="${i <= dto.rev_starpoint / 10 }">
						<c:if test = "${i%2 ne 0 }"><i class="icon star medium odd active" data-id="" data-index="${status.count }" style=""></i></c:if>
						<c:if test = "${i%2 eq 0 }"><i class="icon star medium even active" data-id="" data-index="${status.count }" style=""></i></c:if>
					</c:if>
				</c:forEach>
				<span id="pointComment" style="display:inline-block;vertical-align:super;" data-id="${ dto.rev_no }" data-grade="${ dto.rev_starpoint }"></span>
				<script type="text/javascript">
					//$("#pointComment").text("${ dto.rev_starpoint/10 } / " + ratingText[${ dto.rev_starpoint/10 }]);
				</script>
			</div>
			<div class="text" data-truncated="">
				${dto.rev_content }
			</div>
			<button class="like_list"
				data-type="poing.reviews.actions.user.showLikers" data-id="${dto.rev_no }"
				tabindex="-1">YN님, 투명인간님 외 16명이 좋아합니다.</button>
			<div class="action">
				<button class="like " type="button"
					data-type="poing.reviews.actions.user.like" data-id="${dto.rev_no }"
					tabindex="-1">
					<i class="icon like "></i>
					<p>
						좋아요 <span>${dto.like_cnt }</span>
					</p>
				</button>
				<button class="favorite " type="button"
					data-type="poing.reviews.actions.user.favorite" data-id="${dto.rev_no }"
					tabindex="-1">
					<i class="icon heart small "></i>
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
						style="background-image: url('${realPath}${ dto.cdto.m_img ne null ? dto.cdto.m_img : application.getAttribute("baseimg") }')"
						href="/Poing/timeline.do?id=${ dto.cdto.m_no }"></a>
					<div class="author">
						<p class="time loaded" style="display: block;">${ dto.cdto.rc_wtime }</p>
						<a class="name" href="/timeline/1517256">${ dto.cdto.m_name }</a>
						<p class="text">${ dto.cdto.rc_content }</p>
						<c:if test="${ dto.cdto.m_no eq authUser.m_no }">
						<div class="action">
							<button type="button" class="edit"
								data-type="poing.reviews.comment.modify" data-id="11840">수정하기</button>
							<button type="button" class="delete"
								data-type="poing.reviews.comment.remove" data-id="11840">삭제하기</button>
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
				<li class="next">&gt;</li>
				<li class="nextAll">&gt;&gt;</li>
			</ul>
		</div>
	</div>