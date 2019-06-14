<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="body">${dto.tic_explain_content }</div>
	</div>
	<hr>

	<div class="section option single">
		<div class="title">옵션</div>
		<div class="body">
			<div class="">
			
			<c:forEach items="${pp }" var="op">
                           <span class="name ">${op.tic_op_name }</span> <span
					class="actual_price">${op.tic_original_price }</span> <span
					class="price">${op.tic_dc_price }</span>
                        </c:forEach>
				
			</div>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${menuRownum.menuRownum ne 0}">
	<hr>
			<div class="section menu single">
				<div class="title">
					메뉴<a class="menu"
						href="/Poing/product/detail.do?tic_seq=${param.tic_seq }&tab=menu">더보기&gt;</a>
				</div>
				<div class="body">
					<a class="i_wrap menu border_radius soft"
						href="/Poing/product/detail.do?tic_seq=${param.tic_seq }&tab=menu">
						<i class="image"
						style="background-image:url(/Poing${menuDto.tic_menu_images})"></i>
					</a>
				</div>
			</div>
	<hr>
		</c:when>
		
		<c:when test="${menuRownum.menuRownum eq 0}">
		</c:when>
		
	</c:choose>


			<div class="section editor single">
			<div class="title">포잉 에디터의 평</div>
			<div class="body">
									<div class="editor_comment">
						<i class="image border_radius circle" style="background-image:url('${dto.e_img}');"></i>
						<div class="name">${dto.e_name }</div>
						<div class="comment">${dto.er_content }</div>
					</div>
				
				<a href="/Poing/rest/detail.do?rest_seq=40424" class="more">레스토랑 정보 더 자세히 알아보기&gt;</a>
			</div>
		</div>
			
</div>

<!-- wrap end -->
