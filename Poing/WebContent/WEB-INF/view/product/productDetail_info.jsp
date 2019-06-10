<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="body promotion">
	<div class="section single promotion">
		<div class="title box">구매 전 반드시 확인하세요!</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto2.tic_menu_info_title }</div>
		<div class="body">
			<ul>${dto2.tic_menu_info_content }</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto2.tic_validate_title }</div>
		<div class="body">
			<ul>${dto2.tic_validate_content }
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto2.ticg_title }</div>
		<div class="body">
			<ul>${dto2.ticg_content }
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto2.tic_cancel_change_title }</div>
		<div class="body">
			<ul>${dto2.tic_cancel_content }
			</ul>
		</div>
	</div>
	<div class="section promotion single">
		<div class="title">${dto2.tic_use_case_title }</div>
		<div class="body">
			<ul>${dto2.tic_use_case_content }
			</ul>
		</div>
	</div>
</div>
<!-- body promotion -->

<div class="body">
	<div class="section single" style="width: initial">
		<div class="title">한줄 설명</div>
		<div class="body">${dto.e_content }</div>
	</div>
	<hr>

	<div class="section option single">
		<div class="title">옵션</div>
		<div class="body">
			<div class="">
				<span class="name ">${dto.p_option }</span> <span
					class="actual_price">${dto.p_origin_money }</span> <span
					class="price">${dto.p_dc_money }</span>
			</div>
		</div>
	</div>
	<hr>
	<div class="section menu single">
				<div class="title">메뉴<a class="menu" href="/Poing/product/detail.do?p_num=${param.p_num }&tab=menu">더보기&gt;</a></div>
				<div class="body">
											
						<a class="i_wrap menu border_radius soft" href="/product/detail/3204?menu">
							<i class="image" style="background-image:url(${dto.photo_img})"></i>
						</a>
											
						
									 </div>
			</div>
			<hr>
			<div class="section editor single">
			<div class="title">포잉 에디터의 평</div>
			<div class="body">
									<div class="editor_comment">
						<i class="image border_radius circle" style="background-image:url(${dto.photo_img});"></i>
						<div class="name">${dto.e_name }</div>
						<div class="comment">${dto.e_content }</div>
					</div>
				
				<a href="/restaurant/detail/30748" class="more">레스토랑 정보 더 자세히 알아보기&gt;</a>
			</div>
		</div>
			
</div>

<!-- wrap end -->
