<%@page import="poing.member.MemberDTO"%>
<%@page import="poing.product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

	<link rel='stylesheet' type='text/css' href='<%= request.getContextPath() %>/css/poing.slider.css'>
	<style>
		<%@include file="/css/style.css" %>
		<%@include file="/css/poing.slider.css" %>
	</style>
	

	<script type="text/javascript" 
        src="<%= request.getContextPath() %>/js/jquery-3.4.1.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/js/main.js"></script>
	<script type="text/javascript"
		src="<%= request.getContextPath() %>/js/slider.js"></script>

	<meta charset="UTF-8">
	<title>
	        프로덕트		
	</title>
</head>
<%
	ProductDTO dto = (ProductDTO) request.getAttribute("dto");
	MemberDTO mdto = (MemberDTO)request.getSession().getAttribute("authUser");
	int member_num = 0;
	if(mdto==null) member_num = 0;
	else member_num = mdto.getM_no();
	
%>
<body>
	<div id="wrap" class="">
		<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>
		
		<div id="container">
		<div id="banner_wrap">
		
			<div id="banner" class="product">
				<div class="i_wrap background">
					<i class="image" style="width:100%;height:100%;background-image:url('http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png')"></i>
				</div>
				<div class="i_wrap blur background">
					<i class="image" style="width:100%;height:100%;background-image:url('http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png')"></i>
				</div>
				<div class="inner_wrap">
					<div class="inner">
						<div class="header">
			                <span class="name">${dto.rest_name }</span>
			                <span class="info">${dto.r_location }-${dto.r_type }</span>
							<button class="empty favorite " data-id="${dto.p_num}" tabindex="-1">
								<%
								if (dto.getPick()==1){
								%>
								찜하기<i class="icon heart large on"></i>
								<%
								}else {
								%>
								찜하기<i class="icon heart large"></i>
								<%}%>
							</button>
						</div>
						<div class="body">
							<div class="slider_wrap PoingSlider_wrap">
								<div id="slider" class="PoingSlider">
									<div class="i_wrap slice current" style="top: 0px; left: 0%;">
										<i class="image" data-index="0"
											style="background-image: url(${dto.photo_img})"
											title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
									</div>
									<div class="i_wrap slice" style="top: 0px; left: -100%;">
											<i class="image" data-index="1"
												style="background-image: url(${dto.editer_img})"
												title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
										</div>
									
								</div>
							</div>
							<div class="price">
								<div class="i_wrap ">
									<span class="main">할인</span><br> <span class="sub">
										OFF</span>
								</div>
								<span class="reduced">${dto.p_dc_money }</span><br> <span
									class="original">${dto.p_origin_money }</span>
							</div>
							<div id="left_time">
								남은시간 <span>9일 23:06:11</span>
							</div>
							<div class="dropbox">
								<div class="label">
									<span class="text">옵션을 선택해주세요.</span> <span class="i_wrap"><i
										class="icon arrow small red down"></i></span>
								</div>
								<ul class="items" style="display: none;">
									<li class="" data-id="${dto.p_num }" data-min="1" data-limit="100">
										<span class="option"><span>${dto.p_option }</span></span><span class="price">${dto.p_dc_money }</span>
									</li>
								</ul>
								
							</div>
							<ul class="selected">
								<li data-id="${dto.p_num }" data-min="1" data-limit="100"><span
									class="name">${dto.p_option }</span> <span
									class="price">${dto.p_dc_money }</span>
									<div class="count_box">
										<input id="jindong" type="text" value="2">
										<button type="button" class="increase">
											<i></i>
										</button>
										<button type="button" class="decrease">
											<i></i>
										</button>
									</div> <span class="total">${dto.p_dc_money }</span>
									<button type="button" class="delete"></button></li>
							</ul>
							<div class="summary">
								<span class="label">총 합계</span> <span class="value">${dto.p_dc_money }</span><span
									class="label"></span>
							</div>
						</div>
					</div>
				</div>
			</div><!-- banner -->
		
		</div><!-- banner_wrap -->
		
		<div id="content_wrap">
			<div id="content" class="detail info coupon">
				<ul class="tab">
					<li class="item selected">
						<a href="/Poing/product/detail.do?p_num=${param.p_num }&&type=detail">상세정보</a>
					</li>
					<li class="item">
						<a href="/Poing/product/detail/photo.do?p_num=${param.p_num }&&type=photo">포토</a>
					</li>
					<li class="item ">
						<a href="/Poing/product/detail/menu.do?p_num=${param.p_num }&&type=menu">메뉴</a>
					</li>
					<li class="item ">
						<a href="/Poing/product/detail/map.do?p_num=${param.p_num }&&type=menu">지도</a>
					</li>
					<li class="item ">
						<a href="/Poing/product/detail/qna.do?p_num=${param.p_num }&&type=qna">상품문의</a>
					</li>
				</ul>
				
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
								<li> 날짜 : 2019. 03. 18 (월) ~ 2019. 05. 31 (금)</li>
								<li> 시간 : 월-목 18:00~22:00 (L.O 21:00) / 금, 토 18:00~ 23:00 (L.O 22:00)</li>
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
								<li> 최소 2인 이상 예약 가능한 상품입니다.</li>
								<li> 4인 단위로 예약 시 테이블당 일품 진로 or 화요 한병을 서비스로 제공드립니다.</li>
								<li> 6명 미만 예약 시 당일 3시간 전까지 예약 시 이용 가능합니다.</li>
								<li> 6~10명 예약 시 최소 1일 전까지 예약 시 이용 가능합니다.</li>
								<li> 10명 이상 예약 시 최소 2일 전까지 예약 시 이용 가능합니다.</li>
								<li> 구매와 동시에 예약이 이루어지는 상품입니다.</li>
								<li> 예약 가능한 수량이 한정되어 있으니 양해 부탁 드립니다.</li>
								<li>1월 1일 ~ 12월 31일까지 마스터 프리미엄 카드 등록 후 결제 시 레드포인트 2% 추가 적립 혜택이 제공됩니다. 자세한 내용은 마스터 카드 홈페이지에서 확인하실 수 있습니다.</li>
								<p></p>
							</ul>
						</div>
					</div>
					<div class="section promotion ">
						<div class="title">사용방법</div>
						<div class="body">
							<ul>
								<li> 예약 일시에 매장 방문 후, 예약자 성함을 말씀해주세요.</li>
								<li> 티켓에 포함되지 않은 메뉴는 매장에서 추가로 결제하실 수 있으며, 추가 요금은 할인 혜택이 적용되지 않습니다.</li>
								<p></p>
							</ul>
						</div>
					</div>
					<div class="section promotion single">
						<div class="title">취소 및 변경</div>
						<div class="body">
						<ul>
							<li> 예약의 변경 및 취소 시기에 따라 수수료가 부과될 수 있습니다.</li>
							<li> 환불 규정은 티켓 별로 상이하며, 구매 페이지 내 '다이닝 티켓 이용약관'에서 확인해주시기 바랍니다.</li>
							<li> 환불 및 취소는 '마이페이지&gt;티켓' 또는 '마이페이지&gt;구매내역'에서 하실 수 있습니다.</li>
							<li> 문의 사항이 있으신 경우 포잉 고객센터(02-564-1155)로 연락 주세요.</li>
							<p></p>
						</ul>
						</div>
					</div>
				</div><!-- body promotion -->
		
				<div class="body">
				<div class="section single" style="width: initial">
					<div class="title">한줄 설명</div>
					<div class="body">
						${dto.e_content }
					</div>
				</div>
				<hr>
		
				<div class="section option single">
					<div class="title">옵션</div>
					<div class="body">
	                    <div class="">
							<span class="name ">${dto.p_option }</span>
							<span class="actual_price">${dto.p_origin_money }</span>
							<span class="price">${dto.p_dc_money }</span>
						</div>
	                    
					</div>
				</div>
				<hr>
				
				<div class="section menu single">
					<div class="title">메뉴<a class="menu" href="/product/detail/5432?menu">더보기&gt;</a></div>
					<div class="body">
						<a class="i_wrap menu border_radius soft" href="/product/detail/5432?menu">
							<i class="image" style="background-image:url(&quot;${dto.photo_img}&quot;)"></i>
						</a>
					</div>
				</div>
				<hr>
						
				<div class="section editor single">
					<div class="title">포잉 에디터의 평</div>
					<div class="body">
						<div class="editor_comment">
							<i class="image border_radius circle" style="background-image:url(${dto.editer_img});"></i>
							<div class="name">${dto.e_name }</div>
							<div class="comment">
								${dto.e_content }
							</div>
						</div>
						<a href="/restaurant/detail/37984" class="more">레스토랑 정보 더 자세히 알아보기&gt;</a>
					</div><!-- body -->
				</div>
			</div><!-- body -->
		
			</div><!-- content -->
		
			<div id="sidebar_wrap" class="detail">
				<button class="sidebar buy border_radius soft" data-id="5432" data-cart="true" tabindex="-1">바로 구매하기</button>
				<button class="sidebar addCart border_radius soft" tabindex="-1">장바구니 담기</button>

				<script>
				
		$(".empty favorite").click(function() {
			alert("fav click");
		});		
		
		$("#sidebar_wrap>.buy").click(function(){
			if(poing.account.checkLoginState()) {
				var url = "/Poing/popup/reserve_coupon.do?p_num=${param.p_num}";
				
				var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
				var options = [];

				if(selected.length === 0) {
					$.popup("/Poing/pick/popup/confirm.do", {'text': '구매하실 옵션을 선택해주세요.', 'alert':true});
					return;
				}
				for(var i=0; i<selected.length; ++i)
				{
					var op = selected.eq(i);
					options[i] = {
							id: op.data('id') , count: op.find(".count_box>input").val()
							};
					//alert( $.param(options[i]) );
					url += "&" + $.param(options[i]);
				}
				//?id=4&count=4&id=2&count=5				
				//alert( url )
				$.popup(url);

			}
		});
		///////////////////////////////////////////////////////////////////////////////////////////////////////
		$("#sidebar_wrap>.addCart").click(function(){
			if(poing.account.checkLoginState()) {
				var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
				var options = [];

				if(selected.length === 0) {
					$.popup("/Poing/popup/basket_no_confirm.do", {'text': '장바구니에 담을 옵션을 선택해주세요.', 'alert':true});
					return;
				}

				for(var i=0; i<selected.length; ++i)
				{
					var op = selected.eq(i);
					options[i] = {
							id: op.data('id'), count: op.find(".count_box>input").val()
							};
				}
				
			
				$.ajax({
					'url': "/Poing/popup/basket_confirm.do",
					'method': "POST",
					'dataType': "JSON",
					'data': {'options': options},
					'success':function(response) {
						if(response.status)
						{
                            ga('send', 'event', 'KPI', '[KPI]장바구니담기성공');
                            $.popup("confirm", {'text': '장바구니에 상품을 담았습니다.', 'left_btn':'쇼핑 계속하기', 'right_btn':'카트 보기'}, null, function(){
                                location.href="/Poing/product/productCart.do";
                            });
						} else {
                            if($.inArray(response.error.code, [1503]) > -1) alert(response.error.message);
                            else $.popup("confirm", {'text': response.error.message, 'alert':true});
                        }
					}
				});
			}
		});
	</script>
				<div id="recommend_coupon" class="sidebar">
				<div class="title">이 달의 추천 티켓</div>
				<ul class="list">
					<li class="item">
						<a class="i_wrap" href="/product/detail/4944">
							<i class="image border_radius soft" style="background-image:url(http://c2.poing.co.kr/MRI-original/MjAxOTAy/15498688985c611f62da01c.png)"></i>
						</a>
						<div class="desc">					
							<div class="name">라쿠치나</div>
							<div class="comment">29주년 기념 선셋 프로모션</div>
						</div>
					</li>
					<li class="item">
						<a class="i_wrap" href="/product/detail/5420">
							<i class="image border_radius soft" style="background-image:url(http://c2.poing.co.kr/MRI-original/MjAxOTAz/15528738755c8ef99368d99.png)"></i>
						</a>
						<div class="desc">					
							<div class="name">부아</div>
							<div class="comment">타이퀴진 마니아를 위한 태국 북부&amp;남부 음식</div>
						</div>
					</li>
				</ul>
					<a href="/seoul/product/list">티켓 더보기</a>
				</div>
			</div>
		</div><!-- content_wrap -->
		
		</div><!-- container -->
		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
	</div><!-- wrap end -->
	
</body>
</html>