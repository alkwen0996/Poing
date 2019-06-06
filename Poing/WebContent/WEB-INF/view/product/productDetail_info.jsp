<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="body promotion">
	<div class="section single promotion">
		<div class="title box">구매 전 반드시 확인하세요!</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto.menu_info_title }</div>
		<div class="body">
			<ul>${dto.p_content_1 }</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto.p_use_time_title }</div>
		<div class="body">
			<ul>${dto.p_content_2 }
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto.advice_title }</div>
		<div class="body">
			<ul>${dto.p_content_3 }
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">${dto.cancel_change_title }</div>
		<div class="body">
			<ul>${dto.p_content_4 }
			</ul>
		</div>
	</div>
	<div class="section promotion single">
		<div class="title">${dto.use_case_title }</div>
		<div class="body">
			<ul>${dto.p_content_5 }
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
</div>
<!-- wrap end -->
