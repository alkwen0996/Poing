<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="body promotion">
	<div class="section single promotion">
		<div class="title box">구매 전 반드시 확인하세요!</div>
	</div>
	<div class="section promotion ">
		<div class="title">메뉴정보</div>
		<div class="body">
			<ul>
				<p>Special Course (1인)</p>
				<p></p>
				<li>사시미 3종</li>
				<li>카이센 챠완무시</li>
				<li>로스트비프</li>
				<li>와규우니</li>
				<li>에비마요</li>
				<li>아부리셔스</li>
				<li>아라시루</li>
				<li>맛챠 크림브륄레 또는 아이스크림 (녹차/초코) 중 택 1</li>
				<p></p>
				<p>* 4인 예약 시 테이블당 일품 진로 or 화요 한병을 서비스로 제공드립니다.</p>
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">프로모션 이용 가능 시간</div>
		<div class="body">
			<ul>
				<li>날짜 : 2019. 03. 18 (월) ~ 2019. 05. 31 (금)</li>
				<li>시간 : 월-목 18:00~22:00 (L.O 21:00) / 금, 토 18:00~ 23:00 (L.O
					22:00)</li>
				<p></p>
				<p>*선택이 불가한 날짜는 만석, 대관, 매장 휴무일 등으로 예약이 불가능한 날입니다.</p>
				<p>*매주 일요일은 매장 휴무로 인해 예약이 불가능합니다.</p>
				<p></p>
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">안내사항</div>
		<div class="body">
			<ul>
				<li>최소 2인 이상 예약 가능한 상품입니다.</li>
				<li>4인 단위로 예약 시 테이블당 일품 진로 or 화요 한병을 서비스로 제공드립니다.</li>
				<li>6명 미만 예약 시 당일 3시간 전까지 예약 시 이용 가능합니다.</li>
				<li>6~10명 예약 시 최소 1일 전까지 예약 시 이용 가능합니다.</li>
				<li>10명 이상 예약 시 최소 2일 전까지 예약 시 이용 가능합니다.</li>
				<li>구매와 동시에 예약이 이루어지는 상품입니다.</li>
				<li>예약 가능한 수량이 한정되어 있으니 양해 부탁 드립니다.</li>
				<li>1월 1일 ~ 12월 31일까지 마스터 프리미엄 카드 등록 후 결제 시 레드포인트 2% 추가 적립 혜택이
					제공됩니다. 자세한 내용은 마스터 카드 홈페이지에서 확인하실 수 있습니다.</li>
				<p></p>
			</ul>
		</div>
	</div>
	<div class="section promotion ">
		<div class="title">사용방법</div>
		<div class="body">
			<ul>
				<li>예약 일시에 매장 방문 후, 예약자 성함을 말씀해주세요.</li>
				<li>티켓에 포함되지 않은 메뉴는 매장에서 추가로 결제하실 수 있으며, 추가 요금은 할인 혜택이 적용되지
					않습니다.</li>
				<p></p>
			</ul>
		</div>
	</div>
	<div class="section promotion single">
		<div class="title">취소 및 변경</div>
		<div class="body">
			<ul>
				<li>예약의 변경 및 취소 시기에 따라 수수료가 부과될 수 있습니다.</li>
				<li>환불 규정은 티켓 별로 상이하며, 구매 페이지 내 '다이닝 티켓 이용약관'에서 확인해주시기 바랍니다.</li>
				<li>환불 및 취소는 '마이페이지&gt;티켓' 또는 '마이페이지&gt;구매내역'에서 하실 수 있습니다.</li>
				<li>문의 사항이 있으신 경우 포잉 고객센터(02-564-1155)로 연락 주세요.</li>
				<p></p>
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
		<div class="title">
			메뉴<a class="menu" href="/product/detail/5432?menu">더보기&gt;</a>
		</div>
		<div class="body">
			<a class="i_wrap menu border_radius soft"
				href="/product/detail/5432?menu"> <i class="image"
				style="background-image:url(&quot;${dto.photo_img}&quot;)"></i>
			</a>
		</div>
	</div>
	<hr>

	<div class="section editor single">
		<div class="title">포잉 에디터의 평</div>
		<div class="body">
			<div class="editor_comment">
				<i class="image border_radius circle"
					style="background-image:url(${dto.editer_img});"></i>
				<div class="name">${dto.e_name }</div>
				<div class="comment">${dto.e_content }</div>
			</div>
			<a href="/restaurant/detail/37984" class="more">레스토랑 정보 더 자세히
				알아보기&gt;</a>
		</div>
		<!-- body -->
	</div>
</div>
<!-- body -->
