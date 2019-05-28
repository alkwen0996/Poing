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
	        프로덕트 주문	
	</title>
</head>

<body>
        <!-- body wrap -->
		<div id="wrap" class="">
			<!-- header -->
			<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>

			<!-- container -->
			<div id="container" class="">
				<!-- 상단에 배너가 있는 레이아웃 -->
<div id="banner_wrap">
    </div>
<div id="content_wrap">
	<!-- 1. 장바구니 -->


<div class="pay_process">
    <p class="current">
        <i class="cart"></i>
        <span>장바구니</span>
    </p>
    <span class="highlight">01 장바구니</span><i class="icon highlight"></i>
    <span>02 결제</span><i class="icon"></i>
    <span>03 결제완료</span>
</div>
<div class="pay cart">
            <p class="notice">
            <span class="label">주의</span>
            <span class="value">'예약하기'에서 예약설정 후 구매하실 수 있습니다.</span>
        </p>
        <div class="section list">
        <table>
            <thead>
                <tr>
                    <th class="select"><input type="checkbox" id="select_all" class="single" checked=""></th>
                    <th class="info">
                        <button type="button" tabindex="-1">선택삭제</button>
                        상품명
                    </th>
                    <th class="reserve">예약정보</th>
                </tr>
            </thead>

            <tbody>
                                        <tr class="selected" data-id="1299328" data-valid="true">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5904" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/5458801ed20c7820f000002b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1299328" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5904" target="_blank">타볼로 24</a>
                                <div class="valid_date">유효기간: <span>2019.5.23 ~ 2019.8.31</span></div>

                                <ul class="options">
                                                                            <li data-id="19044" data-min="1" data-limit="4">
                                            <div class="name">2. [5% 할인] 주중 디너  (1인)</div>
                                            <div class="price" data-value="93100">93,100원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>93,100</span>원</div>
                                            <button type="button" class="reset" data-id="1299328" data-opt="19044" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <div class="date">날짜: 2019.5.29 오후 6:00</div>
                                    <div class="count">인원: 1명</div>
                                                                            <br><div class="comment">요청사항: <span>dd</span></div>
                                    
                                    <button type="button" class="edit" data-id="1299328" data-mode="cart" tabindex="-1">예약변경</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1299320" data-valid="true">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5904" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/5458801ed20c7820f000002b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1299320" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5904" target="_blank">타볼로 24</a>
                                <div class="valid_date">유효기간: <span>2019.5.23 ~ 2019.8.31</span></div>

                                <ul class="options">
                                                                            <li data-id="19044" data-min="1" data-limit="4">
                                            <div class="name">2. [5% 할인] 주중 디너  (1인)</div>
                                            <div class="price" data-value="93100">93,100원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>93,100</span>원</div>
                                            <button type="button" class="reset" data-id="1299320" data-opt="19044" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <div class="date">날짜: 2019.5.29 오후 6:00</div>
                                    <div class="count">인원: 1명</div>
                                    
                                    <button type="button" class="edit" data-id="1299320" data-mode="cart" tabindex="-1">예약변경</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1299300" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5904" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/5458801ed20c7820f000002b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1299300" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5904" target="_blank">타볼로 24</a>
                                <div class="valid_date">유효기간: <span>2019.5.23 ~ 2019.8.31</span></div>

                                <ul class="options">
                                                                            <li data-id="19044" data-min="1" data-limit="4">
                                            <div class="name">2. [5% 할인] 주중 디너  (1인)</div>
                                            <div class="price" data-value="93100">93,100원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>93,100</span>원</div>
                                            <button type="button" class="reset" data-id="1299300" data-opt="19044" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1299300" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1299172" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5904" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/PIMAGE-original/5458801ed20c7820f000002b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1299172" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5904" target="_blank">타볼로 24</a>
                                <div class="valid_date">유효기간: <span>2019.5.23 ~ 2019.8.31</span></div>

                                <ul class="options">
                                                                            <li data-id="19048" data-min="1" data-limit="4">
                                            <div class="name">3. [5% 할인] 주말 (공휴일) 런치 &amp; 디너  (1인)</div>
                                            <div class="price" data-value="93100">93,100원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>93,100</span>원</div>
                                            <button type="button" class="reset" data-id="1299172" data-opt="19048" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1299172" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1298800" data-valid="true">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5860" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxOTA1/15568788185ccc15e2de836.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1298800" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5860" target="_blank">스와니예</a>
                                <div class="valid_date">유효기간: <span>2019.5.7 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="18860" data-min="2" data-limit="2">
                                            <div class="name">1. Lunch Course (1인)</div>
                                            <div class="price" data-value="78000">78,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>156,000</span>원</div>
                                            <button type="button" class="reset" data-id="1298800" data-opt="18860" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <div class="date">날짜: 2019.5.28 오후 12:00</div>
                                    <div class="count">인원: 2명</div>
                                    
                                    <button type="button" class="edit" data-id="1298800" data-mode="cart" tabindex="-1">예약변경</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1298100" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5260" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA4/15347464725b7a5f686730b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1298100" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5260" target="_blank">블러프</a>
                                <div class="valid_date">유효기간: <span>2019.4.4 ~ 2019.9.25</span></div>

                                <ul class="options">
                                                                            <li data-id="17324" data-min="1" data-limit="3">
                                            <div class="name">2. Course A (2인), 양갈비 or 토마호크 스테이크</div>
                                            <div class="price" data-value="117000">117,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>117,000</span>원</div>
                                            <button type="button" class="reset" data-id="1298100" data-opt="17324" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1298100" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297952" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5260" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA4/15347464725b7a5f686730b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297952" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5260" target="_blank">블러프</a>
                                <div class="valid_date">유효기간: <span>2019.4.4 ~ 2019.9.25</span></div>

                                <ul class="options">
                                                                            <li data-id="17320" data-min="1" data-limit="3">
                                            <div class="name">1. Course A (2인), 안심 스테이크</div>
                                            <div class="price" data-value="127000">127,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>127,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297952" data-opt="17320" tabindex="-1"></button>
                                        </li>
                                                                            <li data-id="17328" data-min="1" data-limit="3">
                                            <div class="name">3. Course B (2인)</div>
                                            <div class="price" data-value="90000">90,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>90,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297952" data-opt="17328" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297952" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297948" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5260" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA4/15347464725b7a5f686730b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297948" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5260" target="_blank">블러프</a>
                                <div class="valid_date">유효기간: <span>2019.4.4 ~ 2019.9.25</span></div>

                                <ul class="options">
                                                                            <li data-id="17320" data-min="1" data-limit="3">
                                            <div class="name">1. Course A (2인), 안심 스테이크</div>
                                            <div class="price" data-value="127000">127,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>127,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297948" data-opt="17320" tabindex="-1"></button>
                                        </li>
                                                                            <li data-id="17328" data-min="1" data-limit="3">
                                            <div class="name">3. Course B (2인)</div>
                                            <div class="price" data-value="90000">90,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>90,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297948" data-opt="17328" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297948" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297944" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5260" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA4/15347464725b7a5f686730b.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297944" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5260" target="_blank">블러프</a>
                                <div class="valid_date">유효기간: <span>2019.4.4 ~ 2019.9.25</span></div>

                                <ul class="options">
                                                                            <li data-id="17320" data-min="1" data-limit="3">
                                            <div class="name">1. Course A (2인), 안심 스테이크</div>
                                            <div class="price" data-value="127000">127,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>127,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297944" data-opt="17320" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297944" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297876" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5432" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297876" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5432" target="_blank">킨카 스시바 이자카야 청담</a>
                                <div class="valid_date">유효기간: <span>2019.3.18 ~ 2019.5.31</span></div>

                                <ul class="options">
                                                                            <li data-id="17688" data-min="6" data-limit="10">
                                            <div class="name">2. 킨카 1인 코스 (6~10명 예약 시)</div>
                                            <div class="price" data-value="45000">45,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="6" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>270,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297876" data-opt="17688" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297876" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297872" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5432" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297872" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5432" target="_blank">킨카 스시바 이자카야 청담</a>
                                <div class="valid_date">유효기간: <span>2019.3.18 ~ 2019.5.31</span></div>

                                <ul class="options">
                                                                            <li data-id="17688" data-min="6" data-limit="10">
                                            <div class="name">2. 킨카 1인 코스 (6~10명 예약 시)</div>
                                            <div class="price" data-value="45000">45,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="6" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>270,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297872" data-opt="17688" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297872" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297852" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5432" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODEw/15405173005bd26db482508.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297852" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5432" target="_blank">킨카 스시바 이자카야 청담</a>
                                <div class="valid_date">유효기간: <span>2019.3.18 ~ 2019.5.31</span></div>

                                <ul class="options">
                                                                            <li data-id="17688" data-min="6" data-limit="10">
                                            <div class="name">2. 킨카 1인 코스 (6~10명 예약 시)</div>
                                            <div class="price" data-value="45000">45,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="6" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>270,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297852" data-opt="17688" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297852" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297620" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297620" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16452" data-min="2" data-limit="10">
                                            <div class="name">1. 첫번째 이야기</div>
                                            <div class="price" data-value="94000">94,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>188,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297620" data-opt="16452" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297620" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297616" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297616" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16452" data-min="2" data-limit="10">
                                            <div class="name">1. 첫번째 이야기</div>
                                            <div class="price" data-value="94000">94,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>188,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297616" data-opt="16452" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297616" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297584" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297584" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16452" data-min="2" data-limit="10">
                                            <div class="name">1. 첫번째 이야기</div>
                                            <div class="price" data-value="94000">94,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>188,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297584" data-opt="16452" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297584" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297548" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/3868" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA5/15381109925badb61078e74.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297548" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/3868" target="_blank">스시요인</a>
                                <div class="valid_date">유효기간: <span>2018.10.8 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="12984" data-min="1" data-limit="6">
                                            <div class="name">1. [런치] 스시 오마카세 (1인)</div>
                                            <div class="price" data-value="45000">45,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>45,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297548" data-opt="12984" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297548" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297544" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/3868" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA5/15381109925badb61078e74.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297544" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/3868" target="_blank">스시요인</a>
                                <div class="valid_date">유효기간: <span>2018.10.8 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="12988" data-min="1" data-limit="6">
                                            <div class="name">2. [디너] 스시 오마카세 (1인)</div>
                                            <div class="price" data-value="65000">65,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>65,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297544" data-opt="12988" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297544" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297540" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/3868" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA5/15381109925badb61078e74.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297540" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/3868" target="_blank">스시요인</a>
                                <div class="valid_date">유효기간: <span>2018.10.8 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="12988" data-min="1" data-limit="6">
                                            <div class="name">2. [디너] 스시 오마카세 (1인)</div>
                                            <div class="price" data-value="65000">65,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>65,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297540" data-opt="12988" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297540" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297536" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/3868" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA5/15381109925badb61078e74.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297536" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/3868" target="_blank">스시요인</a>
                                <div class="valid_date">유효기간: <span>2018.10.8 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="12988" data-min="1" data-limit="6">
                                            <div class="name">2. [디너] 스시 오마카세 (1인)</div>
                                            <div class="price" data-value="65000">65,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>65,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297536" data-opt="12988" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297536" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1297532" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/3868" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA5/15381109925badb61078e74.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1297532" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/3868" target="_blank">스시요인</a>
                                <div class="valid_date">유효기간: <span>2018.10.8 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="12988" data-min="1" data-limit="6">
                                            <div class="name">2. [디너] 스시 오마카세 (1인)</div>
                                            <div class="price" data-value="65000">65,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>65,000</span>원</div>
                                            <button type="button" class="reset" data-id="1297532" data-opt="12988" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1297532" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1282872" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5552" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODEw/15392475195bbf0d9f7c7db.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1282872" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5552" target="_blank">울프강 스테이크하우스</a>
                                <div class="valid_date">유효기간: <span>2019.5.17 ~ 2019.6.30</span></div>

                                <ul class="options">
                                                                            <li data-id="17988" data-min="1" data-limit="1">
                                            <div class="name">1. 6인-8인 단체 예약</div>
                                            <div class="price" data-value="100000">100,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>100,000</span>원</div>
                                            <button type="button" class="reset" data-id="1282872" data-opt="17988" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1282872" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1282008" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1282008" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16452" data-min="2" data-limit="10">
                                            <div class="name">1. 첫번째 이야기</div>
                                            <div class="price" data-value="94000">94,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>188,000</span>원</div>
                                            <button type="button" class="reset" data-id="1282008" data-opt="16452" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1282008" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1270700" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/5784" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxOTA0/15565069575cc6694dc81b4.png);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1270700" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/5784" target="_blank">투뿔등심 (서울스퀘어점)</a>
                                <div class="valid_date">유효기간: <span>2019.5.1 ~ 2019.10.31</span></div>

                                <ul class="options">
                                                                            <li data-id="18584" data-min="1" data-limit="2">
                                            <div class="name">1. 투뿔등심 2인 세트</div>
                                            <div class="price" data-value="90000">90,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="1" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>90,000</span>원</div>
                                            <button type="button" class="reset" data-id="1270700" data-opt="18584" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1270700" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1270696" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1270696" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16452" data-min="2" data-limit="10">
                                            <div class="name">1. 첫번째 이야기</div>
                                            <div class="price" data-value="94000">94,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>188,000</span>원</div>
                                            <button type="button" class="reset" data-id="1270696" data-opt="16452" tabindex="-1"></button>
                                        </li>
                                                                            <li data-id="16456" data-min="2" data-limit="13">
                                            <div class="name">2. 두번째 이야기</div>
                                            <div class="price" data-value="74000">74,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>148,000</span>원</div>
                                            <button type="button" class="reset" data-id="1270696" data-opt="16456" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1270696" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1270692" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1270692" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16452" data-min="2" data-limit="10">
                                            <div class="name">1. 첫번째 이야기</div>
                                            <div class="price" data-value="94000">94,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>188,000</span>원</div>
                                            <button type="button" class="reset" data-id="1270692" data-opt="16452" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1270692" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                            <tr class="selected" data-id="1270316" data-valid="false">
                            <td class="select">
                                <input type="checkbox" class="single" checked="">
                            </td>
                            <td class="info">
                                <a class="image" href="/product/detail/4928" target="_blank">
                                    <i class="image border_radius medium" style="background-image: url(http://c2.poing.co.kr/MRI-original/MjAxODA1/15257572485af13540b96e1.jpeg);"></i>
                                </a>
                                <button type="button" class="option border_radius soft" data-id="1270316" tabindex="-1">옵션변경</button>
                                <a class="name" href="/product/detail/4928" target="_blank">만</a>
                                <div class="valid_date">유효기간: <span>2019.1.23 ~ 2019.7.31</span></div>

                                <ul class="options">
                                                                            <li data-id="16456" data-min="2" data-limit="13">
                                            <div class="name">2. 두번째 이야기</div>
                                            <div class="price" data-value="74000">74,000원</div>
                                            <div class="count_box">
                                                <input type="text" value="2" disabled="">
                                                <button type="button" class="increase" tabindex="-1"><i></i></button>
                                                <button type="button" class="decrease" tabindex="-1"><i></i></button>
                                            </div>
                                            <div class="total_price"><span>148,000</span>원</div>
                                            <button type="button" class="reset" data-id="1270316" data-opt="16456" tabindex="-1"></button>
                                        </li>
                                                                    </ul>
                            </td>
                            <td class="reserve">
                                                                    <p>예약일을 지정해주세요.</p>
                                    <button type="button" class="reserve" data-id="1270316" data-mode="cart" tabindex="-1">예약하기</button>
                                                            </td>
                        </tr>
                                                </tbody>
        </table>

                    <div class="total">
                <span class="label">총 결제금액: </span>
                <span class="value">3,935,400원</span>
            </div>
            </div>

            <div class="buttons">
            <button type="button" class="back border_radius soft" tabindex="-1">쇼핑 계속하기</button>
            <button type="button" class="link red_fill border_radius soft" tabindex="-1">바로 구매하기 &gt;</button>
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

        $.popup("confirm", {'text': msg}, function(){
            $.ajax({
                'url':'/pay/DeleteOptions',
                'type':'post', 
                'context': this,
                'data':{'id':id, 'options':opt_id},
                success: function(){ 
                    $(".pay>.section.list>table tr[data-id="+id+"]>td.info>ul.options>li[data-id="+opt_id[0]+"]").remove();
                    if( $(".pay>.section.list>table tr[data-id="+id+"]>td.info>ul.options>li").length === 0 )
                        location.reload();

                    update_prices();
                }
            });
        });
    });
    // 선택 삭제
    $(".pay>.section.list>table>thead>tr>th.info>button").click(function(){
        var id = $(this).data('id');
        var opt_id = [ $(this).data('opt') ];

        $.popup("confirm", {'text': '선택된 항목을 삭제하시겠습니까?'}, function(){
            var checked = $(".section.list>table>tbody>tr.selected");

            for(var i=0, len=checked.length; i<len; ++i){
                var cart = checked.eq(i);

                $.ajax({
                    url:'/pay/DeleteCart',
                    type:'post', 
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
        $.popup("coupon_option", $(this).data());
    });
    // 예약 변경
    $(".section.list td.reserve>button").click(function(){
        $.popup("reserve_coupon", $(this).data());
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

			<!-- footer -->
			

			<!-- popup_wrap -->
			
			
			<!-- fb_root -->
			<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
		</div>

		<!-- script -->
				

		
	

</body>
</html>