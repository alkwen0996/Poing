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
	        포잉		
	</title>
</head>

<body class="vsc-initialized">
<!-- body wrap -->
<div id="wrap" class="">
	<!-- header -->
	<jsp:include page="/WEB-INF/layout/header.jsp"></jsp:include>


	<div id="container" class="">
		<!-- 상단에 배너가 있는 레이아웃 -->
		<div id="banner_wrap">
			<div id="banner" class="image "
				style="background-image: url(http://c2.poing.co.kr/banner/MjAxOTAx/15474478485c3c2e28c949a.png)">
				<div class="title_wrap">
					<div class="title">인기 지역별</div>
				</div>
				<div class="subtitle"></div>
			</div>
		</div>
		<div id="content_wrap">
			<div class="section">
				<div class="title">인기 지역별</div>
				<div class="body">

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=2004" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475447005c3da87cec20c.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">잠실</div>
								</div>
							</div>
						</a>
					</div>
					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=642,1896" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475446255c3da8315f56c.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">강남역</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1980" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475449275c3da95fcb75d.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">연남</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1956" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475450055c3da9ad3655e.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">성수</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1996" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475450545c3da9de98b97.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">인사동</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=912,2020" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475444815c3da7a1c3825.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">한남동</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1952" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475444995c3da7b30ad4c.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">서촌</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=657,1948" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475445895c3da80d4c49b.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">서래마을</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1984" class="image"
							style="display: block; background-image: url(&quot;http://c2.poing.co.kr/banner/MjAxOTAx/15475450205c3da9bceba0d.png&quot;);">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">을지로</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1916" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475450715c3da9efb02e1.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">대학로</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=640,1988"
							class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475445525c3da7e801bb2.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">이태원</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1944" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475448665c3da92297813.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">샤로수길</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=2016" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475448505c3da9129ab11.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">분당</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=914,2028"
							class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475445145c3da7c2706c4.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">홍대</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=637,2012"
							class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475445375c3da7d93a73f.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">청담동</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=660,1908"
							class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475446055c3da81dba890.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">광화문</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1972" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475449135c3da95142f44.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">양평</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1976" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475446855c3da86dd7f0a.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">여의도</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1924" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475446665c3da85ab2d23.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">명동</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1960" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475448795c3da92fbc0f2.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">송도</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1912" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475447795c3da8cb6ae92.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">남양주</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=2000" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475447285c3da898654dd.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">일산</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1904" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475447625c3da8ba4d662.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">경리단길</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=2008" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475450405c3da9d07dcbe.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">종로</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1932" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475449905c3da99ef2586.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">북촌</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1892" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475446495c3da849672d6.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">가로수길</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=649,1964"
							class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475445685c3da7f8cce6d.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">압구정</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1928" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475448265c3da8fa997c6.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">문래</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1992" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475449435c3da96febbe0.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">익선동</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1968" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475448955c3da93f6f163.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">양재</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1940" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475449575c3da97d347ab.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">합정</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=2024" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475449715c3da98b9ccd8.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">해방촌</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image  ">
						<a href="/search/result/place?place_area=1900" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475447465c3da8aa96cd2.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">건대</div>
								</div>
							</div>
						</a>


					</div>

					<div class="element  large past_image first ">
						<a href="/search/result/place?place_area=1920" class="image lazy"
							data-src="http://c2.poing.co.kr/banner/MjAxOTAx/15475448065c3da8e6b1621.png">
							<div class="shading"></div>

							<div class="center">
								<div class="middle">
									<div class="subtitle">망원</div>
								</div>
							</div>
						</a>


					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>
</div> <!-- wrap end -->

<jsp:include page="/WEB-INF/layout/script.jsp"></jsp:include>
</body>
</html>