<%@page import="poing.product.PointHistoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  PointHistoryDTO phdto = (PointHistoryDTO)request.getAttribute("phdto");
	int rownum = phdto.getRownum();
	if(rownum % 5 == 0){
		rownum = rownum/5;
				}
	else if(rownum % 5 != 0){
		rownum = rownum/5 +1;
		};
	%>

<div id="point_history">
	<i class="icon popup_close" data-close></i>
	<div class="body">
		<div class="title">포잉 포인트</div>

		<p class="remain">
			<i class="icon point"></i> 잔여 포인트: <span>${authUser.rp_seq }</span>
		</p>
		<table class="list">
			<thead>
			
				<tr>
					<th class="date">날짜</th>
					<th class="body">적립 / 사용 내역</th>
					<th class="point">포인트</th>
				</tr>
			</thead>
			<c:forEach items="${list3}" var="dto" varStatus="status">
			<tbody>
				<tr data-index="0">
					<td>${dto.eventSysdate }</td>
					<td>${dto.useContent }</td>
					<td class="point">${dto.pointRecord }p</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>

		<div id="point_pages"></div>
		<i class="image"></i>
	</div>
</div>

<script>
(function(){
	new Pagination({'selector':'#point_pages', 
					'current_page':1,
					'per_page':5, 
					'total_page':<%=rownum%>, 
					'processActive': true,
					'event':function(page) {
						var elements = $("#point_history .list>tbody>tr").hide();
						var current = (page-1) * 5;
						for(var i=0;i<5;++i)
							elements.eq(current + i).show();
					} });
	$("#point_pages>.page-list>.pagination>li[data-page=1]").click();
})();
</script>
