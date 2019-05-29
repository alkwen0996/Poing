<%@page import="poing.product.ProductDTO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>jsp/sevlet class SIST168 (2019. 5. 23. - 오후 3:18:02)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="" />
<style>
	<style>
		<%@include file="/css/style.css" %>
		<%@include file="/css/poing.slider.css" %>
	</style>
	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.4.1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/slider.js"></script>
<meta charset="UTF-8">
</head>
	<%
	ProductDTO dto = (ProductDTO) request.getAttribute("dto");
%>

<body>
        <!-- body wrap -->
		<div id="wrap" class="">
		<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>
			<!-- header -->
			

			<!-- container -->
			<div id="container" class="">
				<!-- 상단에 배너가 있는 레이아웃 -->
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
                <span class="name">
                    ${dto.rest_name }				</span>
                <span class="info">
                    ${dto.r_location }-${dto.r_type }				</span>
				<button class="empty favorite " data-id="5432" tabindex="-1">
					찜하기<i class="icon heart large "></i>
				</button>
			</div>

			<div class="body">
				<div class="slider_wrap PoingSlider_wrap">
					<div id="slider" class="PoingSlider">
													<div class="i_wrap slice" style="top: 0px; left: -100%;">
                                <i class="image" data-index="0" style="background-image:url(${dto.photo_img})" title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
							</div>
													<div class="i_wrap slice" style="top: 0px; left: -100%;">
                                <i class="image" data-index="1" style="background-image:url(${dto.editer_img})" title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
							</div>
											
											</div>
				</div>
				<div class="price">
                    <div class="i_wrap "><span class="main">할인</span><br><span class="sub"> OFF</span></div>
					<span class="reduced">${dto.p_dc_money }</span><br>
					<span class="original">${dto.p_origin_money }</span>
				</div>
									<div id="left_time">남은시간 <span>7일 02:06:53</span></div>
								<div class="dropbox">
					<div class="label"><span class="text">옵션을 선택해주세요.</span><span class="i_wrap"><i class="icon arrow small red down"></i></span></div>
					<ul class="items" style="display: none;">
						                            <li class="" data-id="17684" data-min="2" data-limit="5">
								<span class="option"><span>${dto.p_option }</span></span><span class="price">${dto.p_dc_money }</span>
							</li>
						                            
											</ul>
				</div>
				<ul class="selected"></ul>
				<div class="summary">
					<span class="label">총 합계</span>
					<span class="value">일단보류...</span>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<div id="content_wrap">
	<div id="content" class="product detail qna">
	<ul class="tab">
	<li class="item ">
		<a href="/Poing/product/detail.do?p_num=${param.p_num }&&type=detail">상세정보</a>
	</li>
	<li class="item ">
		<a href="/Poing/product/detail/photo.do?p_num=${param.p_num }&&type=photo">포토</a>
	</li>
			<li class="item ">
			<a href="/Poing/product/detail/menu.do?p_num=${param.p_num }&&type=menu">메뉴</a>
		</li>
		<li class="item ">
		<a href="/Poing/product/detail/map.do?p_num=${param.p_num }&&type=map">지도</a>
	</li>
	<li class="item selected">
		<a href="/Poing/product/detail/qna.do?p_num=${param.p_num }&&type=qna">상품문의</a>
	</li>
</ul>
	<div class="body first">
		<div class="title">
			티켓에 대해 궁금한 점이 있으시다면 문의해주세요!
		</div>
		<div class="desc">
			-구매한 상품의 취소/반품은 마이페이지&gt;결제&gt;구매내역에서 신청 가능합니다.<br>
			-상품문의 게시판을 통해 취소나 환불, 반품 등은 처리되지 않습니다.<br>
			-상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배등의 글은 예고 없이 삭제됩니다.<br>
			-공개 게시판이니 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지 말아주세요.
		</div>
		<div class="input">
			<div class="subject">
				자세하게 써주세요
			</div>
			<textarea id="text" class="border_radius soft"></textarea>
		</div>
	</div>

	<div class="body send_qna">
		<button class="border_radius soft" tabindex="-1">
			상품 문의 등록하기
		</button>
	</div>

			<div class="body qna">
			<div class="title">질문&amp;답변</div>
			<div class="blank">
                <i class="icon inquiry"></i>
                일단 보류...
            </div>
		</div>
	</div>

<div id="sidebar_wrap" class="detail">
		<button class="sidebar buy border_radius soft" data-id="5432" data-cart="true" tabindex="-1">바로 구매하기</button>
	<button class="sidebar addCart border_radius soft" tabindex="-1">장바구니 담기</button>

	<script>
		$("#sidebar_wrap>.buy").click(function(){
			if(poing.account.checkLoginState()) {
				var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
				var options = [];

				if(selected.length === 0) {
					$.popup("confirm", {'text': '구매하실 옵션을 선택해주세요.', 'alert':true});
					return;
				}
				for(var i=0; i<selected.length; ++i)
				{
					var op = selected.eq(i);
					options[i] = {id: op.data('id'), count: op.find(".count_box>input").val()};
				}

				$.ajax({
					'url': "/pay/addCart",
					'method': "POST",
					'dataType': "JSON",
					'data': {'options': options},
					'success':function(response) {
						if(response.status) {
							$.popup("reserve_coupon", {'id':response.data.cart_id, 'mode':'buy'});
						} else {
                            if($.inArray(response.error.code, [1503]) > -1) alert(response.error.message);
                            else $.popup("confirm", {'text': response.error.message, 'alert':true});
                        }
					}
				});
			}
		});
		$("#sidebar_wrap>.addCart").click(function(){
			if(poing.account.checkLoginState()) {
				var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
				var options = [];

				if(selected.length === 0) {
					$.popup("confirm", {'text': '장바구니에 담을 옵션을 선택해주세요.', 'alert':true});
					return;
				}

				for(var i=0; i<selected.length; ++i)
				{
					var op = selected.eq(i);
					options[i] = {id: op.data('id'), count: op.find(".count_box>input").val()};
				}
			
				$.ajax({
					'url': "/pay/addCart",
					'method': "POST",
					'dataType': "JSON",
					'data': {'options': options},
					'success':function(response) {
						if(response.status)
						{
                            ga('send', 'event', 'KPI', '[KPI]장바구니담기성공');
                            $.popup("confirm", {'text': '장바구니에 상품을 담았습니다.', 'left_btn':'쇼핑 계속하기', 'right_btn':'카트 보기'}, null, function(){
                                location.href="/pay/cart";
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
				<a class="i_wrap" href="/product/detail/5904">
					<i class="image border_radius soft" style="background-image:url(http://c2.poing.co.kr/PIMAGE-original/5458801ed20c7820f000002b.png)"></i>
				</a>
				<div class="desc">					
					<div class="name">타볼로 24</div>
					<div class="comment">JW 메리어트 동대문 스퀘어 서울, 타볼로 24</div>
				</div>
			</li>
					<li class="item">
				<a class="i_wrap" href="/product/detail/3588">
					<i class="image border_radius soft" style="background-image:url(http://c2.poing.co.kr/MRI-original/MjAxODA3/15306840745b3c62aa92ff6.jpeg)"></i>
				</a>
				<div class="desc">					
					<div class="name">볼트스테이크하우스</div>
					<div class="comment">청담 볼트스테이크하우스 웻&amp;드라이에이징</div>
				</div>
			</li>
			</ul>
			<a href="/seoul/product/list">티켓 더보기</a>
	</div></div>

<script>
	$(".body.send_qna>button").click(function(){
	    if(poing.account.checkLoginState()) {
    		var data = {'id':'5432', 'inquiry':$("#text").val() };
    		$.ajax({
    			url: '/product/sendInquiry',
    			type: 'POST',
    			data: data,
    			success: function(){
    				location.reload();
    			}
    		});
        }
	});
	$(document).ready(function(){
		var times = $(".time");

		for(var i=0; i<times.length; ++i) {
			var iter = times.eq(i);
			var time = iter.text();
			iter.text( moment(time).locale("ko").fromNow() ).show();
		}
	});
</script>
</div>
			</div>

			
			

			
			
			
			
					<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
		</div>

		
				

		
	

</body>
</html>