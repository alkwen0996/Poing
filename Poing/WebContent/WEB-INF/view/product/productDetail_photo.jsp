<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="body first last">
	<div class="section">
		<div class="title">포토 by Poing</div>
		<!-- 큰 이미지 -->
		<div class="slider PoingSlider_wrap">
			<div id="photo_slider" class="PoingSlider">
				<button class="empty i_wrap slice"
					data-type="poing.popup.photoReviewViewerPopup" data-index="0"
					data-image-selector="#photo_slider>.i_wrap>i"
					data-origin-selector="#content.detail.photo>.body>.section>.origin>a"
					tabindex="-1" style="top: 0px; left: -100%;">
					<i class="image" style="background-image:url(${dto.photo_img})"
						title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
				</button>
				<button class="empty i_wrap slice"
					data-type="poing.popup.photoReviewViewerPopup" data-index="1"
					data-image-selector="#photo_slider>.i_wrap>i"
					data-origin-selector="#content.detail.photo>.body>.section>.origin>a"
					tabindex="-1" style="top: 0px; left: -100%;">
					<i class="image" style="background-image:url(${dto.editer_img})"
						title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
				</button>

			</div>
			<span class="prev i_wrap"><i class="icon slider prev"></i></span> <span
				class="next i_wrap"><i class="icon slider next"></i></span>
		</div>
		<div class="origin">
			<a href="" target="_blank" data-index="0" style="display: none;"></a>
			<a href="" target="_blank" data-index="1" style="display: none;"></a>
			<a href="" target="_blank" data-index="2" style=""></a> <a href=""
				target="_blank" data-index="3" style="display: none"></a> <a href=""
				target="_blank" data-index="4" style="display: none"></a> <a href=""
				target="_blank" data-index="5" style="display: none"></a> <a href=""
				target="_blank" data-index="6" style="display: none"></a> <a href=""
				target="_blank" data-index="7" style="display: none"></a> <a href=""
				target="_blank" data-index="8" style="display: none"></a> <a href=""
				target="_blank" data-index="9" style="display: none"></a> <a href=""
				target="_blank" data-index="10" style="display: none"></a> <a
				href="" target="_blank" data-index="11" style="display: none"></a>
		</div>
		<div class="count">
			<span>3</span> / 12
		</div>
		<!-- 이미지 아래 작은 이미지 -->
		<div class="nav_wrap">
			<div class="nav">
				<div class="slice" style="left: 0px;">
					<div class="i_wrap" data-index="0">
						<i class="image" style="background-image:url(${dto.photo_img})"
							title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
					</div>
					<div class="i_wrap" data-index="1">
						<i class="image" style="background-image:url(${dto.editer_img})"
							title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
					</div>

				</div>
			</div>
			<span class="prev">&lt;</span> <span class="next">&gt;</span>
		</div>
	</div>
</div>