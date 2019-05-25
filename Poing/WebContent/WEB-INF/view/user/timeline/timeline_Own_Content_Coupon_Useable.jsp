<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body empty coupon ">

	<div class="filter">
		<a href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=all" class="first">전체보기</a> <a
			href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=useable" class="selected">사용 예정 티켓</a> <a
			href="/Poing/timeline.do?id=${ param.id }&tab=coupon&type=unuseable">이미 사용한 티켓</a>
	</div>
	
	
	<div class="blank">
		<i class="icon wallet"></i> 사용한 티켓이 없습니다.
	</div>
</div>
