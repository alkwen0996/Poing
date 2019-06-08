<%@page import="poing.product.RefundTicketDTO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body empty coupon ">
	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=all&totalmoney=${param.totalmoney}"
			class="first selected">전체보기</a> <a
			href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=useable&totalmoney=${param.totalmoney}">사용
			예정 티켓</a> <a
			href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=unuseable&totalmoney=${param.totalmoney}">이미
			사용한 티켓</a>
	</div>
	<% 
	ArrayList<RefundTicketDTO> list = (ArrayList<RefundTicketDTO>) request.getAttribute("list1");
	Iterator<RefundTicketDTO> ir = list.iterator();
	while (ir.hasNext()) {
		RefundTicketDTO refundTicketDTO = (RefundTicketDTO) ir.next();
		System.out.println("refundTicketDTO.getOp_cnt: "+refundTicketDTO.getOp_cnt());
		System.out.println("refundTicketDTO.getP_dc_money: "+refundTicketDTO.getP_dc_money());
	}
	%>
	<table>
		<thead>
			<tr>
				<th class="info">상품명</th>
				<th class="reserve">예약 내역</th>
				<th class="status">상태</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list1}" var="dto" varStatus="status">
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
						<button class="refund" data1="${dto.reserva_tic_seq}"
							data2="${dto.op_cnt * dto.p_dc_money}" style="">환불하기</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script>
	$("button.refund").click(function () {
		$.ajax({
			url: '/Poing/product/cartDelete.do',
			method: 'post',
			dataType: 'JSON',
			data:{
				reserva_tic_seq : $(this).attr('data1'),
				totalmoney : $(this).attr('data2'),
				id :${param.id}
			},
			success: function (res) {
				if (res.status2) {
				$.popup('/Poing/popup/deleteCart.do');
				setTimeout(location.reload.bind(location), 1000);
				
				}else{
				}
			}
		});
	})
	</script>
</div>


