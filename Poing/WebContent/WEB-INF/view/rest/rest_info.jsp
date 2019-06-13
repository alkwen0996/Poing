<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body coupon promotion">
	<p class="title">
		<span class="label">티켓</span>포잉과 함께 맛있는 시간을 보내세요!
	</p>

	<div>
		<i class="image"
			style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg)"></i>
		<p class="desc">product가 있다면 나타나는 박스</p>
		<div class="list">
			<p class="label">옵션</p>
			<div class="">
				<span class="name">1. 옵션1</span> <span class="actual_price">가격</span>
				<span class="price">가격</span>
			</div>
			<div class="">
				<span class="name">2. 두번째 이야기</span> <span class="actual_price">79,000원</span>
				<span class="price">74,000원</span>
			</div>
		</div>

		<a href="/product/detail/4928" class="more">자세히 보러가기 &gt;</a>
	</div>
</div>

<div class="body  last">

	<div class="section single ">
		<div class="title red">Tip</div>
		<div class="body">
			- 선택이 불가한 날짜는 만석, 대관, 매장 휴무일 등으로 예약이 불가능한 날입니다.<br> - 매장 상황에 따라
			요청사항의 반영이 어려울 수도 있는 점 양해 부탁드립니다.<br> - 코르키지는 병당 2만원(와인), 3만원(양주,
			사케)입니다.
		</div>
	</div>
	<hr>
	<div class="section single ">
		<div class="title ">에디터의 평</div>
		<div class="body">
			<div class="editor_review">
				<i class="image"
					style="background-image: url(http://c2.poing.co.kr/EDITOR-PP/57613254668a4822dc000036.png)"></i>
				<div class="content">
					<span class="name">이지은</span><span class="desc">음식은 우리의 공감대,
						세계적인 공감대이다.</span>
					<p class="text">압구정 도산공원 근처 장어요리를 전문으로 하는 한정식 레스토랑, 만. '만'은 장어를
						뜻하는 한자로, 장어를 이용한 메뉴들이 이곳의 시그니쳐 메뉴이기는 하지만, 그 외 새우, 낙지 등 해산물을 활용한
						다양한 메뉴들도 준비되어 있다. 점심과 저녁 모두 여러 가지의 단품 메뉴와 코스 요리 중에 고를 수 있다. 식사 메뉴,
						서비스, 인테리어 모두 깔끔하고 정갈하며 큰 규모의 매장에 맞게 다양한 크기의 룸이 준비되어 있어 각종 모임에 방문하기
						좋다.</p>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="section ">
		<div class="title ">음식 종류</div>
		<div class="body">${dto.rest_food_type}</div>
	</div>
	<div class="section ">
		<div class="title ">예산</div>
		<div class="body">${dto.rest_budget_type}</div>
	</div>
	<hr>
	<div class="section ">
		<div class="title ">테이블</div>
		<div class="body">${dto.rest_table_type}</div>
	</div>
	<div class="section ">
		<div class="title ">부가 정보</div>
		<div class="body">
			${dto.rest_add_info}
		</div>
	</div>
	<hr>
	<div class="section ">
		<div class="title ">판매 주류</div>
		<div class="body">${dto.rest_alchol}</div>
	</div>
	<hr>
	<%
	ArrayList<String> his = (ArrayList<String>)request.getAttribute("reserveHis");
	String a="" , b="";
	if (his.size()==1) a=his.get(0);
	if (his.size()==2) {
		a=his.get(0);
		b=his.get(1);
	}
	%>
	<div class="section single reservation_histories">
		<div class="title ">최근 예약 히스토리</div>
		<div class="body">
			<%=a%><br>
			<%=b%>
		</div>
	</div>
	<hr>
	<div class="section single modify_info">
		<div class="title ">정보를 수정해주세요.</div>
		<div class="body"></div>


	</div>
</div>
