<%@page import="java.util.ArrayList"%>
<%@page import="poing.product.reserva_ticDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	ArrayList<reserva_ticDTO> list1 = (ArrayList<reserva_ticDTO>) request.getAttribute("list1");
%>

<div class="body empty coupon ">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=all"
			class="first selected">전체보기</a> <a
			href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=useable">사용
			예정 티켓</a> <a
			href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=unuseable">이미
			사용한 티켓</a>
	</div>

	<c:forEach items="${list1}" var="dto" varStatus="status">
		<table>
			<thead>
				<tr>
					<th class="info">상품명</th>
					<th class="reserve">예약 내역</th>
					<th class="status">상태</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td class="info"><a href="/product/detail/5468"> <i
							class="image" style="background-image:url(${dto.photo_img});"></i>
					</a>

						<div class="option">
							<a class="title" href="/product/detail/5468"> <span>${dto.rest_name }</span>
							</a>
							<p class="valid_date">유효기간: ${dto.p_st_ed_date }</p>

							<span class="selected"> ${dto.op_name } </span>
						</div></td>
					<td class="reserve">
						<div class="date">${dto.c_date }</div>
						<div class="count">${dto.party_size }명</div>
					</td>
					<td class="status"><span class="">결제완료</span>
						<button class="jindong" data="${dto.reserva_tic_seq}">환불하기</button>
					</td>
				</tr>
			</tbody>
		</table>
	</c:forEach>
	<script>
$("button.jindong").click(function () {
	$.ajax({
		url: '/Poing/product/cartDelete.do',
		method: 'post',
		dataType: 'JSON',
		data:{
			reserva_tic_seq : $(this).attr('data')
		},
		success: function (res) {
			if (res.status) {
			$.popup('/Poing/popup/deleteCart.do');
			setTimeout(location.reload.bind(location), 1000);
			
			}else{
				
			}
		}
	});
})
</script>

</div>


