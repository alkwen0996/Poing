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
	<%-- <script type="text/javascript" 
		src="<%= request.getContextPath() %>/js/productDetailScript.js"></script> --%>

	<meta charset="UTF-8">
	<title>
	        프로덕트		
	</title>
</head>

<body>
	<%

%>
	<!-- body wrap -->
	<div id="wrap" class="">
		<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>
		<!-- header -->

		<!-- container -->
		<div id="container" class="">
			<!-- 상단에 배너가 있는 레이아웃 -->
			<div id="banner_wrap"></div>
			<div id="content_wrap">
				<!-- 1. 장바구니 -->


				<div class="pay_process">
					<p class="current">
						<i class="cart"></i> <span>장바구니</span>
					</p>
					<span class="highlight">01 장바구니</span><i class="icon highlight"></i>
					<span>02 결제</span><i class="icon"></i> <span>03 결제완료</span>
				</div>
				<div class="pay cart">
					<p class="notice">
						<span class="label">주의</span> <span class="value">'예약하기'에서
							예약설정 후 구매하실 수 있습니다.</span>
					</p>
					<div class="section list">
						<table>
							<thead>
								<tr>
									<th class="select"><input type="checkbox" id="select_all"
										class="single" checked=""></th>
									<th class="info">
										<button type="button" tabindex="-1">선택삭제</button> 상품명
									</th>
									<th class="reserve">예약정보</th>
								</tr>
							</thead>

							<tbody>
							
							<c:forEach items="${list}" var="dto">
							
								<tr class="selected" data-id="${dto.cart_seq }" data-valid="false">
									<td class="select"><input type="checkbox" class="single"
										checked=""></td>
									<td class="info"><a class="image"
										href="/Poing/product/detail.do?p_num=${dto.p_num }" target="_blank"> 
										<i class="image border_radius medium"
											style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA4/15347464725b7a5f686730b.png);"></i>
									</a>
										<button type="button" class="option border_radius soft"
											data-id="${dto.cart_seq }" tabindex="-1">옵션변경</button> 
											<a class="name" href="/Poing/product/detail.do?p_num=${dto.p_num }" target="_blank">${dto.p_name }</a>
										<div class="valid_date">
											유효기간: <span>${dto.p_st_ed_date }</span>
										</div>
									
									<c:forEach items="${option }" var="opt">	
									<c:if test="${dto.cart_seq eq opt.cart_seq }">
										<ul class="options">
											<li data-id="${opt.op_seq }" data-min="${opt.op_min_cnt }" data-limit="${opt.op_max_cnt }">
												<div class="name">${opt.op_name }</div>
												<div class="price" data-value="${opt.op_price }">${opt.op_price }원</div>
												<div class="count_box">
													<input type="text" value="${opt.op_cnt }" disabled="">
													<button type="button" class="increase" tabindex="-1">
														<i></i>
													</button>
													<button type="button" class="decrease" tabindex="-1">
														<i></i>
													</button>
												</div>
												<div class="total_price">
													<span></span>원
												</div>
												<button type="button" class="reset" data-id="${dto.cart_seq }"
													data-opt="${opt.op_seq }" tabindex="-1"></button>	
											</li>
										</ul>
										</c:if>
									</c:forEach>
										</td>
								 <c:if test="${dto.message && dto.c_date eq null }">
									<td class="reserve">
										<p>예약일을 지정해주세요.</p>
										<button type="button" class="reserve" data-id="${dto.cart_seq }"
											data-mode="cart" tabindex="-1">예약하기</button>
									</td>
								</c:if>	
								<c:if test="${dto.message || dto.party_size ne null }">
									<td class="reserve">
										<div class="date">날짜:${dto.c_date } </div>
										<div class="count">인원: ${dto.party_size }</div>
										<div class="comment">요청사항: <span>${dto.message }</span></div>
										<button type="button" class="reserve" data-id="${dto.cart_seq }"
											data-mode="cart" tabindex="-1">예약하기</button>
									</td>
								</c:if>	
								</tr>
									
							</c:forEach>
							
								</tbody>
						</table>
						
						<div class="total">
							<span class="label">총 결제금액: </span> <span class="value">원</span>
						</div>
					</div>

					<div class="buttons">
						<button type="button" class="back border_radius soft"
							tabindex="-1">쇼핑 계속하기</button>
						<button type="button" class="link red_fill border_radius soft"
							tabindex="-1">바로 구매하기 &gt;</button>
					</div>
				</div>
			</div>
		</div>
	</div>

				<script>
$(document).ready(function(){
    // 상품 선택 체크박스
    $("tbody>tr>td>input").change(function(){
        var flag = $(this).prop('checked');
        $(this).parents("tr").toggleClass("selected", flag);

        var checked_count = $("tbody>tr>td>input:checked").length;
        if(checked_count === $("tbody>tr>td>input").length)
            $("#select_all").prop('checked', true);
        else
            $("#select_all").prop('checked', false);

        update_prices();
    }).change();
    $("#select_all").click(function(){
        var flag = $(this).prop('checked');
        $("tbody>tr>td>input").prop('checked', flag).change();

        $("#select_all").prop('checked', flag);
    });

    // 수량 컨트롤
    $(".pay>.section.list>table button.increase, .pay>.section.list>table button.decrease").click(function(){
        var target = $(this).siblings("input");
        var value = Number(target.val());
        var price = $(this).parents("li").find(".price>span").text();

        if( $(this).hasClass('increase') ) 
        {
            if(value + 1 <= $(this).closest('li').data('limit')) 
                ++value;
            else
                noticePopupInit({message:'구매 가능한 최대 수량입니다.'});
        } else {
			if(value - 1 >= $(this).closest('li').data('min'))
                --value;
        }
        target.val(value);

        var id = $(this).closest('tr').data('id');
        var options = $(this).closest("ul").children("li");
        var data = [];

        for(var i=0;i<options.length; ++i)
        {
            var option = options.eq(i);
            data.push({
                'id': option.data('id'),
                'count': option.find(".count_box>input").val()
            });
        }
        
        $.ajax({
            'url': '/pay/ModifyCart',
            'type': 'POST',
            'data': {'id': id, 'options': data},
            'success': function(res) { 
                res = JSON.parse(res);
                if(res.status == false) {
                    $.popup("confirm", {'text':res.error.message, 'alert':true});
                }
            }
        });

        update_prices();
    });

    // 옵션 삭제
    $(".pay>.section.list>table button.reset").click(function(){
        var id = $(this).data('id');
        var opt_id = [ $(this).data('opt') ];
        var msg = $(this).siblings(".name").text() + "<br>삭제하시겠습니까?";

        $.popup("/Poing/popup/optionconfirm.do", {'text': msg}, function(){
            $.ajax({
                'url':"/Poing/option/deleteOption.do",
                'type':"post", 
                'context': this,
                'data':{'id':id, 'options':opt_id},
                success: function(){ 
                    $(".pay>.section.list>table tr[data-id="+id+"]>td.info>ul.options>li[data-id="+opt_id[0]+"]").remove();
                    if( $(".pay>.section.list>table tr[data-id="+id+"]>td.info>ul.options>li").length === 0 )
                    	location.href = "/Poing/product/productCart.do";

                    update_prices();
                }
            });
        });
    });
    // 선택 삭제
    $(".pay>.section.list>table>thead>tr>th.info>button").click(function(){
        var id = $(this).data('id');
        var opt_id = [ $(this).data('opt') ];
        $.popup("/Poing/popup/delete_confirm.do", {'text': '선택된 항목을 삭제하시겠습니까?'}, function(){
            var checked = $(".section.list>table>tbody>tr.selected");
            for(var i=0, len=checked.length; i<len; ++i){
                var cart = checked.eq(i);
                $.ajax({
                    url:"/Poing/cart/delete.do",
                    type:"post", 
                    context: cart[0],
                    data:{id: cart.data('id')},
                    success: function(){ 
                        var length = $(this).siblings().length;
                        $(this).remove();
                        update_prices();
                        if( length == 0 )
                            location.reload();
                    }
                });
            }
        });
    });

    // 옵션 변경
    $(".section.list td.info>.option").click(function(){
        $.popup("/Poing/popup/change_option.do", $(this).data());
    });
    // 예약 변경
    $(".section.list td.reserve>button").click(function(){
        $.popup("/Poing/popup/change_coupon.do", $(this).data());
    });

    function update_prices(){
        var table = $(".pay>.section.list>table");
        var list = table.find("tbody>tr");
        var total_price = 0;

        for(var i=0, len=list.length; i<len; ++i)
        {
            var cart = list.eq(i);
            var options = cart.find(" ul.options>li");
            var list_price = 0;

            for(var j=0, option_count=options.length; j<option_count; ++j)
            {
                var option = options.eq(j);
                var price = option.find(".price").data('value');
                var count = option.find(".count_box>input").val();

                option.find(".total_price>span").text((price * count).toLocaleString());
                list_price += price * count;
            }
            if(cart.hasClass('selected'))
                total_price += list_price;
        }

        $(".pay>.section.list>.total>.value").text(total_price.toLocaleString()+'원');
    };

    // 쇼핑 계속하기
    $(".pay.cart>.buttons>.back, .pay.cart tr.empty button").click(function(){
        location.href="/product/list";
    });
    // 바로 구매하기
    $(".pay.cart>.buttons>.link").click(function(){
        var checked = $(".section.list>table>tbody>tr.selected");
        var data = [];

        if(checked.length == 0) {
            $.popup("confirm", {'text':'상품을 선택해주세요!', 'alert':true});
            return;
        }

        for(var i=0;i<checked.length; ++i)
        {
            var target = checked.eq(i);

            if(target.data('valid') == false) {
                $.popup("confirm", {'text':'선택한 티켓의 예약일시를 설정해주세요.', 'alert':true});
                return;
            }
            data.push(target.data('id'));
        }

        $.ajax({'url':'/pay/cartValidCheck',
            'type':'POST',
            'async': false,
            'data':{'cart_ids':data},
            'success':function(res) {
                res = $.parseJSON(res);
                if(res.status) {
                    var checked = $(".section.list>table>tbody>tr.selected");
                    var carts = [];
                    for(var i=0;i<checked.length; ++i) {
                        var target = checked.eq(i);
                        carts[i] = target.data('id');
                    }
                    carts = carts.join(',');
                    location.href = "/pay/order/"+carts;
                } else {
                    if($.inArray(res.error.code, [1503]) > -1) alert(res.error.message);
                    else $.popup("confirm", {'text':res.error.message, 'alert':true, 'wait':true});
                }
            }
        });
    });
});
</script>
			</div>
		</div>








		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
	</div>

	<!-- script -->






</body>
</html>