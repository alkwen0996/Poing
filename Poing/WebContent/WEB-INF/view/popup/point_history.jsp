<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="point_history">
	<i class="icon popup_close" data-close></i>
	<div class="body">
		<div class="title">포잉 포인트</div>

		<p class="remain">
			<i class="icon point"></i> 잔여 포인트: <span>4,000P</span>
		</p>
		<table class="list">
			<thead>
				<tr>
					<th class="date">날짜</th>
					<th class="body">적립 / 사용 내역</th>
					<th class="point">포인트</th>
				</tr>
			</thead>
			<tbody>
				<tr data-index="0">
					<td>2019.5.17</td>
					<td>레벨 업 포인트 적립</td>
					<td class="point">1,000P</td>
				</tr>
				<tr data-index="1">
					<td>2019.4.29</td>
					<td>가입 축하 포인트 적립</td>
					<td class="point">3,000P</td>
				</tr>
			</tbody>
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
					'total_page':1, 
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
