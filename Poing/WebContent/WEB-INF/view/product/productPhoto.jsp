<%@page import="poing.product.display.service.ProductDTO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp/sevlet class SIST168 (2019. 5. 23. - 오후 3:18:02)</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="" />
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
			<!-- header -->
			<div id="header">
				
<!-- navgation -->
<div id="nav_wrap_shading"></div>
<div id="nav_wrap" class="fixed">
	<div class="container_wrap">
		<div id="nav_container" class="">
			<div id="nav_shading" class="shading_bg scroll_enable"></div>
			<!-- logo section -->
			<a id="nav_logo" href="/seoul"><img class="logo" src="http://c1.poing.co.kr/original/images/logo.png"></a>

							<div id="nav_city">
					<span>서울 / 수도권</span>
					<i class="icon"></i>
					<ul style="display: none;">
						 
							<li data-city="seoul" data-enable="true">서울 / 수도권</li>
						 
							<li data-city="busan" data-enable="true">부산</li>
						 
							<li data-city="jeju" data-enable="true">제주</li>
						 
							<li data-city="daegu" data-enable="true">대구</li>
						 
							<li data-city="daejeon" data-enable="true">대전 / 세종</li>
						 
							<li data-city="gwangju" data-enable="true">광주</li>
						 
							<li data-city="jeonju" data-enable="false">전주</li>
						 
							<li data-city="ulsan" data-enable="false">울산</li>
											</ul>	
				</div>

				<!-- area search section -->
				<div id="nav_area" class="search sel">
					<div class="input">
						<div class="selected">지역 선택</div>
						<i class="icon searchbox arrow"></i>
					</div>
					<div class="box">
						<ul class="district">
															<li data-dist="6914b4770337c90465bde5e773fbd8c2" class="selected">인기지역<span>&gt;</span></li>
															<li data-dist="d50fb2f91ab75ee2564aad103c3a153e">서울<span>&gt;</span></li>
															<li data-dist="b0ef0d66131a078e03dca528a125403b">인천<span>&gt;</span></li>
															<li data-dist="9c6b19a1f8ce82fedc29a96abe90f2ea">경기<span>&gt;</span></li>
															<li data-dist="a75837780b67fbec44ee3d142074e461">지역 전체<span>&gt;</span></li>
													</ul>
						<div class="neighborhood">
															<ul class="content scroll selected" data-dist="6914b4770337c90465bde5e773fbd8c2">
                                                                            <li><input type="checkbox" id="ca460332316d6da84b08b9bcf39b687b" value="1892"><label for="ca460332316d6da84b08b9bcf39b687b">가로수길</label></li>
                                                                            <li><input type="checkbox" id="e06f967fb0d355592be4e7674fa31d26" value="1896"><label for="e06f967fb0d355592be4e7674fa31d26">강남역</label></li>
                                                                            <li><input type="checkbox" id="9fdb62f932adf55af2c0e09e55861964" value="1900"><label for="9fdb62f932adf55af2c0e09e55861964">건대</label></li>
                                                                            <li><input type="checkbox" id="c91591a8d461c2869b9f535ded3e213e" value="1904"><label for="c91591a8d461c2869b9f535ded3e213e">경리단길</label></li>
                                                                            <li><input type="checkbox" id="65699726a3c601b9f31bf04019c8593c" value="1908"><label for="65699726a3c601b9f31bf04019c8593c">광화문</label></li>
                                                                            <li><input type="checkbox" id="ff7d0f525b3be596a51fb919492c099c" value="1912"><label for="ff7d0f525b3be596a51fb919492c099c">남양주</label></li>
                                                                            <li><input type="checkbox" id="65fc52ed8f88c81323a418ca94cec2ed" value="1916"><label for="65fc52ed8f88c81323a418ca94cec2ed">대학로</label></li>
                                                                            <li><input type="checkbox" id="44968aece94f667e4095002d140b5896" value="1920"><label for="44968aece94f667e4095002d140b5896">망원</label></li>
                                                                            <li><input type="checkbox" id="b139e104214a08ae3f2ebcce149cdf6e" value="1924"><label for="b139e104214a08ae3f2ebcce149cdf6e">명동</label></li>
                                                                            <li><input type="checkbox" id="5bce843dd76db8c939d5323dd3e54ec9" value="1928"><label for="5bce843dd76db8c939d5323dd3e54ec9">문래</label></li>
                                                                            <li><input type="checkbox" id="52d2752b150f9c35ccb6869cbf074e48" value="1932"><label for="52d2752b150f9c35ccb6869cbf074e48">북촌</label></li>
                                                                            <li><input type="checkbox" id="95192c98732387165bf8e396c0f2dad2" value="2016"><label for="95192c98732387165bf8e396c0f2dad2">분당</label></li>
                                                                            <li><input type="checkbox" id="11108a3dbfe4636cb40b84b803b2fff6" value="1936"><label for="11108a3dbfe4636cb40b84b803b2fff6">상수</label></li>
                                                                            <li><input type="checkbox" id="6f2688a5fce7d48c8d19762b88c32c3b" value="1944"><label for="6f2688a5fce7d48c8d19762b88c32c3b">샤로수길</label></li>
                                                                            <li><input type="checkbox" id="7ca57a9f85a19a6e4b9a248c1daca185" value="1948"><label for="7ca57a9f85a19a6e4b9a248c1daca185">서래마을</label></li>
                                                                            <li><input type="checkbox" id="1113d7a76ffceca1bb350bfe145467c6" value="1952"><label for="1113d7a76ffceca1bb350bfe145467c6">서촌</label></li>
                                                                            <li><input type="checkbox" id="e3408432c1a48a52fb6c74d926b38886" value="1956"><label for="e3408432c1a48a52fb6c74d926b38886">성수</label></li>
                                                                            <li><input type="checkbox" id="7f16109f1619fd7a733daf5a84c708c1" value="1960"><label for="7f16109f1619fd7a733daf5a84c708c1">송도</label></li>
                                                                            <li><input type="checkbox" id="39dcaf7a053dc372fbc391d4e6b5d693" value="1964"><label for="39dcaf7a053dc372fbc391d4e6b5d693">압구정</label></li>
                                                                            <li><input type="checkbox" id="98c7242894844ecd6ec94af67ac8247d" value="1968"><label for="98c7242894844ecd6ec94af67ac8247d">양재</label></li>
                                                                            <li><input type="checkbox" id="c4de8ced6214345614d33fb0b16a8acd" value="1972"><label for="c4de8ced6214345614d33fb0b16a8acd">양평</label></li>
                                                                            <li><input type="checkbox" id="dd055f53a45702fe05e449c30ac80df9" value="1976"><label for="dd055f53a45702fe05e449c30ac80df9">여의도</label></li>
                                                                            <li><input type="checkbox" id="f80bf05527157a8c2a7bb63b22f49aaa" value="1980"><label for="f80bf05527157a8c2a7bb63b22f49aaa">연남</label></li>
                                                                            <li><input type="checkbox" id="1b36ea1c9b7a1c3ad668b8bb5df7963f" value="1984"><label for="1b36ea1c9b7a1c3ad668b8bb5df7963f">을지로</label></li>
                                                                            <li><input type="checkbox" id="9d7311ba459f9e45ed746755a32dcd11" value="1988"><label for="9d7311ba459f9e45ed746755a32dcd11">이태원</label></li>
                                                                            <li><input type="checkbox" id="d5c186983b52c4551ee00f72316c6eaa" value="1992"><label for="d5c186983b52c4551ee00f72316c6eaa">익선동</label></li>
                                                                            <li><input type="checkbox" id="6351bf9dce654515bf1ddbd6426dfa97" value="1996"><label for="6351bf9dce654515bf1ddbd6426dfa97">인사동</label></li>
                                                                            <li><input type="checkbox" id="08f90c1a417155361a5c4b8d297e0d78" value="2000"><label for="08f90c1a417155361a5c4b8d297e0d78">일산</label></li>
                                                                            <li><input type="checkbox" id="b8b4b727d6f5d1b61fff7be687f7970f" value="2004"><label for="b8b4b727d6f5d1b61fff7be687f7970f">잠실</label></li>
                                                                            <li><input type="checkbox" id="ef8446f35513a8d6aa2308357a268a7e" value="2008"><label for="ef8446f35513a8d6aa2308357a268a7e">종로</label></li>
                                                                            <li><input type="checkbox" id="253614bbac999b38b5b60cae531c4969" value="2012"><label for="253614bbac999b38b5b60cae531c4969">청담동</label></li>
                                                                            <li><input type="checkbox" id="7b7a53e239400a13bd6be6c91c4f6c4e" value="2020"><label for="7b7a53e239400a13bd6be6c91c4f6c4e">한남동</label></li>
                                                                            <li><input type="checkbox" id="95e6834d0a3d99e9ea8811855ae9229d" value="1940"><label for="95e6834d0a3d99e9ea8811855ae9229d">합정</label></li>
                                                                            <li><input type="checkbox" id="07811dc6c422334ce36a09ff5cd6fe71" value="2024"><label for="07811dc6c422334ce36a09ff5cd6fe71">해방촌</label></li>
                                                                            <li><input type="checkbox" id="d860edd1dd83b36f02ce52bde626c653" value="2028"><label for="d860edd1dd83b36f02ce52bde626c653">홍대</label></li>
                                    								</ul>
															<ul class="content scroll" data-dist="d50fb2f91ab75ee2564aad103c3a153e">
                                                                            <li><input type="checkbox" id="584b98aac2dddf59ee2cf19ca4ccb75e" value="2052"><label for="584b98aac2dddf59ee2cf19ca4ccb75e">강남구</label></li>
                                                                            <li><input type="checkbox" id="4ba3c163cd1efd4c14e3a415fa0a3010" value="2116"><label for="4ba3c163cd1efd4c14e3a415fa0a3010">강동구</label></li>
                                                                            <li><input type="checkbox" id="1819932ff5cf474f4f19e7c7024640c2" value="2160"><label for="1819932ff5cf474f4f19e7c7024640c2">강북구</label></li>
                                                                            <li><input type="checkbox" id="a088ea2078cd92b0b8a0e78a32c5c082" value="2084"><label for="a088ea2078cd92b0b8a0e78a32c5c082">강서구</label></li>
                                                                            <li><input type="checkbox" id="44cd7a8f7f9f85129b9953950665064d" value="2120"><label for="44cd7a8f7f9f85129b9953950665064d">관악구</label></li>
                                                                            <li><input type="checkbox" id="801272ee79cfde7fa5960571fee36b9b" value="2092"><label for="801272ee79cfde7fa5960571fee36b9b">광진구</label></li>
                                                                            <li><input type="checkbox" id="e7e23670481ac78b3c4122a99ba60573" value="2104"><label for="e7e23670481ac78b3c4122a99ba60573">구로구</label></li>
                                                                            <li><input type="checkbox" id="a486cd07e4ac3d270571622f4f316ec5" value="2152"><label for="a486cd07e4ac3d270571622f4f316ec5">금천구</label></li>
                                                                            <li><input type="checkbox" id="e21e4e58ad9ab56e8a4634046da90113" value="2148"><label for="e21e4e58ad9ab56e8a4634046da90113">노원구</label></li>
                                                                            <li><input type="checkbox" id="9978b7063e297d84bb2ac8e46c1c845f" value="2172"><label for="9978b7063e297d84bb2ac8e46c1c845f">도봉구</label></li>
                                                                            <li><input type="checkbox" id="ef41d488755367316f04fc0e0e9dc9fc" value="2124"><label for="ef41d488755367316f04fc0e0e9dc9fc">동대문구</label></li>
                                                                            <li><input type="checkbox" id="d3a7f48c12e697d50c8a7ae7684644ef" value="2088"><label for="d3a7f48c12e697d50c8a7ae7684644ef">동작구</label></li>
                                                                            <li><input type="checkbox" id="f8c0c968632845cd133308b1a494967f" value="2060"><label for="f8c0c968632845cd133308b1a494967f">마포구</label></li>
                                                                            <li><input type="checkbox" id="54ff9e9e3a2ec0300d4ce11261f5169f" value="2080"><label for="54ff9e9e3a2ec0300d4ce11261f5169f">서대문구</label></li>
                                                                            <li><input type="checkbox" id="a96d3afec184766bfeca7a9f989fc7e7" value="2056"><label for="a96d3afec184766bfeca7a9f989fc7e7">서초구</label></li>
                                                                            <li><input type="checkbox" id="4e62e752ae53fb6a6eebd0f6146aa702" value="2136"><label for="4e62e752ae53fb6a6eebd0f6146aa702">성동구</label></li>
                                                                            <li><input type="checkbox" id="931af583573227f0220bc568c65ce104" value="2108"><label for="931af583573227f0220bc568c65ce104">성북구</label></li>
                                                                            <li><input type="checkbox" id="814a9c18f5abff398787c9cfcbf3d80c" value="2068"><label for="814a9c18f5abff398787c9cfcbf3d80c">송파구</label></li>
                                                                            <li><input type="checkbox" id="23c97e9cb93576e45d2feaf00d0e8502" value="2140"><label for="23c97e9cb93576e45d2feaf00d0e8502">양천구</label></li>
                                                                            <li><input type="checkbox" id="194cf6c2de8e00c05fcf16c498adc7bf" value="2096"><label for="194cf6c2de8e00c05fcf16c498adc7bf">영등포구</label></li>
                                                                            <li><input type="checkbox" id="6492d38d732122c58b44e3fdc3e9e9f3" value="2076"><label for="6492d38d732122c58b44e3fdc3e9e9f3">용산구</label></li>
                                                                            <li><input type="checkbox" id="a29d1598024f9e87beab4b98411d48ce" value="2112"><label for="a29d1598024f9e87beab4b98411d48ce">은평구</label></li>
                                                                            <li><input type="checkbox" id="f8bf09f5fceaea80e1f864a1b48938bf" value="2064"><label for="f8bf09f5fceaea80e1f864a1b48938bf">종로구</label></li>
                                                                            <li><input type="checkbox" id="07cb5f86508f146774a2fac4373a8e50" value="2072"><label for="07cb5f86508f146774a2fac4373a8e50">중구</label></li>
                                                                            <li><input type="checkbox" id="7dc1c7653ac42a05642a667959c12239" value="2144"><label for="7dc1c7653ac42a05642a667959c12239">중랑구</label></li>
                                    								</ul>
															<ul class="content" data-dist="b0ef0d66131a078e03dca528a125403b">
                                                                            <li><input type="checkbox" id="41e7637e7b6a9f27a98b84d3a185c7c0" value="2168"><label for="41e7637e7b6a9f27a98b84d3a185c7c0">강화군</label></li>
                                                                            <li><input type="checkbox" id="3a1dd98341fafc1dfe9bcf36360e6b84" value="2180"><label for="3a1dd98341fafc1dfe9bcf36360e6b84">남동구</label></li>
                                                                            <li><input type="checkbox" id="0234c510bc6d908b28c70ff313743079" value="2176"><label for="0234c510bc6d908b28c70ff313743079">부평구</label></li>
                                                                            <li><input type="checkbox" id="f6e794a75c5d51de081dbefa224304f9" value="2132"><label for="f6e794a75c5d51de081dbefa224304f9">연수구</label></li>
                                                                            <li><input type="checkbox" id="cefab442b1728a7c1b49c63f1a55781c" value="1756"><label for="cefab442b1728a7c1b49c63f1a55781c">중구</label></li>
                                    								</ul>
															<ul class="content scroll" data-dist="9c6b19a1f8ce82fedc29a96abe90f2ea">
                                                                            <li><input type="checkbox" id="537d9b6c927223c796cac288cced29df" value="1040"><label for="537d9b6c927223c796cac288cced29df">가평군</label></li>
                                                                            <li><input type="checkbox" id="b056eb1587586b71e2da9acfe4fbd19e" value="749"><label for="b056eb1587586b71e2da9acfe4fbd19e">고양시</label></li>
                                                                            <li><input type="checkbox" id="3dd9424294b0292b6e89ea2bba2e1144" value="2236"><label for="3dd9424294b0292b6e89ea2bba2e1144">고양시 일산동구</label></li>
                                                                            <li><input type="checkbox" id="4e2a6330465c8ffcaa696a5a16639176" value="2816"><label for="4e2a6330465c8ffcaa696a5a16639176">과천시</label></li>
                                                                            <li><input type="checkbox" id="130f1a8e9e102707f3f91b010f151b0b" value="2296"><label for="130f1a8e9e102707f3f91b010f151b0b">광명시</label></li>
                                                                            <li><input type="checkbox" id="1019c8091693ef5c5f55970346633f92" value="1044"><label for="1019c8091693ef5c5f55970346633f92">광주시</label></li>
                                                                            <li><input type="checkbox" id="1264a061d82a2edae1574b07249800d6" value="2792"><label for="1264a061d82a2edae1574b07249800d6">군포시</label></li>
                                                                            <li><input type="checkbox" id="4e2545f819e67f0615003dd7e04a6087" value="1096"><label for="4e2545f819e67f0615003dd7e04a6087">김포시</label></li>
                                                                            <li><input type="checkbox" id="b4a528955b84f584974e92d025a75d1f" value="701"><label for="b4a528955b84f584974e92d025a75d1f">남양주시</label></li>
                                                                            <li><input type="checkbox" id="4ab52371762b735317125e6446a51e8f" value="2804"><label for="4ab52371762b735317125e6446a51e8f">동두천시</label></li>
                                                                            <li><input type="checkbox" id="06997f04a7db92466a2baa6ebc8b872d" value="762"><label for="06997f04a7db92466a2baa6ebc8b872d">부천시</label></li>
                                                                            <li><input type="checkbox" id="bd5af7cd922fd2603be4ee3dc43b0b77" value="2128"><label for="bd5af7cd922fd2603be4ee3dc43b0b77">성남시</label></li>
                                                                            <li><input type="checkbox" id="4c5bcfec8584af0d967f1ab10179ca4b" value="2372"><label for="4c5bcfec8584af0d967f1ab10179ca4b">수원시 장안구</label></li>
                                                                            <li><input type="checkbox" id="eb0ecdb070a1a0ac46de0cd733d39cf3" value="2560"><label for="eb0ecdb070a1a0ac46de0cd733d39cf3">수원시 팔달구</label></li>
                                                                            <li><input type="checkbox" id="81c2f886f91e18fe16d6f4e865877cb6" value="2704"><label for="81c2f886f91e18fe16d6f4e865877cb6">시흥시</label></li>
                                                                            <li><input type="checkbox" id="d0010a6f34908640a4a6da2389772a78" value="2808"><label for="d0010a6f34908640a4a6da2389772a78">안산시 단원구</label></li>
                                                                            <li><input type="checkbox" id="f3b7e5d3eb074cde5b76e26bc0fb5776" value="2812"><label for="f3b7e5d3eb074cde5b76e26bc0fb5776">안산시 상록구</label></li>
                                                                            <li><input type="checkbox" id="e27a949795bbe863f31c3b79a2686770" value="2796"><label for="e27a949795bbe863f31c3b79a2686770">안성시</label></li>
                                                                            <li><input type="checkbox" id="d210cf373cf002a04ec72ee395f66306" value="2788"><label for="d210cf373cf002a04ec72ee395f66306">안양시 동안구</label></li>
                                                                            <li><input type="checkbox" id="b139aeda1c2914e3b579aafd3ceeb1bd" value="2828"><label for="b139aeda1c2914e3b579aafd3ceeb1bd">안양시 만안구</label></li>
                                                                            <li><input type="checkbox" id="881c6efa917cff1c97a74e03e15f43e8" value="2852"><label for="881c6efa917cff1c97a74e03e15f43e8">양주시</label></li>
                                                                            <li><input type="checkbox" id="f4dd765c12f2ef67f98f3558c282a9cd" value="1052"><label for="f4dd765c12f2ef67f98f3558c282a9cd">양평군</label></li>
                                                                            <li><input type="checkbox" id="2cad8fa47bbef282badbb8de5374b894" value="2100"><label for="2cad8fa47bbef282badbb8de5374b894">여주시</label></li>
                                                                            <li><input type="checkbox" id="8b3bac12926cc1d9fb5d68783376971d" value="2868"><label for="8b3bac12926cc1d9fb5d68783376971d">연천군</label></li>
                                                                            <li><input type="checkbox" id="2bc8ae25856bc2a6a1333d1331a3b7a6" value="2832"><label for="2bc8ae25856bc2a6a1333d1331a3b7a6">오산시</label></li>
                                                                            <li><input type="checkbox" id="fa14d4fe2f19414de3ebd9f63d5c0169" value="759"><label for="fa14d4fe2f19414de3ebd9f63d5c0169">용인시</label></li>
                                                                            <li><input type="checkbox" id="6e0e24295e8a86282cb559b860416812" value="2836"><label for="6e0e24295e8a86282cb559b860416812">의왕시</label></li>
                                                                            <li><input type="checkbox" id="08fe2621d8e716b02ec0da35256a998d" value="1016"><label for="08fe2621d8e716b02ec0da35256a998d">의정부시</label></li>
                                                                            <li><input type="checkbox" id="a78482ce76496fcf49085f2190e675b4" value="2840"><label for="a78482ce76496fcf49085f2190e675b4">이천시</label></li>
                                                                            <li><input type="checkbox" id="65cc2c8205a05d7379fa3a6386f710e1" value="1020"><label for="65cc2c8205a05d7379fa3a6386f710e1">파주시</label></li>
                                                                            <li><input type="checkbox" id="7cce53cf90577442771720a370c3c723" value="1048"><label for="7cce53cf90577442771720a370c3c723">평택시</label></li>
                                                                            <li><input type="checkbox" id="0fc170ecbb8ff1afb2c6de48ea5343e7" value="2800"><label for="0fc170ecbb8ff1afb2c6de48ea5343e7">포천시</label></li>
                                                                            <li><input type="checkbox" id="1587965fb4d4b5afe8428a4a024feb0d" value="1008"><label for="1587965fb4d4b5afe8428a4a024feb0d">하남시</label></li>
                                    								</ul>
															<ul class="content scroll" data-dist="a75837780b67fbec44ee3d142074e461">
                                                                            <li><input type="checkbox" id="537d9b6c927223c796cac288cced29df" value="1040"><label for="537d9b6c927223c796cac288cced29df">가평군</label></li>
                                                                            <li><input type="checkbox" id="584b98aac2dddf59ee2cf19ca4ccb75e" value="2052"><label for="584b98aac2dddf59ee2cf19ca4ccb75e">강남구</label></li>
                                                                            <li><input type="checkbox" id="4ba3c163cd1efd4c14e3a415fa0a3010" value="2116"><label for="4ba3c163cd1efd4c14e3a415fa0a3010">강동구</label></li>
                                                                            <li><input type="checkbox" id="1819932ff5cf474f4f19e7c7024640c2" value="2160"><label for="1819932ff5cf474f4f19e7c7024640c2">강북구</label></li>
                                                                            <li><input type="checkbox" id="a088ea2078cd92b0b8a0e78a32c5c082" value="2084"><label for="a088ea2078cd92b0b8a0e78a32c5c082">강서구</label></li>
                                                                            <li><input type="checkbox" id="41e7637e7b6a9f27a98b84d3a185c7c0" value="2168"><label for="41e7637e7b6a9f27a98b84d3a185c7c0">강화군</label></li>
                                                                            <li><input type="checkbox" id="b056eb1587586b71e2da9acfe4fbd19e" value="749"><label for="b056eb1587586b71e2da9acfe4fbd19e">고양시</label></li>
                                                                            <li><input type="checkbox" id="3dd9424294b0292b6e89ea2bba2e1144" value="2236"><label for="3dd9424294b0292b6e89ea2bba2e1144">고양시 일산동구</label></li>
                                                                            <li><input type="checkbox" id="4e2a6330465c8ffcaa696a5a16639176" value="2816"><label for="4e2a6330465c8ffcaa696a5a16639176">과천시</label></li>
                                                                            <li><input type="checkbox" id="44cd7a8f7f9f85129b9953950665064d" value="2120"><label for="44cd7a8f7f9f85129b9953950665064d">관악구</label></li>
                                                                            <li><input type="checkbox" id="130f1a8e9e102707f3f91b010f151b0b" value="2296"><label for="130f1a8e9e102707f3f91b010f151b0b">광명시</label></li>
                                                                            <li><input type="checkbox" id="1019c8091693ef5c5f55970346633f92" value="1044"><label for="1019c8091693ef5c5f55970346633f92">광주시</label></li>
                                                                            <li><input type="checkbox" id="801272ee79cfde7fa5960571fee36b9b" value="2092"><label for="801272ee79cfde7fa5960571fee36b9b">광진구</label></li>
                                                                            <li><input type="checkbox" id="e7e23670481ac78b3c4122a99ba60573" value="2104"><label for="e7e23670481ac78b3c4122a99ba60573">구로구</label></li>
                                                                            <li><input type="checkbox" id="1264a061d82a2edae1574b07249800d6" value="2792"><label for="1264a061d82a2edae1574b07249800d6">군포시</label></li>
                                                                            <li><input type="checkbox" id="a486cd07e4ac3d270571622f4f316ec5" value="2152"><label for="a486cd07e4ac3d270571622f4f316ec5">금천구</label></li>
                                                                            <li><input type="checkbox" id="4e2545f819e67f0615003dd7e04a6087" value="1096"><label for="4e2545f819e67f0615003dd7e04a6087">김포시</label></li>
                                                                            <li><input type="checkbox" id="3a1dd98341fafc1dfe9bcf36360e6b84" value="2180"><label for="3a1dd98341fafc1dfe9bcf36360e6b84">남동구</label></li>
                                                                            <li><input type="checkbox" id="b4a528955b84f584974e92d025a75d1f" value="701"><label for="b4a528955b84f584974e92d025a75d1f">남양주시</label></li>
                                                                            <li><input type="checkbox" id="e21e4e58ad9ab56e8a4634046da90113" value="2148"><label for="e21e4e58ad9ab56e8a4634046da90113">노원구</label></li>
                                                                            <li><input type="checkbox" id="9978b7063e297d84bb2ac8e46c1c845f" value="2172"><label for="9978b7063e297d84bb2ac8e46c1c845f">도봉구</label></li>
                                                                            <li><input type="checkbox" id="ef41d488755367316f04fc0e0e9dc9fc" value="2124"><label for="ef41d488755367316f04fc0e0e9dc9fc">동대문구</label></li>
                                                                            <li><input type="checkbox" id="4ab52371762b735317125e6446a51e8f" value="2804"><label for="4ab52371762b735317125e6446a51e8f">동두천시</label></li>
                                                                            <li><input type="checkbox" id="d3a7f48c12e697d50c8a7ae7684644ef" value="2088"><label for="d3a7f48c12e697d50c8a7ae7684644ef">동작구</label></li>
                                                                            <li><input type="checkbox" id="f8c0c968632845cd133308b1a494967f" value="2060"><label for="f8c0c968632845cd133308b1a494967f">마포구</label></li>
                                                                            <li><input type="checkbox" id="06997f04a7db92466a2baa6ebc8b872d" value="762"><label for="06997f04a7db92466a2baa6ebc8b872d">부천시</label></li>
                                                                            <li><input type="checkbox" id="0234c510bc6d908b28c70ff313743079" value="2176"><label for="0234c510bc6d908b28c70ff313743079">부평구</label></li>
                                                                            <li><input type="checkbox" id="54ff9e9e3a2ec0300d4ce11261f5169f" value="2080"><label for="54ff9e9e3a2ec0300d4ce11261f5169f">서대문구</label></li>
                                                                            <li><input type="checkbox" id="a96d3afec184766bfeca7a9f989fc7e7" value="2056"><label for="a96d3afec184766bfeca7a9f989fc7e7">서초구</label></li>
                                                                            <li><input type="checkbox" id="bd5af7cd922fd2603be4ee3dc43b0b77" value="2128"><label for="bd5af7cd922fd2603be4ee3dc43b0b77">성남시</label></li>
                                                                            <li><input type="checkbox" id="4e62e752ae53fb6a6eebd0f6146aa702" value="2136"><label for="4e62e752ae53fb6a6eebd0f6146aa702">성동구</label></li>
                                                                            <li><input type="checkbox" id="931af583573227f0220bc568c65ce104" value="2108"><label for="931af583573227f0220bc568c65ce104">성북구</label></li>
                                                                            <li><input type="checkbox" id="814a9c18f5abff398787c9cfcbf3d80c" value="2068"><label for="814a9c18f5abff398787c9cfcbf3d80c">송파구</label></li>
                                                                            <li><input type="checkbox" id="4c5bcfec8584af0d967f1ab10179ca4b" value="2372"><label for="4c5bcfec8584af0d967f1ab10179ca4b">수원시 장안구</label></li>
                                                                            <li><input type="checkbox" id="eb0ecdb070a1a0ac46de0cd733d39cf3" value="2560"><label for="eb0ecdb070a1a0ac46de0cd733d39cf3">수원시 팔달구</label></li>
                                                                            <li><input type="checkbox" id="81c2f886f91e18fe16d6f4e865877cb6" value="2704"><label for="81c2f886f91e18fe16d6f4e865877cb6">시흥시</label></li>
                                                                            <li><input type="checkbox" id="d0010a6f34908640a4a6da2389772a78" value="2808"><label for="d0010a6f34908640a4a6da2389772a78">안산시 단원구</label></li>
                                                                            <li><input type="checkbox" id="f3b7e5d3eb074cde5b76e26bc0fb5776" value="2812"><label for="f3b7e5d3eb074cde5b76e26bc0fb5776">안산시 상록구</label></li>
                                                                            <li><input type="checkbox" id="e27a949795bbe863f31c3b79a2686770" value="2796"><label for="e27a949795bbe863f31c3b79a2686770">안성시</label></li>
                                                                            <li><input type="checkbox" id="d210cf373cf002a04ec72ee395f66306" value="2788"><label for="d210cf373cf002a04ec72ee395f66306">안양시 동안구</label></li>
                                                                            <li><input type="checkbox" id="b139aeda1c2914e3b579aafd3ceeb1bd" value="2828"><label for="b139aeda1c2914e3b579aafd3ceeb1bd">안양시 만안구</label></li>
                                                                            <li><input type="checkbox" id="881c6efa917cff1c97a74e03e15f43e8" value="2852"><label for="881c6efa917cff1c97a74e03e15f43e8">양주시</label></li>
                                                                            <li><input type="checkbox" id="23c97e9cb93576e45d2feaf00d0e8502" value="2140"><label for="23c97e9cb93576e45d2feaf00d0e8502">양천구</label></li>
                                                                            <li><input type="checkbox" id="f4dd765c12f2ef67f98f3558c282a9cd" value="1052"><label for="f4dd765c12f2ef67f98f3558c282a9cd">양평군</label></li>
                                                                            <li><input type="checkbox" id="2cad8fa47bbef282badbb8de5374b894" value="2100"><label for="2cad8fa47bbef282badbb8de5374b894">여주시</label></li>
                                                                            <li><input type="checkbox" id="f6e794a75c5d51de081dbefa224304f9" value="2132"><label for="f6e794a75c5d51de081dbefa224304f9">연수구</label></li>
                                                                            <li><input type="checkbox" id="8b3bac12926cc1d9fb5d68783376971d" value="2868"><label for="8b3bac12926cc1d9fb5d68783376971d">연천군</label></li>
                                                                            <li><input type="checkbox" id="194cf6c2de8e00c05fcf16c498adc7bf" value="2096"><label for="194cf6c2de8e00c05fcf16c498adc7bf">영등포구</label></li>
                                                                            <li><input type="checkbox" id="2bc8ae25856bc2a6a1333d1331a3b7a6" value="2832"><label for="2bc8ae25856bc2a6a1333d1331a3b7a6">오산시</label></li>
                                                                            <li><input type="checkbox" id="6492d38d732122c58b44e3fdc3e9e9f3" value="2076"><label for="6492d38d732122c58b44e3fdc3e9e9f3">용산구</label></li>
                                                                            <li><input type="checkbox" id="fa14d4fe2f19414de3ebd9f63d5c0169" value="759"><label for="fa14d4fe2f19414de3ebd9f63d5c0169">용인시</label></li>
                                                                            <li><input type="checkbox" id="a29d1598024f9e87beab4b98411d48ce" value="2112"><label for="a29d1598024f9e87beab4b98411d48ce">은평구</label></li>
                                                                            <li><input type="checkbox" id="6e0e24295e8a86282cb559b860416812" value="2836"><label for="6e0e24295e8a86282cb559b860416812">의왕시</label></li>
                                                                            <li><input type="checkbox" id="08fe2621d8e716b02ec0da35256a998d" value="1016"><label for="08fe2621d8e716b02ec0da35256a998d">의정부시</label></li>
                                                                            <li><input type="checkbox" id="a78482ce76496fcf49085f2190e675b4" value="2840"><label for="a78482ce76496fcf49085f2190e675b4">이천시</label></li>
                                                                            <li><input type="checkbox" id="f8bf09f5fceaea80e1f864a1b48938bf" value="2064"><label for="f8bf09f5fceaea80e1f864a1b48938bf">종로구</label></li>
                                                                            <li><input type="checkbox" id="cefab442b1728a7c1b49c63f1a55781c" value="1756"><label for="cefab442b1728a7c1b49c63f1a55781c">중구</label></li>
                                                                            <li><input type="checkbox" id="07cb5f86508f146774a2fac4373a8e50" value="2072"><label for="07cb5f86508f146774a2fac4373a8e50">중구</label></li>
                                                                            <li><input type="checkbox" id="7dc1c7653ac42a05642a667959c12239" value="2144"><label for="7dc1c7653ac42a05642a667959c12239">중랑구</label></li>
                                                                            <li><input type="checkbox" id="65cc2c8205a05d7379fa3a6386f710e1" value="1020"><label for="65cc2c8205a05d7379fa3a6386f710e1">파주시</label></li>
                                                                            <li><input type="checkbox" id="7cce53cf90577442771720a370c3c723" value="1048"><label for="7cce53cf90577442771720a370c3c723">평택시</label></li>
                                                                            <li><input type="checkbox" id="0fc170ecbb8ff1afb2c6de48ea5343e7" value="2800"><label for="0fc170ecbb8ff1afb2c6de48ea5343e7">포천시</label></li>
                                                                            <li><input type="checkbox" id="1587965fb4d4b5afe8428a4a024feb0d" value="1008"><label for="1587965fb4d4b5afe8428a4a024feb0d">하남시</label></li>
                                    								</ul>
														
						</div>

						<button class="confirm red_fill border_radius soft" type="button" tabindex="-1">확인</button>
					</div>
				</div>
				<!-- genre search section -->
				<div id="nav_genre" class="search sel">
					<div class="input">
						<div class="selected">음식 종류 선택</div>
						<i class="icon searchbox arrow"></i>
					</div>
					<div class="box">
						<ul class="foods content">
                                                        
                            <li><input type="checkbox" id="food_all"><label for="food_all">음식 전체</label></li>
                                                            <li><input type="checkbox" id="c9f0f895fb98ab9159f51fd0297e236d" value="8"><label for="c9f0f895fb98ab9159f51fd0297e236d">한식</label></li>
							                                <li><input type="checkbox" id="6512bd43d9caa6e02c990b0a82652dca" value="11"><label for="6512bd43d9caa6e02c990b0a82652dca">양식</label></li>
							                                <li><input type="checkbox" id="37693cfc748049e45d87b8c7d8b9aacd" value="23"><label for="37693cfc748049e45d87b8c7d8b9aacd">중식</label></li>
							                                <li><input type="checkbox" id="c20ad4d76fe97759aa27a0c99bff6710" value="12"><label for="c20ad4d76fe97759aa27a0c99bff6710">일식</label></li>
							                                <li><input type="checkbox" id="b53b3a3d6ab90ce0268229151c9bde11" value="55"><label for="b53b3a3d6ab90ce0268229151c9bde11">아시아식</label></li>
							                                <li><input type="checkbox" id="1f0e3dad99908345f7439f8ffabdffc4" value="19"><label for="1f0e3dad99908345f7439f8ffabdffc4">컨템퍼러리</label></li>
							                                <li><input type="checkbox" id="1ff1de774005f8da13f42943881c655f" value="24"><label for="1ff1de774005f8da13f42943881c655f">뷔페</label></li>
							                                <li><input type="checkbox" id="8e296a067a37563370ded05f5a3bf3ec" value="25"><label for="8e296a067a37563370ded05f5a3bf3ec">구이</label></li>
							                                <li><input type="checkbox" id="45c48cce2e2d7fbdea1afc51c7c6ad26" value="9"><label for="45c48cce2e2d7fbdea1afc51c7c6ad26">술집</label></li>
							                                <li><input type="checkbox" id="093f65e080a295f8076b1c5722a46aa2" value="59"><label for="093f65e080a295f8076b1c5722a46aa2">카페/베이커리</label></li>
													</ul>

						<button class="confirm red_fill border_radius soft" type="button" tabindex="-1">확인</button>
					</div>
				</div>
				<!-- keyword search section -->
				<div id="nav_search" class="search">
					<input type="text" class="border_radius soft" value="">
					<i class="icon glass"></i>
					<img id="nav_loader" src="http://c1.poing.co.kr/original/images/nav_loader.gif">

					<!-- recommend section -->
					<div id="nav_recommend" class="border_radius soft">
						<ul class="keyword">
                                                            <li class="title">인기 검색어</li>
                                                                    <li class="item">
                                        <i class="icon number1"></i>
                                        <span class="area">스시 오마카세</span>
                                    </li>
                                                                    <li class="item">
                                        <i class="icon number2"></i>
                                        <span class="area">파스타</span>
                                    </li>
                                                                    <li class="item">
                                        <i class="icon number3"></i>
                                        <span class="area">스테이크</span>
                                    </li>
                                						</ul>
                                                <ul class="recent">
                            <li class="title">최근 본 매장
                                                                    <div>
                                        <i class="icon arrow xs prev"></i><span class="page">1</span><span>3</span><i class="icon arrow xs next"></i>
                                    </div>
                                                            </li>
                                                                <li class="item" data-id="45300">
                                        <span>옥상식당</span>
                                    </li>
                                                                <li class="item" data-id="35740">
                                        <span>만</span>
                                    </li>
                                                                <li class="item" data-id="44600">
                                        <span>킷사서울</span>
                                    </li>
                                                                <li class="item" data-id="45800">
                                        <span>몽상가 크레이프</span>
                                    </li>
                                                                <li class="item" data-id="28622">
                                        <span>라미띠에</span>
                                    </li>
                                                                <li class="item" data-id="45700" style="display: none;">
                                        <span>파인커피 로스터스</span>
                                    </li>
                                                                <li class="item" data-id="43700" style="display: none;">
                                        <span>에롤파</span>
                                    </li>
                                                                <li class="item" data-id="1423" style="display: none;">
                                        <span>오엔 카페 레스토랑</span>
                                    </li>
                                                                <li class="item" data-id="10200" style="display: none;">
                                        <span>도누가</span>
                                    </li>
                                                                <li class="item" data-id="30004" style="display: none;">
                                        <span>구루메 스시</span>
                                    </li>
                                                                <li class="item" data-id="10000" style="display: none;">
                                        <span>대구 반야월 막창</span>
                                    </li>
                                                                <li class="item" data-id="27955" style="display: none;">
                                        <span>줄라이</span>
                                    </li>
                                                    </ul>
					</div>
					<!-- auto_complete section -->
					<div id="nav_auto_complete" class="border_radius soft"></div>
				</div>
				<button type="button" id="nav_btn" class="search" tabindex="-1">검색</button>
				<!-- account section -->
				<div id="nav_account">
											<div id="nav_guest">
							<span id="nav_login">로그인</span>
							&nbsp;|&nbsp;
							<span id="nav_join">회원가입</span>
						</div>
									</div>
					</div>
	</div>
			<!-- menu section -->
		<div class="menu_wrap">
			<div id="nav_menu">
									<a href="/seoul/event" class="underline ">이벤트</a>
								<a href="/seoul/restaurant" class="underline ">추천 테마</a>
				<a href="/seoul/review" class="underline ">리뷰</a>
				<a href="/magazine" class="underline ">매거진<!--<i class="text new"></i>--></a>
			</div>
		</div>
	</div>
<!-- //navgation -->
			</div>

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
                    ${dto.r_name }				</span>
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
                    <div class="i_wrap "><span class="main">일단보류...</span><br><span class="sub"> OFF</span></div>
					<span class="reduced">${dto.discount }</span><br>
					<span class="original">${dto.before_dc }</span>
				</div>
									<div id="left_time">남은시간 <span>5일 17:41:04</span></div>
								<div class="dropbox">
					<div class="label"><span class="text">옵션을 선택해주세요.</span><span class="i_wrap"><i class="icon arrow small red down"></i></span></div>
					<ul class="items" style="display: none;">
						                            <li class="" data-id="17684" data-min="2" data-limit="5">
								<span class="option"><span>${dto.p_option }</span></span><span class="price">${dto.discount }</span>
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
	<div id="content" class="detail photo">
	<ul class="tab">
	<li class="item ">
		<a href="/Poing/product/detail.do?p_num=${param.p_num }&&type=detail">상세정보</a>
	</li>
	<li class="item selected">
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
	<div class="body first last">
		<div class="section">
			<div class="title">
				포토 by Poing
            </div>
            <!-- 큰 이미지 --> 
			<div class="slider PoingSlider_wrap">
				<div id="photo_slider" class="PoingSlider">
											<button class="empty i_wrap slice" data-type="poing.popup.photoReviewViewerPopup" data-index="0" data-image-selector="#photo_slider>.i_wrap>i" data-origin-selector="#content.detail.photo>.body>.section>.origin>a" tabindex="-1" style="top: 0px; left: -100%;">
                            <i class="image" style="background-image:url(${dto.photo_img})" title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
						</button>
											<button class="empty i_wrap slice" data-type="poing.popup.photoReviewViewerPopup" data-index="1" data-image-selector="#photo_slider>.i_wrap>i" data-origin-selector="#content.detail.photo>.body>.section>.origin>a" tabindex="-1" style="top: 0px; left: -100%;">
                            <i class="image" style="background-image:url(${dto.editer_img})" title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
						</button>
										
									</div>
				<span class="prev i_wrap"><i class="icon slider prev"></i></span>
				<span class="next i_wrap"><i class="icon slider next"></i></span>
			</div>
			<div class="origin">
									<a href="" target="_blank" data-index="0" style="display: none;"></a>
									<a href="" target="_blank" data-index="1" style="display: none;"></a>
									<a href="" target="_blank" data-index="2" style=""></a>
									<a href="" target="_blank" data-index="3" style="display:none"></a>
									<a href="" target="_blank" data-index="4" style="display:none"></a>
									<a href="" target="_blank" data-index="5" style="display:none"></a>
									<a href="" target="_blank" data-index="6" style="display:none"></a>
									<a href="" target="_blank" data-index="7" style="display:none"></a>
									<a href="" target="_blank" data-index="8" style="display:none"></a>
									<a href="" target="_blank" data-index="9" style="display:none"></a>
									<a href="" target="_blank" data-index="10" style="display:none"></a>
									<a href="" target="_blank" data-index="11" style="display:none"></a>
							</div>
			<div class="count">
				<span>3</span> / 12            </div>
            <!-- 이미지 아래 작은 이미지 -->
			<div class="nav_wrap">
				<div class="nav">
					<div class="slice" style="left: 0px;">
                                                    <div class="i_wrap" data-index="0">
                                <i class="image" style="background-image:url(${dto.photo_img})" title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
							</div>
						                            <div class="i_wrap" data-index="1">
                                <i class="image" style="background-image:url(${dto.editer_img})" title="킨카 스시바 이자카야 청담 티켓 이미지"></i>
							</div>
						                           
											</div>
				</div>
				<span class="prev">&lt;</span>
				<span class="next">&gt;</span>
			</div>
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
				<a class="i_wrap" href="/product/detail/5512">
					<i class="image border_radius soft" style="background-image:url(http://c2.poing.co.kr/MRI-original/MjAxOTAz/15535769155c99b3d3cb90d.png)"></i>
				</a>
				<div class="desc">					
					<div class="name">육미학</div>
					<div class="comment">청담 '육미학' 포잉 단독 할인 프로모션</div>
				</div>
			</li>
					<li class="item">
				<a class="i_wrap" href="/product/detail/5892">
					<i class="image border_radius soft" style="background-image:url(http://c2.poing.co.kr/MRI-original/MjAxOTAx/15475285205c3d6948a1ac5.png)"></i>
				</a>
				<div class="desc">					
					<div class="name">여미</div>
					<div class="comment">YEOMI가 선보이는  봄맞이 코스</div>
				</div>
			</li>
			</ul>
			<a href="/seoul/product/list">티켓 더보기</a>
	</div></div>
</div>
			</div>

					<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	
		<jsp:include page="/WEB-INF/layout/popup_wrap.jsp"></jsp:include>

		<jsp:include page="/WEB-INF/layout/javascript/default.jsp"></jsp:include>
		</div>

		<!-- script -->
				<div id="scripts">
			<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//www.google-analytics.com/analytics.js','ga');ga("create","UA-40354247-8","auto",{allowLinker:!0}),ga("require","linker"),ga("linker:autoLink",["mypoing.com"]),garef=document.referrer.split(/[\/\?]/),garef.length>1&&"m.poing.co.kr"===garef[2]&&ga("set","referrer","http://"+garef[5]+"."+garef[6]),delete garef,ga("send","pageview");

var console=console||{"log":function(){}};

(function (old) {
    var dec = 0.12 .toLocaleString().charAt(1),
        tho = dec === "." ? "," : ".";

    if (1000 .toLocaleString() !== "1,000.00") {
        Number.prototype.toLocaleString = function () {
           var neg = this < 0,
               f = this.toFixed(2).slice(+neg);

           return (neg ? "-" : "") 
                  + f.slice(0,-3).replace(/(?=(?!^)(?:\d{3})+(?!\d))/g, tho) 
                  + dec + f.slice(-2);
        }
    }
})(Number.prototype.toLocaleString);

$(".review_wrap>.review>.write>textarea").on("keydown", function(e)
{
    if(e.keyCode === 13)
    {
        var text = $(this).val();
        if(text.length > 0)
            $.proxy(poing.reviews.comment.send2, this)(true);

        return false;
    }
});
$(".review > .body > .text").on("click", ">a", function() {
    var $context = $(this).parent();
    
    $(this).remove();
    $context.append( $context.attr('data-truncated').replace(/[\n\r]/g, '<br>'));
    $context.attr('data-truncated', null); 
});
$(".review .time:not(.loaded)").each(function(){
    $(this)
        .addClass('loaded')
        .text( moment($(this).text()).locale('ko').fromNow() )
        .show();
});

$("body").on("beforeShow", ".shading_bg", function()
{
	if($(this).is(":visible"))
	{
		return;
	}

	if($(this).hasClass("with_nav"))
	{
		$("#nav_wrap_shading").show();
		$("#header").addClass("shading high");
	}

	if(!$(this).hasClass("scroll_enable"))
	{
		$("body").addClass("popup_state");

		if(this.id != "nav_wrap_shading")
		{
			var count = $("body").attr("data-count");
			if(count == null || count <= 0)
			{
				count = 1;
			}
			else
			{
				count = parseInt(count) + 1;
			}
			$("body").attr("data-count", count);
		}
	}
});

$("body").on("beforeHide", ".shading_bg", function()
{
	if(!$(this).is(":visible"))
	{
		return;
	}
	
	if($(this).hasClass("with_nav"))
	{
		$("#nav_wrap_shading").hide();
		$("#header").removeClass("shading high");
	}

	if(!$(this).hasClass("scroll_enable"))
	{
		var count = parseInt($("body").attr("data-count")) - 1;
		$("body").attr("data-count", count);
		if(count <= 0)
		{
			$("body").removeClass("popup_state");
		}
	}
});

$("body").on("beforeShow", ".confirmPopup", function()
{
	$("body").addClass("popup_state");

	var count = $("body").attr("data-count");
	if(count == null || count <= 0)
	{
		count = 1;
	}
	else
	{
		count = parseInt(count) + 1;
	}
	$("body").attr("data-count", count);
});

$("body").on("beforeHide", ".confirmPopup", function()
{
	var count = parseInt($("body").attr("data-count")) - 1;
	$("body").attr("data-count", count);
	if(count <= 0)
	{
		$("body").removeClass("popup_state");
	}
});

function shadingHideEvent(selector, beforeFunc, afterFunc)
{
	if($(selector).hasClass("with_nav"))
	{
		$("#nav_wrap_shading").on("click", function()
		{
			$(selector).click();
		});
	}

	if(typeof beforeFunc == "undefined")
	{
		beforeFunc = function() {};
	}
	if(typeof afterFunc == "undefined")
	{
		afterFunc = function() {};
	}
	$(document).on("keydown", function(e)
	{
		if(!inFocus && e.keyCode === 27)
		{
			$(selector).click();
		}
	});
	$(selector).on("click", function()
	{
		beforeFunc();
		$(this).hide();
		afterFunc();
	});
}

$(".sort_wrap").on("selectstart", function()
{
	return false;
});

$("a[href='/timeline/']").on("click", function()
{
	return false;
});

var inFocus = false;
$("body").on("focus", "input, textarea", function()
{
	inFocus = true;
});

$("body").on("blur", "input, textarea", function()
{
	inFocus = false;
});

var ie = (function() {
    var undef,
        v = 3,
        div = document.createElement('div'),
        all = div.getElementsByTagName('i');

    while(
        div.innerHTML = '<!--[if gt IE ' + (++v) + ']><i></i><![endif]-->',
        all[0]
    );

    return v > 4 ? v : undef;
}());

if(ie < 9)
{
	$("i,div,span,a").each(function()
	{
		var img = $(this).css("background-image");
		if(img != "none" && $(this).hasClass('nf') === false)
		{
			img = img.substr(4, img.length - 5);
			if($(this).css("filter") != "auto" && img.indexOf("/images/spiffygif_52x52.gif") == -1)
			{
				$(this).css("filter", $(this).css("filter")+" progid:DXImageTransform.Microsoft.AlphaImageLoader(src="+img+",sizingMethod='scale')");
			}
			else if(img.indexOf("/images/recent_sheet.png") == -1 && img.indexOf("/images/user/gage_full.png") == -1 && img.indexOf("/images/user/gage_nofull.png") == -1 && img.indexOf("/images/checkbox.png") == -1 && img.indexOf("/images/spiffygif_52x52.gif") == -1)
			{
				$(this).css("filter", "progid:DXImageTransform.Microsoft.AlphaImageLoader(src="+img+",sizingMethod='scale')");
			}
		}
	});
}



$(".dropbox>.label").on("click", function(e)
{
	e.stopPropagation();
	$(this).parent().children(".items").toggle();
	if($(this).children(".i_wrap").children(".arrow").hasClass("up"))
	{
		$(this).children(".i_wrap").children(".arrow").removeClass("up");
		$(this).children(".i_wrap").children(".arrow").addClass("down");
	}
	else if($(this).children(".i_wrap").children(".arrow").hasClass("down"))
	{
		$(this).children(".i_wrap").children(".arrow").addClass("up");
		$(this).children(".i_wrap").children(".arrow").removeClass("down");
	}
});

$(".dropbox>.items>li").on("click", function()
{
	$(this).parents(".dropbox").children(".label").children(".i_wrap").children(".arrow").removeClass("up");
	$(this).parents(".dropbox").children(".label").children(".i_wrap").children(".arrow").addClass("down");
});

$(".dropbox>.items").on("click", function(e)
{
	e.stopPropagation();
});

$(document).on("click", function(e)
{
	$(".dropbox>.items").hide();
});


var poing =
{
	move: function(uri, params) {
		if(!params)
			params = {};
		
		var lo = "서울 / 수도권";
		if(lo)
			params['lo'] = "서울 / 수도권";

		var query = $.param(params);
		if(query.length > 0)
			location.href = uri + "?" + decodeURIComponent(query);
		else
			location.href = uri;
	},
	addEvent: function(selector, event, func)
	{
		$("body").on(event, " "+selector, func);
	},
	restaurants:
	{
		// 레스토랑 찜하기
		favorite: function()
		{
			if(poing.account.checkLoginState() == true)
			{
				var type = null;

				if($(this).hasClass("on"))
					type = "off";
				else
					type = "on";

				$.ajax({
					url: "/restaurant/ajaxfavorite",
					method:'post',
					dataType:'json',
					data:
					{
						"type":type,
						"id":$(this).data("id")
					},
					//context:this,
					success:function(res)
					{
                        var data = $.parseQuery(this.data);
                        var btn = $("button[data-type='poing.restaurants.favorite'][data-id="+data.id+"]");

                        if(data.type == 'on')
						{
							btn.addClass('on')
							    .children("i").addClass('on');
							$.popup("confirm", {'text': "매장을 찜하셨습니다.", 'alert':true});
						}
						else if(data.type == 'off')
						{
							btn.removeClass('on')
							    .children("i").removeClass('on');
							$.popup("confirm", {'text': "찜을 취소하셨습니다.", 'alert':true});
						}
					}
				});
			}
		}
	},

	reviews:
	{
		isUploading: false,
        addImage: function() {
            var $input = $( $(this).attr('data-target') );
            var $list = $(this).siblings("ul.list");

            $input.one("change", function() {
                var files = $input.prop('files');
                var reader = new FileReader();
                var idx = 0;

                if(files.length + $list.children().length > 20) {
                    $.popup("confirm", {'text': "사진 등록은 최대 20장까지 가능합니다.", single: true});
                    return false;
                }
            
                function uploadDone() {
                    var $item = $("<li>");
                    $item.css('background-image', 'url(' + reader.result + ')');
                    $item.append($("<i>", {class: "icon remove"}));
                    $item.prop('files', files[idx]);
    
                    $list.append($item);

                    ++idx;
                    if(idx < files.length) 
                       reader.readAsDataURL(files[idx]); 
                }
                
                reader.onloadend = uploadDone;
                reader.readAsDataURL(files[0]);
            });
            $input.click();

            return false;
        },
		upload: function()
		{
			if(poing.account.checkLoginState() == true)
			{
				if(poing.reviews.isUploading == true)
				{
					noticePopupInit({message:"리뷰를 등록하고 있습니다.<br><br>잠시만 기다려주세요."});
				}

				var id = $(this).data("id");
				var grade = eval($(this).data("grade")).data("grade");
				var text = eval($(this).data("text")).val();
                var photo = eval($(this).data("photo")).map(function() {
                    return $(this).prop('files');
                }).get();

				if(grade == 0)
				{
					noticePopupInit({message:"평점을 꼭 매겨주세요!"});
				}
				else if(text.length < 30 && photo.length == 0)
				{
					noticePopupInit({message:"사진이 없다면 리뷰는<br><br>최소 30자 이상이어야 합니다."});
				}
				else
				{
                    poing.reviews.actions.temp.pause();
					poing.reviews.isUploading = true;
					$.ajax({
						url: "/review/ajaxsendreview",
						method: "post",
						dataType: "json",
						data: {
							"id": id,
							"grade": grade,
							"text": text,
							"photo_cnt": photo.length
						},
						success: function(res)
						{
							if(res.data.error != null)
							{
								if(res.data.error.message == "to often")
									noticePopupInit({message:"리뷰를 너무 자주 올리셨습니다.<br><br>1분 후 시도해주세요."});
								else if(res.data.error.message == "Not Found")
									noticePopupInit({message:"매장을 찾을 수 없습니다."});

								poing.reviews.isUploading = false;
                                poing.reviews.actions.temp.resume();
							} else if(res.data.review != null)
                            {
								var reviewId = res.data.review.id;
                                var reviewPhotoSendCount = 0;

                                function callAPI(i) {
                                    var form = new FormData();
                                    form.append("id", reviewId);
                                    form.append("image", photo[i]);
                                    form.append("index", i+1);

                                    $.ajax({
                                        url: "/review/ajaxsendreviewphoto",
                                        method: "post",
                                        contentType: false,
                                        processData: false,
                                        data: form,
                                        success: function(res)
                                        {
                                            reviewPhotoSendCount++;

                                            if(photo.length == reviewPhotoSendCount)
                                            {
                                                ga('send', 'event', 'KPI', '[KPI]리뷰성공');
                                                noticePopupInit({message:"리뷰가 등록되었습니다."});
                                                poing.reviews.actions.temp.delete();
                                                poing.reviews.isUploading = false;
                                                location.reload();
                                            } else
                                                callAPI(reviewPhotoSendCount);
                                        }
                                    });
                                }

                                callAPI(0);

								if(photo.length == 0)
								{
									ga('send', 'event', 'KPI', '[KPI]리뷰성공');
                                    noticePopupInit({message:"리뷰가 등록되었습니다."});
                                    poing.reviews.actions.temp.delete();
									poing.reviews.isUploading = false;
                                    window.onbeforeunload = null;
									location.reload();
								}
							}
						}
					});
				}
			}
		},

		actions:
		{
			auth:
			{
				modify: function()
				{
					if(poing.account.checkLoginState() == true)
					{
						var id = $(this).data("id");

						var parent_user = $(this).parents(".review_detail").children(".user");
						var parent_review = $(this).parents(".review");
						
						var grade_wrap = parent_user.children(".grade");
						var grade = grade_wrap.children("[data-id="+id+"]");
						var newgrade = "<i class='icon star medium odd ' data-id='review_modify' data-index='0' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='1' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='2' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='3' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='4' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='5' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='6' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='7' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='8' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='9' style='cursor:pointer'></i><span style='display:inline-block;vertical-align:super;' data-id='review_modify' data-grade='0'></span>";
						var time_wrap = parent_review.children(".time");
						var text_wrap = parent_review.children(".text");
						var text = text_wrap.children("pre");
						var textarea = $("<textarea>").addClass("border_radius soft").val(text.html());
						var cancel_button = $("<button>").addClass("gray_fill border_radius soft").attr("data-type", "poing.reviews.actions.auth.modify_cancel").attr("data-id", id).html("취소하기");
						var submit_button = $("<button>").addClass("red_fill border_radius soft").attr("data-type", "poing.reviews.actions.auth.modify_submit").attr("data-id", id).html("리뷰 수정하기");

						var action = parent_review.children(".action");

						grade.hide();
						time_wrap.hide();
						text.hide();
						action.hide();

						grade_wrap.append(newgrade);
						text_wrap.append(textarea);
						text_wrap.append(cancel_button);
						text_wrap.append(submit_button);

						var grade_number = grade_wrap.children("span[data-id="+id+"]").data("grade");
						newgrade = grade_wrap.children("i.star[data-id=review_modify]");
						for(var i = 0; i < grade_number/10; i++)
						{
							$(newgrade[i]).addClass("active");
						}
						grade_wrap.children("span[data-id=review_modify]").attr("data-grade", grade_number).html(String(grade_number/20)+"점 - "+ratingText[grade_number/10 - 1]);
						newgrade.on("click", function()
						{
							var index = $(this).data("index");

							for(var i = 0; i <= index; i++)
							{
								$(newgrade[i]).addClass("active");
							}
							for(var i = index+1; i <= 9; i++)
							{
								$(newgrade[i]).removeClass("active");
							}

							grade_wrap.children("span[data-id=review_modify]").attr("data-grade", (index+1)*10).html(String((index+1)/2)+"점 - "+ratingText[index]);
						});
					}
				},

				modify_cancel: function()
				{
					var id = $(this).data("id");

					var parent_user = $(this).parents(".review_detail").children(".user");
					var parent_review = $(this).parents(".review");
					
					var grade_wrap = parent_user.children(".grade");
					var grade = grade_wrap.children("[data-id="+id+"]");
					var newgrade = grade_wrap.children("[data-id=review_modify]");
					var time_wrap = parent_review.children(".time");
					var text_wrap = parent_review.children(".text");
					var text = text_wrap.children("pre");

					var action = parent_review.children(".action");
					
					grade.show();
					newgrade.remove();
					time_wrap.show();
					text.show();
					text_wrap.children("textarea, button").remove();
					action.show();
				},

				modify_submit: function()
				{
					var id = $(this).data("id");

					var parent_user = $(this).parents(".review_detail").children(".user");
					var parent_review = $(this).parents(".review");
					
					var grade_wrap = parent_user.children(".grade");
					var grade = grade_wrap.children("[data-id="+id+"]");
					var newgrade = grade_wrap.children("[data-id=review_modify]");
					var newgrade_number = grade_wrap.children("span[data-id=review_modify]").data("grade");
					var time_wrap = parent_review.children(".time");
					var text_wrap = parent_review.children(".text");
					var text = text_wrap.children("pre");

					var action = parent_review.children(".action");

					$.ajax({
						url: "/review/ajaxmodifyreview",
						method: "post",
						dataType: "json",
						data: {
							"id": id,
							"grade": newgrade_number,
							"text": text_wrap.children("textarea").val()
						},
						success: function(res)
						{
							for(var i = 0; i < newgrade_number/10; i++)
							{
								$(grade[i]).addClass("active");
							}
							for(var i = newgrade_number/10; i < 10; i++)
							{
								$(grade[i]).removeClass("active");
							}
							grade_wrap.children("span[data-id="+id+"]").html(String(newgrade_number/20)+"점");
							text.html(text_wrap.children("textarea").val());
							noticePopupInit({message:"리뷰가 수정되었습니다."});

							grade.show();
							newgrade.remove();
							if(parent_review.children(".time").children("span").length == 0)
							{
								parent_review.children(".time").append("<br>");
								parent_review.children(".time").append("<span>");
							}
							parent_review.children(".time").children("span").html("몇초 전 수정됨");
							time_wrap.show();
							text.show();
							text_wrap.children("textarea, button").remove();
							action.show();
						}
					});
				},
				modify2: function()
				{
					if(poing.account.checkLoginState() == true)
					{
						var id = $(this).data("id");
                        var review = $(this).closest(".review");
                        var grade_wrap = review.find(".grade");
                        var grade = grade_wrap.find("span").data('grade');
                        var text_wrap = review.find(".body>.text");
                        var text = text_wrap
                                    .clone()
                                    .children("a")
                                    .remove()
                                    .end()
                                    .html().replace(/[\n\r]/g, '').replace(/<br>/g, '\n').trim();

                        if(text_wrap.attr('data-truncated')) 
                            text += text_wrap.attr('data-truncated');

                        grade_wrap.append("<i class='icon star medium odd ' data-id='review_modify' data-index='0' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='1' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='2' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='3' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='4' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='5' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='6' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='7' style='cursor:pointer'></i><i class='icon star medium odd ' data-id='review_modify' data-index='8' style='cursor:pointer'></i><i class='icon star medium even ' data-id='review_modify' data-index='9' style='cursor:pointer'></i><span style='display:inline-block;vertical-align:super;' data-id='review_modify' data-grade='0'></span>")
                            .children(":not([data-id='review_modify'])").hide();
                        text_wrap
                            .addClass('editing')
                            .append( $("<textarea>", {class: "border_radius soft edit",
                                                      text: text}))
                            .append( $("<button>", {class: "gray_fill border_radius soft edit",
                                                    'data-type': "poing.reviews.actions.auth.modify_cancel2",
                                                    'data-id': id,
                                                    text: "취소하기"}))
                            .append( $("<button>", {class: "red_fill border_radius soft edit",
                                                    'data-type': "poing.reviews.actions.auth.modify_submit2",
                                                    'data-id': id,
                                                    text: "리뷰 수정하기"}));
                        
                        review.find(".action, .time").hide();

                        grade_wrap.children("[data-id='review_modify']")
                            .on("click", function() {
                                var idx = $(this).data("index");
                                
                                $(this).siblings("i[data-id='review_modify']").andSelf()
                                    .each(function() {
                                         if( $(this).data('index') <= idx )
                                            $(this).addClass('active');
                                         else
                                            $(this).removeClass('active');
                                    });
                                
                                $(this).siblings("span[data-id='review_modify']").data('grade', (idx+1)*10).text( String((idx+1)/2) + "점 - " + ratingText[idx] );
                             })
                            .each(function(idx) {
                                if(idx < grade/10) 
                                    $(this).addClass('active');
                            })
                            .siblings("span[data-id='review_modify']").data('grade', grade).text( String(grade/20) + "점 - " + ratingText[grade/10 -1] );
					}
				},

				modify_cancel2: function()
			    {	
                    var id = $(this).data("id");
                    var review = $(this).closest(".review");
                    var grade_wrap = review.find(".grade");
                    var grade = grade_wrap.find("span").data('grade');
                    var text_wrap = review.find(".text");
                    
                    grade_wrap.children().show().filter("[data-id='review_modify']").remove();
                    text_wrap.removeClass('editing').children(".edit").remove();
                    review.find(".action, .time").show();
				},

				modify_submit2: function()
                {
                    var id = $(this).data("id");
                    var review = $(this).closest(".review");
                    var grade_wrap = review.find(".grade");
                    var grade = grade_wrap.find("span[data-id='review_modify']").data('grade');
                    var text_wrap = review.find(".text");
                    var text = text_wrap.children("textarea").val();
                    
                    grade_wrap.children().show()
                        .filter("[data-id='review_modify']").remove();
                    review.find(".action, .time").show();

                    $.ajax({
                        url: "/review/ajaxModifyReview",
                        method: "POST",
                        data: {
                            id: id,
                            grade: grade,
                            text: text
                        },
                        success: function(res) {
                            $(grade_wrap)
                                .children("span").text( String(grade/20)+"점 " ).data('grade', grade)
                                .siblings("i")
                                .each(function() {
                                     if( $(this).data('index') < grade/10 )
                                        $(this).addClass('active');
                                     else
                                        $(this).removeClass('active');
                                });
                            text_wrap.attr('data-truncated', null)
                                .removeClass('editing')
                                .html( text.replace(/[\n\r]/g, '<br>') )
                                .css('max-height', text_wrap.get(0).scrollHeight);
                            review.find(".time").addClass('edited').text("몇초 전");
							noticePopupInit({message:"리뷰가 수정되었습니다."});
                        }
                    });
				},

				// 리뷰 삭제하기 : button에 리뷰 id 필요
				remove: function()
				{
					if(poing.account.checkLoginState() == true)
					{
						var id = $(this).data("id");

						confirmPopupInit({
							message:"리뷰를 삭제하시겠습니까?",
							ok:function() {
								$.ajax({
									url: "/review/ajaxremovereview",
									method: "post",
									dataType: "json",
									data: {"id": id},
									success: function(res)
									{
										if(res.data == "true" || res.data == true)
										{
											noticePopupInit({message:'리뷰를 삭제하셨습니다.'});
											location.reload(true);
										}
										else
										{
											noticePopupInit({message:'리뷰를 삭제하는데 실패하였습니다.'});
										}
									}
								});
							}
						});
					}
				}
			},
			user:
			{
				// 리뷰 좋아요 : button, span에 data-id에 리뷰 id 필요
				like: function()
				{
					if(poing.account.checkLoginState() == true)
					{
						var type = null;

						if($(this).hasClass("on"))
						{
							type = "off";
						}
						else
						{
							type = "on";
						}

						$.ajax({
							url: "/review/ajaxlike",
							method:'post',
							dataType:'json',
							data:
							{
								"type":type,
								"id":$(this).data("id")
							},
							context:this,
							success:function(res)
							{
								if(res.status && !$(this).hasClass("on"))
								{
									var selector = $("button[data-type='poing.reviews.actions.user.like'][data-id="+$(this).data("id")+"]");
									selector.addClass('on');
									selector.children("i").addClass('on');
                                    selector.find("span:not(.text)").text(res.data.like_count);
									$("span[data-type='poing.reviews.actions.user.like'][data-id="+$(this).data("id")+"]").html(res.data.like_count);
									noticePopupInit({message: "리뷰를 좋아요 하셨습니다."});
								}
								else if(res.status && $(this).hasClass("on"))
								{
									var selector = $("button[data-type='poing.reviews.actions.user.like'][data-id="+$(this).data("id")+"]");
									selector.removeClass('on');
									selector.children("i").removeClass('on');
                                    selector.find("span:not(.text)").text(res.data.like_count);
									$("span[data-type='poing.reviews.actions.user.like'][data-id="+$(this).data("id")+"]").html(res.data.like_count);
									noticePopupInit({message: "좋아요를 취소하셨습니다."});
								}
								else
								{
									noticePopupInit({message: "리뷰를 좋아요 하는데 실패했습니다."});
								}
							}
						});
					}
				},
				// 리뷰 찜하기 : button, span에 data-id에 리뷰 id 필요
				favorite: function()
				{
					if(poing.account.checkLoginState() == true)
					{
						var type = null;

						if($(this).hasClass("on"))
						{
							type = "off";
						}
						else
						{
							type = "on";
						}

						$.ajax({
							url: "/review/ajaxfavorite",
							method:'post',
							dataType:'json',
							data:
							{
								"type":type,
								"id":$(this).data("id")
							},
							context:this,
							success:function(res)
							{
								if(res.status && !$(this).hasClass("on"))
								{
									var selector = $("button[data-type='poing.reviews.actions.user.favorite'][data-id="+$(this).data("id")+"]");
									selector.addClass('on');
									selector.children("i").addClass('on');
                                    selector.find("span:not(.text)").text(res.data.selection_review_count);
									$("span[data-type='poing.reviews.actions.user.favorite'][data-id="+$(this).data("id")+"]").html(res.data.selection_review_count);
									$.popup("confirm", {'text': "리뷰를 찜하셨습니다.", 'alert':true});
								}
								else if(res.status && $(this).hasClass("on"))
								{
									var selector = $("button[data-type='poing.reviews.actions.user.favorite'][data-id="+$(this).data("id")+"]");
									selector.removeClass('on');
									selector.children("i").removeClass('on');
                                    selector.find("span:not(.text)").text(res.data.selection_review_count);
									$("span[data-type='poing.reviews.actions.user.favorite'][data-id="+$(this).data("id")+"]").html(res.data.selection_review_count);
									$.popup("confirm", {'text': "찜을 취소하셨습니다.", 'alert':true});
								}
								else
								{
									$.popup("confirm", {'text': "리뷰를 찜하지 못했습니다.", 'alert':true});
								}
							}
						});
					}
				},
				comment: function()
				{
					var id = $(this).data("id");

					$(this).toggleClass("on");
					$(this).children("i").toggleClass("on");
					$(this).parents(".review").children(".comment_list[data-id="+id+"]").toggleClass("on");
                },
				loadComments: function(forceUpdate)
				{
					var id = $(this).data("id");
                    var isOpen = !$(this).hasClass('on') || !!forceUpdate;
                    var list = $(this).closest(".review");
                    var isPopup = ($(this).attr('data-target') === 'popup');
                    var btn = $(this);

					btn.toggleClass("on", isOpen);
					btn.children("i").toggleClass("on", isOpen);
                    list.children(".comment_list").toggleClass("on", isOpen);

                    if( isOpen ) {
                        list.find(".comment_list>.comment").addClass('old');
						$.ajax({
							url: '/review/getComments',
							type: 'POST',
							data: {id: id},
                            success: function(res) {
								res = $.parseJSON(res);

								var review_id = $.parseQuery(this.data).id;
                                var review;
                                var target;

                                btn.find("span").text( res.length );
                                if(isPopup) {
                                    review = $(".review_detail[data-id='" + review_id + "'] > .review");
                                    target = $(".comment_list[data-id='" + review_id + "']");
                                } else {
                                    review = $(".review[data-id='" + review_id + "']");
                                    target = review.children(".comment_list");
                                }

								if(res) {
                                    target.parent(".review").find("button.comment>p>span").text( res.length );
									for(var i = 0; i < res.length; ++i) {
                                        res[i].me = (res[i].user_id == '');
										var parse = new EJS({url: '/template/review_comment.ejs'}).render(res[i]);
										target.append(parse);
									}
								}
								review.find(".time:not(.loaded)").each(function(){
									$(this)
										.addClass('loaded')
										.text( moment($(this).text()).locale('ko').fromNow() )
										.show();
								});
                                target.children(".old").remove();
							}
						});
					}
				},
                showLikers: function(){
                    $.popup("review_likers", {id: $(this).data('id')});
                }
            },
            share: {
                dropdown: function() {
                    var $btn = $(this);
                    $btn.toggleClass('on');

                    var isShown = $(this).hasClass('on');
                    if(isShown) {
                        $(window).one("click", function() {
                            $btn.removeClass('on');
                        });
                    }
                },
                
                getReviewMetadata: function() {
                    var $review = $( $(this).closest(".review_detail")[0] || $(this).closest(".review")[0] );
                    
                    var meta = {
                        title: $review.attr('data-place-name') + " | Poing 리뷰",
                        url: location.origin + '/restaurant/detail/' + $review.attr('data-place') + '?review=' + $review.attr('data-id')
                    };

                    return meta;
                },
                facebook: function() {
                    var meta = poing.reviews.actions.share.getReviewMetadata.call(this);

                    FB.ui({
                        method : "feed",
                        link : meta.url,
                        display : 'popup',
                    }, function(response){});
                },
                twitter: function() {
                    var meta = poing.reviews.actions.share.getReviewMetadata.call(this);
                    window.open('https://twitter.com/intent/tweet?url='+encodeURIComponent(meta.url)+'&text=' + encodeURIComponent(meta.title));
                }
            },
            temp: {
                message: '작성중인 리뷰가 있습니다. 나가시겠습니까?',
                isSaved: false,
                isPaused: false,
                saveInterval: 5000,
                saveIntervalFunc: null,

                pause: function() {
                    poing.reviews.actions.temp.isPaused = true;
                    window.onbeforeunload = null;
                },
                resume: function() {
                    poing.reviews.actions.temp.isPaused = false;
                    window.onbeforeunload = function() { 
                        return poing.reviews.actions.temp.message;
                    };
                },
                save: function(_el, _state, _place_id) {
                    var $el = $(_el);
                    var state = _state;
                    var place_id = _place_id || null;
                    var $text = $el.find("textarea");
                    var $grade = $el.find(".grade > .detail");

                    $text.one("input", function() {
                        poing.reviews.actions.temp.isSaved = true;
                        poing.reviews.actions.temp.saveIntervalFunc = setInterval(function() {
                            if(poing.reviews.actions.temp.isPaused) return;

                            var savedObj = {
                                state: state,
                                grade: $grade.children(".active").length,
                                text: $text.val(),
                                place_name: $("#review_search").val() || $("#banner.restaurant_detail .title>.name").text().trim()
                            };

                            savedObj['place_id'] = place_id || $("[data-type='poing.reviews.upload']").data('id');
                            setCookie('tempreview', JSON.stringify(savedObj), 180);

                            $text.addClass('save');
                            setTimeout(function() {
                                $text.removeClass('save');
                            }, 1000);
                        }, poing.reviews.actions.temp.saveInterval);

                        poing.reviews.actions.temp.resume();
                    });
                },
                load: function(el, isReviewTab) {
                    var $el = $(el);
                    isReviewTab = isReviewTab || false;

                    var current_state = "seoul";
                    try {
                        var data = $.parseJSON(getCookie('tempreview'));
                    } catch(e) {
                        poing.reviews.actions.temp.delete();
                        return function() {};
                    }

                    // 실시간 리뷰에서 저장된 리뷰와 현재 지역이 다를 경우, 지역 먼저 이동
                    if(isReviewTab) {
                        if(current_state != data.state) {
                            window.onbeforeunload = null;
                            location.href = "/" + data.state + "/review?load";
                        } else {
                            if(data.grade > 0)
                                $el.find(".grade > .detail > i").eq(data.grade - 1).click();
                            $el.find("textarea").val(data.text);
                            $("[data-type='poing.reviews.upload']").data('id', data.place_id);
                            $("#review_search").val(data.place_name);
                        }
                    } else {
                        // 저장된 리뷰와 보고 있는 매장이 다를 경우, 저장된 데이터의 매장으로 이동
                        if(!!data.place_id && data.place_id != $("[data-type='poing.reviews.upload']").data('id')) {
                            window.onbeforeunload = null;
                            location.href = "/restaurant/detail/" + data.place_id + "?review&load";
                        } else {
                            setTimeout(function() {
                                if(data.grade > 0)
                                    $el.find(".grade > .detail > i").eq(data.grade - 1).click();
                                $el.find("textarea").val(data.text);
                            }, 0);
                        }
                    }

                    $(".review.storage").remove();
                    $el.find("textarea").trigger("input");
                    return function() {};
                },
                delete: function() {
                    clearInterval(poing.reviews.actions.temp.saveIntervalFunc);
                    setCookie('tempreview', null, -1);
                    $(".review.storage").remove();
                }
            }
		},

		comment:
		{
			// 리뷰 코멘트 보내기
			isSending: false,
			send: function()
			{
				if(poing.account.checkLoginState() == true)
				{
					if(poing.reviews.comment.isSending == false)
					{
						poing.reviews.comment.isSending = true;
						$.ajax({
							url: '/review/ajaxsendreviewcomment',
							method: 'post',
							dataType: 'json',
							data: {
								id: $(this).data("id"),
								text: $(this).val()
							},
							context:this,
							success: function(res)
							{
								poing.reviews.comment.isSending = false;
								$(".comment_write[data-id="+$(this).data("id")+"]>textarea").val("");
								noticePopupInit({message:"댓글이 등록되었습니다."});

                                var func = "reviewCommentPaging"+$(this).data("id");
                                if( window[func] )
                                    func(1);
							}
						});
					}
					else
						noticePopupInit({message:"댓글이 전송 중입니다.<br><br>잠시만 기다려주세요."});
				}
			},
			send2: function()
			{
				if(poing.account.checkLoginState() == true)
				{
					if(poing.reviews.comment.isSending == false)
					{
						poing.reviews.comment.isSending = true;
						$.ajax({
							url: '/review/ajaxsendreviewcomment',
							method: 'post',
							dataType: 'json',
							data: {
								id: $(this).data("id"),
								text: $(this).val()
							},
							context:this,
							success: function(res)
							{
                                var target;

                                if($(this).attr('data-target') == 'popup')
                                    target = $(".review_detail[data-id="+$(this).data('id')+"]>.review");
                                else 
                                    target = $(".review[data-id="+$(this).data('id')+"]");

                                poing.reviews.comment.isSending = false;
                                $(this).val("");
								noticePopupInit({message:"댓글이 등록되었습니다!"});
							   
                                poing.reviews.actions.user.loadComments.call( target.find(".action>.comment").get(0), true );
							}
						});
					}
					else
						noticePopupInit({message:"댓글이 전송 중입니다.<br><br>잠시만 기다려주세요."});
				}
			},

			modify: function()
			{
				if(poing.account.checkLoginState() == true)
				{
					var id = $(this).data("id");
                    
                    var $comment = $(this).closest(".comment");
                    var $text = $comment.find(".text");
                    var $textarea = $("<textarea>", {text: $text.text()});

                    $text.replaceWith($textarea);

                    $textarea.on("keydown", function(e) {
                        if(e.keyCode == 13) { // enter
							$.ajax({
								url: "/review/ajaxmodifycomment",
								method: "post",
								dataType: "json",
								data: {
									"id": id,
									"text": $textarea.val()
								},
								success: function(res)
								{
									noticePopupInit({message:'코멘트를 수정하셨습니다.'});
                                    poing.reviews.actions.user.loadComments.call( $comment.closest(".review").find(".action>.comment").get(0), true );
								}
							});

							return false;
                        } else if(e.keyCode == 27) { // esc
							e.preventDefault();
                            $textarea.replaceWith($text);

                            return false;
                        }
                    }).focus();
                }
			},

			remove: function()
			{
				if(poing.account.checkLoginState() == true)
				{
					var id = $(this).data("id");

					confirmPopupInit({
						message:"댓글을 삭제하시겠습니까?",
						ok:$.proxy(function() {
							$.ajax({
								url: "/review/ajaxremovecomment",
								method: "post",
								dataType: "json",
								data: {"id": id},
								context: this,
								success: function(res)
								{
									if(res.data == "true" || res.data == true)
									{
										noticePopupInit({message:'댓글이 삭제되었습니다.'});
                                        poing.reviews.actions.user.loadComments.call( $(this).closest(".review").find(".action>.comment").get(0), true );
									}
									else
										noticePopupInit({message:'댓글을 삭제하는데 실패하였습니다.'});
								}
							});
						}, this)
					});
				}
			}
		}
	},

	reservation:
	{
		add: function()
		{
			var id = $(this).data('id');
			if(poing.account.checkLoginState("예약을 하시려면 로그인/회원가입이 필요합니다.<br><br>지금 로그인/회원가입을 하시겠습니까?"))
			{
				$("#reserveShading").show();
				place_id = id;
				$.ajax({url:'/restaurant/AjaxRestaurantInfo', method:"post", dataType:'json', data:{'id':id}, async:false}).success(function(data){
                    var info = "";
                    if(data.data.place.place_area != null) 
                        info = data.data.place.place_area;

					for(var i = 0; i < data.data.place.food_types.length; i++)
					{
						info += " · " + data.data.place.food_types[i].title;
					}
					reserve_popup_init(data.data.place.name, info, data.data.place.reservation_setting, data.data.place.id);
					$("#pre-reserve").show();
					$('#calendar').datepicker('setDate', new Date());
					$('.ui-datepicker-current-day').click(); // rapresent the current selected day

					$("div.reserve-popup>div.box_list>div.box>.date").addClass("first");
					$("div.reserve-popup>div.box_list>div.box>.time").addClass("first");
				});
			}
		},
		edit: function()
		{
			$("#reserveShading").show();
			var id = $(this).data('id');
			$.ajax({url:'/restaurant/AjaxReserveInfo', method:"post", dataType:'json', data:{'id':id}, async:false}).success(function(response){
				response = response.data.reservation;

				var data = {};
				data.id = response.id;
				data.place_id = response.place_id;
				data.place_name = response.place.name;
				data.reserve_setting = response.place.reservation_setting;
				data.personnel = response.party_size;
				data.date = response.reservation_date.split(' ')[0];
				data.info_str = response.place.area;
				if(response.place.food_types)
				{
					for(var i = 0; i < response.place.food_types.length; i++)
						data.info_str += " · " + response.place.food_types[i];
				}
				
				var temp = response.reservation_date.split(' ')[1].split(':');
				data.time = temp[0] + ":" + temp[1];
				data.message = response.message;

				place_id = data.place_id;
				reserve_popup_init(data.place_name, data.info_str, data.reserve_setting, data.id);

				$("#pre-reserve").show();

				// 인원 선택
				$("#reserve_person_count").text(data.personnel-1);
				$("div.reserve-popup>div.box_list>div.box>.person_count>i.plus").trigger("click");

				// 날짜 선택
				$('#calendar').datepicker('setDate', new Date(data.date));
				$('.ui-datepicker-current-day').click();
				$("div.reserve-popup>div.box_list>div.box>.date").addClass("first");

				// 시간 선택
				$("#timetable>ul>li[data-time='" + data.time + "']").trigger('click');
				$("div.reserve-popup>div.box_list>div.box>.time").addClass("first");

				// 메세지
				$("#reserve_comment").val(data.message);

				// 팝업 타이틀 변경
				$(".popup-title").eq(0).html("예약변경/취소")

				// 하단 버튼 변경
				$("#pre-reserve div.confirm-btn>button.reserve").hide();
				$("#pre-reserve div.confirm-btn>button.edit").show();
				$("#pre-reserve div.confirm-btn>button.cancel").show();
			});
		},
		disappear: function()
		{
			if(poing.account.checkLoginState() == true)
			{
				var id = $(this).data("id");

				confirmPopupInit({
					message:"정말 예약 목록에서 삭제하시겠습니까?",
					ok:$.proxy(function() {
						$.ajax({
							url: "/user/ajaxdisappearreservation",
							method: "post",
							dataType: "json",
							data: {
								"id": id
							},
							context: this,
							success: function(res)
							{
								if(res.data == "true" || res.data == true)
								{
									noticePopupInit({message: "예약이 목록에서 삭제되었습니다."});
                                    $("#past_reservation>.reservation[data-id="+$(this).data("id")+"]").remove();
                                    location.reload();
								}
								else
								{
									noticePopupInit({message: "예약을 삭제하지 못했습니다."});
								}
							}
						});
					}, this)
				});
			}
		}
	},

	user:
	{

		follow: function()
		{
			if(poing.account.checkLoginState() == true)
			{
				if($(this).data("id") == "")
				{
					noticePopupInit({message:"삭제된 계정입니다."});
					return;
				}

				var status = null;

				if($(this).hasClass("on"))
				{
					status = "stop";
				}
				else
				{
					status = "live";
				}

				$.ajax({
					url: "/user/ajaxfollow",
					method: "post",
					dataType: "json",
					data:
					{
						"status":status,
						"id":$(this).data("id")
					},
					context:this,
					success:function(res)
					{
                        if(res.status == true && !$("button[data-type='poing.user.follow'][data-id="+$(this).data("id")+"]").hasClass("on")) {
                            if($(".inner[data-type=following]>.item[data-id="+$(this).data("id")+"]").length == 0)
                            {
                                $(".inner[data-type=following]>.item").removeClass("last");
                                $(".inner[data-type=following]").append(
                                    $("<li>").addClass("item last").attr("data-id", $(this).data("id")).append(
                                        $("<a>").addClass("i_wrap").attr("href", "/timeline/"+$(this).data("id")).html(
                                            $("a.i_wrap[href='/timeline/"+$(this).data("id")+"']").html()
                                        )
                                    ).append(
                                        $("<div>").addClass("detail").append(
                                            $("<div>").addClass("name").html(
                                                $(this).parent().children(".name").html()
                                            )
                                        ).append(
                                            $("<div>").addClass("info").html(
                                                $(this).parent().children(".info").html())
                                        ).append(
                                            $("<button>").addClass("gray_red_fill border_radius soft on").attr("data-type", "poing.user.follow").attr("data-id", $(this).data("id")).append(
                                                $("<i>").addClass("icon follow on")
                                            )
                                        )
                                    )
                                );
                                if($(".inner[data-type=following]>.item").length%2 == 0)
                                {
                                    $(".inner[data-type=following]").children(".item:nth-last-child(2)").addClass("last");
                                }
                            }
                            $("li[data-type='followed'] span").html(Number($("li[data-type='followed'] span").html())+1);
                            $("li[data-id='"+$(this).data("id")+"'] #follow").html(Number($("li[data-id='"+$(this).data("id")+"'] #follow").html())+1);
                            $("button[data-type='poing.user.follow'][data-id='"+$(this).data("id")+"']").addClass('on');
                            $("button[data-type='poing.user.follow'][data-id='"+$(this).data("id")+"']>i").addClass('on');
                            noticePopupInit({message: "팔로우 하셨습니다."});
                        } else if(res.status == true && $("button[data-type='poing.user.follow'][data-id="+$(this).data("id")+"]").hasClass("on")) {
                            $("li[data-type='followed'] span").html(Number($("li[data-type='followed'] span").html())-1);
                            $("li[data-id='"+$(this).data("id")+"'] #follow").html(Number($("li[data-id='"+$(this).data("id")+"'] #follow").html())-1);
                            $("button[data-type='poing.user.follow'][data-id='"+$(this).data("id")+"']").removeClass('on');
                            $("button[data-type='poing.user.follow'][data-id='"+$(this).data("id")+"']>i").removeClass('on');
                            noticePopupInit({message: "팔로우를 취소하셨습니다."});
                        } else {
                            if(res.error.code == 510) {
                                noticePopupInit({message: "인증정보가 만료되었습니다. 다시 로그인 해 주세요."});
                            } else {
                                noticePopupInit({message: "팔로우를 실패했습니다. 다시 시도 해 주세요."});
                            }
                        }
					}
				});
			}
		}
	},

	account:
	{
		login:
		{
		},
		logout: function()
		{
			confirmPopupInit({
				message: "정말로 로그아웃 하실건가요? :(",
				ok:function()
				{
					$.ajax({
						url:"/user/logout",
						success:function()
                        {   
                            location.reload();
						}
					});
				}
			})
		},
		// 로그인 했는지 검사
		checkLoginState: function(msg)
		{
							$('#nav_login').click();
				return false;
					}
	},

	popup:
	{
		editorReviews: function()
		{
			$("#editorReviewsPopupShading").show();
			$("#editorReviewsPopup").show();
		},
		promotionPopup: function()
		{
			$("#promotionPopupShading").show();
			$("#promotionPopup").show();
		},
		mergePopup: function()
		{
			$("#account_shading.shading_bg").show();
			$("#account-skip").hide();
			$(".account-previous").hide();
			accountPopupElement.className = "join-mergePhone";
			accountPopupSelector.show();
		},
		follower: function()
		{
			$("#followerPopupShading").show();
			$("#followerPopup").show();
		},
		photoReviewViewerPopupSlider: null,
		photoReviewViewerPopup: function()
		{
			var review_id = $(this).data("id");
			var index = $(this).data("index");

			$("#photoReviewViewerPopupShading").show();
			$("#photoReviewViewerPopup").show();
			$("#photoReviewViewerPopup>.section.photo>.slider_wrap").css("height", "100%").css("height", "-=100px");
			$("#photoReviewViewerPopup>.section.photo>.nav_wrap").css("top", "100%").css("top", "-=100px");
			$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav").css("width", "100%").css("width", "-=80px");
			$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider").html("");
			$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice").html("");

			if(review_id != null && review_id != "")
			{
				$("#photoReviewViewerPopup>.section.photo").addClass("side");
				$("#photoReviewViewerPopup>.section.review").show();
				$("#photoReviewViewerPopup>.section.photo").css("width", "100%").css("width", "-=360px");
				//$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav").css("width", "-=360px");

				if($("#photoReviewViewerPopup").data("id") != review_id)
				{
					$("#photoReviewViewerPopup>.section.review>.inner").html("");
					$.ajax({
						url: "/review/ajaxrenderreview",
						method: "get",
						data: {"id" : review_id, popup: true},
						success: function(res)
						{
							$("#photoReviewViewerPopup>.section.review>.inner").html(res);
						}
					});
				}

				$("#photoReviewViewerPopup").data("id", review_id);
			}
			else
			{
				$("#photoReviewViewerPopup>.section.photo").removeClass("side");
				$("#photoReviewViewerPopup>.section.review").hide();
				$("#photoReviewViewerPopup>.section.photo").css("width", "100%");
			}

			var origin_selector = $(this).data("origin-selector");
			$("#photoReviewViewerPopup>.section.photo>.origin").html("");
			if(origin_selector != null && origin_selector != "")
			{
				var origin_index = 0;
				$(origin_selector).each(function()
				{
					$("#photoReviewViewerPopup>.section.photo>.origin").append(
						$("<a>").attr("href", $(this).attr("href")).attr("target", "_blank").attr("data-index", origin_index).html($(this).html())
					);
					origin_index++;
				});
				$("#photoReviewViewerPopup>.section.photo>.origin>a").hide();
			}

			var image_selector = $(this).data("image-selector");
			if(image_selector != null && image_selector != "")
			{
				var img_index = 0;
				$(image_selector).each(function()
                {
                    var bg = $(this).css("background-image");
                    var thumbnail = $(this).css('background-image');

                    if($(this).attr('data-src'))
                        thumbnail = 'url(' + $(this).attr('data-src') + ')';
                    if($(this).attr('data-origin'))
                        bg = 'url(' + $(this).attr('data-origin') + ')';
                
					$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider").append(
                        
						$("<div>").addClass("i_wrap").attr("data-id", $(this).parent().data("id")).attr("data-index", img_index).append(
							$("<i>").addClass("image").css("background-image", bg).css("filter", $(this).css("filter"))
						)
					);
					$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice").append(
						$("<div>").addClass("i_wrap").attr("data-index", img_index).append(
							$("<i>").addClass("image border_radius soft").css("background-image", thumbnail).css("filter", $(this).css("filter"))
						)
					);
					img_index++;
				});

				poing.popup.photoReviewViewerPopupSlider = PoingSlider.Create({
					selector: "#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider",
					startSlice: parseInt(index),

					afterCreate: function()
					{
						index = parseInt(index);
						var nav_width = $("#photoReviewViewerPopup>.section.photo>.nav_wrap").width();
						var count = parseInt(nav_width/68);
						var scroll = parseInt(index/count)*count*68;

						$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice>.i_wrap[data-index="+parseInt(index)+"]").addClass("selected");
						$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice").css("left", "-"+scroll+"px");

						$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice>.i_wrap").on("click", function()
						{
							var index = $(this).data("index");
							poing.popup.photoReviewViewerPopupSlider.slideTo(index);
							$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice>.i_wrap.selected").removeClass("selected");
							$(this).addClass("selected");
						});

						$("#photoReviewViewerPopup>.section.photo>.origin>a").hide();
						$("#photoReviewViewerPopup>.section.photo>.origin>a[data-index="+index+"]").show();

						if($("#photoReviewViewerPopup").hasClass('menu'))
						{
							var sb = $("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap").offset().top; // drag bottom boundary
							var st = sb - $("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap").height(); // drag top boundary

							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap.current>i").css('transform','scale(1.0)');

							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").draggable({axis:'y', containment: [0,st,0,sb], scroll:false,
							drag:function(){
								$(this).css('cursor','move');
							},
							stop:function(){
								$(this).css('cursor','zoom-out');
							},
							disabled: true});

							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").click(function(){
								var scale = $(this).css('transform');

								if( scale === "matrix(1, 0, 0, 1, 0, 0)" ) // zoom-in
								{
									$(this).css('transform','scale(2.0)');
									$(this).draggable("enable");
									$(this).css('cursor','zoom-out');
								}else if( scale === "matrix(2, 0, 0, 2, 0, 0)" ) // zoom-out
								{
									$(this).css('transform','scale(1.0)');
									$(this).draggable("disable");
									$(this).css('top', 0);
									$(this).css('left', 0);
									$(this).css('cursor','zoom-in');
									$(this).removeClass('ui-state-disabled');
								}
							});
						}
					},
					afterSlide: function()
					{
						var index = poing.popup.photoReviewViewerPopupSlider.getCurrentSliceIndex();
						var nav_width = $("#photoReviewViewerPopup>.section.photo>.nav_wrap").width();
						var count = parseInt(nav_width/68);
						var scroll = parseInt(index/count)*count*68;

						$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice>.i_wrap.selected").removeClass("selected");
						$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice>.i_wrap[data-index="+index+"]").addClass("selected");
						$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice").animate({left:-scroll}, 300);

						$("#photoReviewViewerPopup>.section.photo>.origin>a").hide();
						$("#photoReviewViewerPopup>.section.photo>.origin>a[data-index="+index+"]").show();

						var img_review_id = $("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap[data-index="+index+"]").data("id");

						if(review_id != img_review_id && img_review_id != null && img_review_id != "")
						{
							review_id = img_review_id;

							$.ajax({
								url: "/review/ajaxrenderreview",
								method: "get",
								data: {"id" : img_review_id, popup: true},
								success: function(res)
								{
									$("#photoReviewViewerPopup>.section.review>.inner").html(res);
								}
							});
						}

						if($("#photoReviewViewerPopup").hasClass('menu'))
						{
							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").css("top", 0);
							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").css("left", 0);
							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").css("transform", 'scale(1.0)');
							$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").css('cursor','zoom-in');
						}
					}
				});
			}
		}
	}
};

$("button").attr("tabindex", "-1");
$("body").on("click", " button", function(e)
{
	var type = $(this).data("type") || '';

	if(!!type)
	{
		$(this).blur();
		$.proxy(eval(type), this)();
        return false;
	}
});
$("body").on("click", " li", function(e)
{
	var type = $(this).data("type") || '';

	if(type.indexOf('poing') > -1)
		$.proxy(eval(type), this)();
});

$("#photo_slider").parent().on("selectstart", function()
{
	return false;
});

var photo_slider = PoingSlider.Create({
	selector: "#photo_slider",
	startSlice: 0,

	afterCreate: function()
	{
		$("#content.detail.photo>.body>.section>.count>span").html("1");
		$("#content.detail.photo>.body>.section>.nav_wrap").on("selectstart", function()
		{
			return false;
		});
		$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap[data-index=0]").addClass("selected");
		$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice").css("left", "-"+(parseInt(0/5) * 395)+"px");

		$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap").on("click", function()
		{
			var index = $(this).data("index");
			$("#content.detail.photo>.body>.section>.count>span").html(index+1);
			photo_slider.slideTo(index);
			$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap.selected").removeClass("selected");
			$(this).addClass("selected");
		});

		$("#content.detail.photo>.body>.section>.origin>a[data-index=0]").show();
	},
	afterSlide: function()
	{
		var index = photo_slider.getCurrentSliceIndex();
		$("#content.detail.photo>.body>.section>.origin>a").hide();
		$("#content.detail.photo>.body>.section>.origin>a[data-index="+index+"]").show();
		$("#content.detail.photo>.body>.section>.count>span").html(index+1);
		$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap.selected").removeClass("selected");
		$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice>.i_wrap[data-index="+index+"]").addClass("selected");
		$("#content.detail.photo>.body>.section>.nav_wrap>.nav>.slice").animate({left:-(parseInt(index/5) * 395)}, 300);
	}
});

$("#photo_slider~.prev").on("click", function()
{
	photo_slider.slideToPrev();
});

$("#photo_slider~.next").on("click", function()
{
	photo_slider.slideToNext();
});

$("#content.detail.photo>.body>.section>.nav_wrap>.prev").on("click", function()
{
	photo_slider.slideToPrev();
});

$("#content.detail.photo>.body>.section>.nav_wrap>.next").on("click", function()
{
	photo_slider.slideToNext();
});

function photoPaging(page)
{
	location.search = "photo&page=" + page;
}

new Pagination({selector:'#photo_pagination', current_page:1,per_page:10, total_page:0, event:photoPaging});
$(function(){
	$("#banner *").on("selectstart", function()
	{
		return false;
	});
	$("#banner>.inner_wrap>.inner>.body>.slider_wrap i").on("click", function()
	{
		var index = $(this).data("index");
		location.search = "photo&slice=" + index;
	});
	$("#banner.product>.inner_wrap>.inner>.header>.favorite>i").click(function(){
		if(poing.account.checkLoginState() == true)
		{
			var type = 'add';

			if($(this).hasClass("on"))
				type = "delete";

			$.ajax({
				'url': "/product/favorite",
				'method':'post',
				'dataType':'json',
				'data':
				{
					"id":$(this).parent().data("id"),
					"type":type
				},
				'success':function(res)
				{
                    if(type === "add")
                        $.popup("confirm", {'text': "티켓을 찜하셨습니다.", 'alert':true});
                    else if(type === "delete")
                        $.popup("confirm", {'text': "찜을 취소하셨습니다.", 'alert':true});
                    $("#banner.product>.inner_wrap>.inner>.header>.favorite>i").toggleClass('on');
				}
			});
		}
	});
	$("#banner.product>.inner_wrap>.inner>.body>.dropbox>.items").on("mousewheel", function(e) {
		var dir = (e.originalEvent.detail < 0 || e.originalEvent.wheelDelta > 0)? '-=' : '+=';
		var dist = 15;

		$(this).scrollTo(dir+dist);

		return false;
	});
	$("#banner.product>.inner_wrap>.inner>.body>.dropbox>.items>li").on("click", function()
	{
        if($(this).hasClass('soldout'))
            return;

		$(this).parents(".dropbox").children(".label").children(".text").html($(this).children(".option").text());
		
		var id = $(this).data('id');
		var min = $(this).data('min');
		var limit = $(this).data('limit');
		var list = $("#banner>.inner_wrap>.inner>.body>.selected");
		var selected = list.children("li");
		for(var i=0; i<selected.length; ++i)
		{
			if(selected.eq(i).data('id') == id)
			{
				i = -1;
				break;
			}
		}
		if( i != -1 )
		{	
			var el = 
				$("<li>", {'data-id':id, 'data-min': min, 'data-limit':limit})
					.append( $("<span>", {'class':'name', 'text':$(this).find(">.option>span").text() }) )
					.append( $("<span>", {'class':'price', 'text':$(this).find(">.price").text() }) )
					.append( $("<div>", {'class':'count_box'})
						.append( $("<input>", {'type':'text', 'value':min}).prop('disabled', true) )
						.append( $("<button>", {'type':'button', 'class':'increase'}).append( $("<i>") ) )
						.append( $("<button>", {'type':'button', 'class':'decrease'}).append( $("<i>") ) ) )
					.append( $("<span>", {'class':'total', 'text':$(this).find(">.price").text()}) )
					.append( $("<button>", {'type':'button', 'class':'delete'}) )	

			list.append( el );

			$.proxy(changeCount, el.find("input"))(0);
		}

		$(this).parent().hide();
		calcOption();
	});
	$("#banner.product .selected").on("click", "li>button", function()
	{
		$(this).parent().remove();
		calcOption(); 
	});

	// 수량 컨트롤
	function changeCount(add) {
		var target = $(this).siblings("input");
	    var value = Number(target.val());
	    var li = $(this).closest("li");

	    if(li.data('min') <= value + add && value + add <= li.data('limit')) 
	    	value += add;
	    else if(value + add > li.data('limit'))
	    	noticePopupInit({message:'구매 가능한 최대 수량입니다.'});
	    	
	    target.val(value);

	    calcOption(li);
	}
	$("#banner.product .selected").on("click", "button.increase", function(){
		$.proxy(changeCount, this)(1);
	});
	$("#banner.product .selected").on("click", "button.decrease", function(){
	    $.proxy(changeCount, this)(-1);
	});

	function getNumber(str) {
		return Number(str.replace(/[^0-9]/g, ""));
	}
	function calcOption(e){
		var list, sum = 0;
		if(e) {
			var count = e.find(".count_box>input").val();
			var price = getNumber(e.children(".price").text());

			sum = count * price;
			e.children(".total").text( sum.toLocaleString()+"원" );

			list = e.siblings();
		} else
			list = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
		
		for(var i=0; i<list.length; ++i)
			sum += getNumber(list.eq(i).children(".total").text());
		
		$("#banner.product .summary>.value").text(sum.toLocaleString());
	}
});
$(document).ready(function(){
	var slider = PoingSlider.Create({
		'selector': "#banner #slider",
		'autoSlide': true,
		'slideDuration': 2000,
		'animationDuration': 700
	});
});
	(function() {
		var target = $("#left_time>span");
		var end = moment('2019-05-31 18:00:00');

		var calc_time = function(start, end) {
			var diff = end.diff(start, 'seconds');

			var result = {};
			result['days'] = parseInt(diff / 86400);
			diff %= 86400;
			result['hours'] = parseInt(diff / 3600);
			diff %= 3600;
			result['minutes'] = parseInt(diff / 60);
			diff %= 60;
			result['seconds'] = parseInt(diff);

			result['hours'] = result['hours']<10?'0'+result['hours']:result['hours'];
			result['minutes'] = result['minutes']<10?'0'+result['minutes']:result['minutes'];
			result['seconds'] = result['seconds']<10?'0'+result['seconds']:result['seconds'];

			return result;
		};

		setInterval( function(){
			var time = calc_time(moment(), end);
			target.text(time.days+"일 "+time.hours+":"+time.minutes+":"+time.seconds);
		}, 1000);
	})();

// ie toLocaleString
if (/\D/.test((1).toLocaleString())) {
	Number.prototype.toLocaleString = (function() {
		var _toLocale = Number.prototype.toLocaleString;
		var _sep = /\./.test((1.1).toLocaleString())? '.' : ',';
		var re = new RegExp( '\\' + _sep + '\\d+$');

		return function() {
			if (parseInt(this) == this)
				return _toLocale.call(this).replace(re,'');
			return _toLocale.call(this);
		}
	}());
}
// disable navigation select
$("#nav_wrap").on("selectstart", function()
{
	return false;
});

// search section
$("#nav_search>input").on("focus", function()
{
	$("#nav_search").addClass("focus");
	$("#nav_search").siblings().removeClass('focus');
	$("#nav_shading.shading_bg").show();
});
shadingHideEvent("#nav_shading.shading_bg", function()
{
	$("#nav_search>input").blur();
	$("#nav_search").removeClass("focus");
	$("#nav_search").children("img#nav_loader").hide();
	$("#nav_container>.search.sel").removeClass('focus');
	auto_complete_cursor = -1;
});

$("#nav_recommend>ul.keyword>li:not('.title')").on("click", function()
{
    location.href="/seoul/restaurant/search?key2[key]="+encodeURIComponent($(this).children("span.area").html());
});
$("#nav_recommend>ul.recent>li:not('.title')").on("click", function()
{
    location.href="/restaurant/detail/" + $(this).attr('data-id');
});
$(function() {
    var $list = $("#nav_recommend>ul.recent>li:not('.title')");
    var $current = $("#nav_recommend>ul.recent>.title>div>.page");
    var last = parseInt( $("#nav_recommend>ul.recent>.title>div>span:not('.page')").text() );
    
    $("#nav_recommend>ul.recent>.title>div>i").on("click", function() {
        var page = parseInt( $current.text() );

        if($(this).hasClass('prev') && page > 1) 
            --page;
        else if($(this).hasClass('next') && page < last) 
            ++page;

        $current.text(page);

        var min = (page-1) * 5;
        var max = page * 5 - 1;
        $list.filter(function(idx, el) {
            $(el).toggle((idx >= min && idx <= max));
        });
    });
    $("#nav_recommend>ul.recent>.title>div>i.prev").click();
});

var auto_complete_table = [];
var auto_complete_current = "";
var auto_complete_cursor = -1;
var auto_complete_prev = null;

$("#nav_search>input").on("keydown keyup", function(e)
{
	// enter key
	if(e.keyCode === 13)
	{
		if(e.type === "keydown")
		{
			var item = $("#nav_auto_complete>ul>li.selected");

			if(item.length == 1)
				item.click();
			else
				$("#nav_btn").click();
		}

		return false;
	}
	// up arrow key
	if(e.keyCode === 38)
	{
		if(e.type === "keydown")
		{
			if($("#nav_search").hasClass("auto_complete"))
			{
				var list = $("#nav_auto_complete>ul>li");

				if(list.length > 0)
				{
					if(auto_complete_cursor >= 0)
						$(list[auto_complete_cursor]).removeClass("selected");

					auto_complete_cursor--;
					if(-2 >= auto_complete_cursor)
						auto_complete_cursor = list.length - 1;

					if(auto_complete_cursor >= 0)
						$(list[auto_complete_cursor]).addClass("selected");
				}
			}
		}

		return false;
	}
	// down arrow key
	else if(e.keyCode === 40)
	{
		if(e.type === "keydown")
		{
			if($("#nav_search").hasClass("auto_complete"))
			{
				var list = $("#nav_auto_complete>ul>li");

				if(list.length > 0)
				{
					if(auto_complete_cursor >= 0)
						$(list[auto_complete_cursor]).removeClass("selected");

					auto_complete_cursor++;
					if(list.length <= auto_complete_cursor)
						auto_complete_cursor = -1;

					if(auto_complete_cursor >= 0)
						$(list[auto_complete_cursor]).addClass("selected");
				}
			}
		}
		
		return false;
	}
	// other key
	else
	{
		if(auto_complete_current != $(this).val())
		{
			if(auto_complete_cursor >= 0)
			{
				$($("#nav_auto_complete>ul>li")[auto_complete_cursor]).removeClass("selected");
				auto_complete_cursor = -1;
			}

			if($(this).val().length > 0)
			{
				if(typeof auto_complete_table[$(this).val()] == "undefined")
				{
					//auto_complete_table[$(this).val()] = "waiting";
					$("#nav_search").children("img#nav_loader").show();

					if(auto_complete_prev) {
						auto_complete_prev.abort();
						auto_complete_prev = null;
					}
					auto_complete_prev = $.ajax({
						url: "/restaurant/ajaxSearch/"+encodeURIComponent($(this).val()),
						method: "get",
						dataType: "json",
						success: function(response)
						{
							if(response.status)
							{
								auto_complete_table[response.meta.ac_keyword] = $("<ul>");
								$.each(response.data.ac_keywords, function(e)
								{
                                    var esc = response.meta.ac_keyword.replace(/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g, "\\$&");
									if(this.name.search(esc) >= 0)
									{
										var src = this.name;
										var pos = this.name.search(esc);

										this.name = src.slice(0, pos) + "<span class='highlight'>" + response.meta.ac_keyword + "</span>" + src.slice(pos+response.meta.ac_keyword.length)
									}

									auto_complete_table[response.meta.ac_keyword].append(
										$("<li>").addClass("border_radius soft").append(
											$("<div>").addClass("name").html(this.name)).append(
											$("<div>").addClass("desc").html(this.description)).attr("data-id", this.id)
									);
								});

								if($("#nav_search>input").val() == response.meta.ac_keyword)
								{
									$("#nav_auto_complete").html("");
									$("#nav_auto_complete").append(auto_complete_table[response.meta.ac_keyword]);
									
									$("#nav_auto_complete>ul>li").on("click", function()
									{
										location.href = "/restaurant/detail/" + $(this).data("id");
									});
									$("#nav_search").children("img#nav_loader").hide();
									$("#nav_search").addClass("auto_complete");
								}
							}
						}
					})
				}
				else if(typeof auto_complete_table[$(this).val()] == "object")
				{
					$("#nav_auto_complete").html("");
					$("#nav_auto_complete").append(auto_complete_table[$(this).val()]);
							
					$("#nav_auto_complete>ul>li").on("click", function()
					{
						location.href = "/restaurant/detail/" + $(this).data("id");
					});
					$("#nav_search").children("img#nav_loader").hide();
					$("#nav_search").addClass("auto_complete");
				}
			}
			else
			{
				$("#nav_search").children("img#nav_loader").hide();
				$("#nav_search").removeClass("auto_complete");
			}
			
			auto_complete_current = $(this).val();
		}
	}
});

// notice section
$("#nav_notice>.i_wrap").on("click", function(e)
{
	if($("#nav_mynews_list").html() == "")
		$("#nav_mynews_btn").click();
		
	e.stopPropagation();
	$("#nav_notice_list").toggle();
	$.ajax({
		url: '/user/noticeCheck',
		method: 'post',
		dataType: 'json',
		success: function(res)
		{
			if(res.mynews.data == true && res.poing.data == true)
				$("#nav_notice_count").hide();
		}
	});
	
	$("#nav_notice>.i_wrap").unbind("click").on("click", function(e)
	{
		e.stopPropagation();
		$("#nav_notice_list").toggle();
	});
});
$("#nav_notice_list").on("click", function(e)
{
	e.stopPropagation();
});
$(document).on("click", function()
{
	$("#nav_notice_list").hide();
});

$("#nav_cart").on("click", function()
{
	location.href = "/pay";
});
$("#nav_mynews_btn").on("click", function()
{
	$("#nav_mynews_btn").addClass("selected");
	$("#nav_poingnews_btn").removeClass("selected");
	$("#nav_poingnews_list").hide();

	if($("#nav_mynews_list").html() == "") {
		$.ajax({url: '/user/UserNotice',
				type: 'get',
				success: function(res){
					res = $.parseJSON(res);

					var el =  new EJS({url: '/template/UserNotice.ejs'}).render({notices: res});
					$("#nav_mynews_list").append(el).show()
						.find(".logger").text(function() {
							return moment($(this).text()).locale('ko').fromNow(); 
						}).css('visibility', 'visible');
				}});
	} else 
		$("#nav_mynews_list").show();
});

$("#nav_poingnews_btn").on("click", function()
{
	$("#nav_poingnews_btn").addClass("selected");
	$("#nav_mynews_btn").removeClass("selected");
	$("#nav_mynews_list").hide();

	if($("#nav_poingnews_list").html() == "") {
		$.ajax({url: '/user/PoingNotice',
			type: 'get',
			success: function(res){
				res = $.parseJSON(res);

				var el =  new EJS({url: '/template/PoingNotice.ejs'}).render({notices: res});
				$("#nav_poingnews_list").append(el).show()
					.find(".logger").text(function(){ 
						return moment($(this).text()).locale('ko').fromNow(); 
					}).css('visibility', 'visible');
			}});
	} else 
		$("#nav_poingnews_list").show();
});

$("#nav_mynews_list").on("click", ".item", function()
{
	var type = $(this).data("type");
	var target = $(this).data("target");
	var additional = $(this).data("additional");

    if(type == "like_review" ||
		type == "comment_review" ||
		type == "selection_review" ||
		type == "like_comment")
	{
		if(additional == "" || target == "")
			noticePopupInit({message:"해당 리뷰로 이동하는 도중<br><br>문제가 발생했습니다."});
		else
			location.href = "/restaurant/detail/"+additional+"?review="+target;
	}
	else if(type == "follow" || type == "fb_join")
	{
		if(target == "")
			noticePopupInit({message:"해당 유저의 담벼락으로 이동하는 도중<br><br>문제가 발생했습니다."});
		else
			location.href="/timeline/"+target;
	}
});

$("#nav_poingnews_list").on("click", ".item", function()
{
	var type = $(this).data("type");
	var target = $(this).data("target");
	var additional = $(this).data("additional");

    if(type == 'write_review') 
        location.href = "/restaurant/detail/" + $(this).data('target') + "?review";
    else if((additional == "" && target == "") &&
		(type == "accept_reservation" ||
		type == "change_reservation" ||
		type == "change_confirm_reservation" ||
		type == "confirm_reservation" ||
		type == "cancel_reservation"))
		noticePopupInit({message:"해당 예약으로 이동하는 도중<br><br>문제가 발생했습니다."});
	else
		location.href="/timeline/";
});

$("#nav_notice_list_all").on("click", function()
{
	location.href = "/timeline/?social";
});

// profile section
$("#nav_profile").on("mouseover", function()
{
	$("#nav_notice_list").hide();
});
$("#nav_profile>.i_wrap").on("click", function()
{
	location.href = "/timeline/";
});

$("#nav_profile_list>.item").on("click", function()
{
	var link = $(this).data("link");

	if(typeof link == "string")
	{
		location.href=link;
	}
});

$("#nav_login").on("click", function()
{
    $.popup('sign', {type: 'login'});
});
$("#nav_join").on("click", function()
{
    $.popup('sign', {type: 'join'});
});
$("#nav_logout").on("click", function()
{
	poing.account.logout();
});

window.search = function(opt) {
	var query = {
		place_area: '',
		food_types: '',
		food_detail_types: '',
		price_description: '',
		additional_info: '',
		table_styles: '',
		liquors: '',
		parking: '',
		order_rule: '',
		theme_childe_sub3: '',
		theme_childe_url: '',
		r_num: 991,
		page: 1,
		per_page: 12,
	};
	var key2 = {key: ""};

	opt = $.extend({set:[], reset:[]}, opt);

	for(var i in query) {
		if(!query[i] || opt['reset'].indexOf(i) > -1)
			delete query[i];
	}
	for(var i in opt['set']) {
		if(i === 'key')
			key2['key'] = opt['set'][i];
		else
			query[i] = opt['set'][i];
	}
	
	var param = {query: query};
	if(key2['key'].length > 0)
		param['key2'] = key2;

    location.href = "/seoul/restaurant/search?" + $.param(param);
}

/* search box */
$(document).ready(function(){
	var query = {'place_area':[], 'food_types':[]};

	$(window).click(function(){ $("#nav_city>ul").hide(); });
	$("#nav_city").click(function(e){
		$(this).children("ul").toggle();
		e.stopPropagation();
	});
	$("#nav_city>ul>li").mousedown(function(){
		if($(this).attr('data-enable') == 'true')
			location.href = "/"+$(this).attr('data-city');
		else {
			$("#nav_city>ul").hide();
			alert("서비스 준비중입니다. 곧 다양한 혜택으로 찾아뵙겠습니다.");
		}
	});
	// toggle box
	$("#nav_container>.search.sel").click(function(e){
		$(this).addClass('focus').siblings().removeClass('focus');
		$("#nav_shading.shading_bg").show();
		e.stopPropagation();
	}).on('click', '.box', function(e){ e.stopPropagation(); });

	// change district
	$("#nav_area>.box>.district>li").click(function(){
		var dist = $(this).data('dist');

		$(this).addClass('selected').siblings().removeClass('selected');
		$("#nav_area>.box>.neighborhood>ul[data-dist="+dist+"]").addClass("selected").siblings().removeClass('selected');
	});

	// active area/genre checkbox
	$("#nav_area>.box>.neighborhood>.content>li, #nav_genre>.box>.content>li").click(function(e){
		if(e.target.tagName === "LI")
			$(this).children("input").click();
	});
    

    function GetFilterLable(id) {
        return $("#nav_container input[id^="+md5(id)+"]+label").eq(0).text();
    }
	$("#nav_area>.box>.neighborhood input").change(function(){
        var title = $(this).next("label").text();
        var hash = $(this).attr('id');
        var id = $(this).val();
		var state = $(this).prop('checked');
		var text = "지역 선택";

		$("#nav_area>.box>.neighborhood input[id^="+hash+"]").prop('checked', state).parent().toggleClass('selected', state);

		if(state)
			query['place_area'].push(title);
		else 
			query['place_area'].splice(query['place_area'].indexOf(title), 1);
			
		if(query['place_area'].length > 0)
        {
            var over = false;
            var len = 0;
            text = [];

            for(var i=0; i<query['place_area'].length; ++i) {
                var label = query['place_area'][i];
                if(len + label.length < 8) {
                    text.push(label);
                    len += label.length;
                } else {
                    over = true;
					break;
				}
            }
            
            text = text.join(',');
            if(over)
                text += "외 "+(query['place_area'].length-i)+"개";
		}
		$("#nav_area>.input>.selected").text(text);
		$(this).parent().toggleClass('selected', state);
	});
	
    var foods_count = $("#nav_genre>.box>.foods input:not('#food_all')").length;
    $("#food_all").change(function() {
        var state = $(this).prop('checked');
        var foods = $("#nav_genre>.box>.foods input:not('#food_all')");

        if(state)
            foods = foods.filter(':not(:checked)');
        else
            foods = foods.filter(':checked');

        foods.prop('checked', state).change();
        $(this).parent().toggleClass('selected', state);
    });
	$("#nav_genre>.box>.foods input:not([id$=all])").change(function(){
		var state = $(this).prop('checked');
		var hash = $(this).attr('id');
		var id = $(this).val();
		var name = $(this).siblings("label").text();
		var text = "음식 종류 선택";

		if(state)
			query['food_types'].push(id);
		else 
			query['food_types'].splice(query['food_types'].indexOf(id), 1);

		if(query['food_types'].length > 0)
        {	
            var over = false;
            var len = 0;
            text = [];

            for(var i=0; i<query['food_types'].length; ++i) {
                var label = $("#nav_container input[id^="+md5(query['food_types'][i])+"]+label").eq(0).text();

                if(len + label.length < 8) {
                    text.push(label);
                    len += label.length;
                } else {
                    over = true;
					break;
				}
            }
            
            text = text.join(',');
            if(over)
                text += "외 "+(query['food_types'].length-i)+"개";

            $("#food_all").prop('checked', query['food_types'].length == foods_count)
                .parent().toggleClass('selected', query['food_types'].length == foods_count);
		}
		$("#nav_genre>.input>.selected").text(text);
		var section = $("#filter-sidebar .section.detail_genre").hide();
		var detail_food = section.find(".filter-popup>.body>ul[data-genre='"+hash+"']");

		if(detail_food.length > 0)
		{
			if(state) 
			{
				detail_food.addClass('selected');
				section.show();
			} else 
			{
				detail_food.removeClass('selected');
				detail_food.find("input").prop('checked', false).change();
			}
		}
		if(section.find(".filter-popup>.body>ul.selected").length > 0)
			section.show();
    
        section.children(".filter-popup").attr('count', section.find(".filter-popup>.body>ul.selected").length);

		$(this).parent().toggleClass('selected', state);
	});
	// search button
	$("#nav_btn").click(function() {
		window.search({set: {
							place_area: $.unique( $("#nav_area ul input:checked").map(function() { return $(this).val(); }).get() ).join(','),
							food_types: $("#nav_genre ul input:not(#food_all):checked").map(function() { return $(this).val(); }).get().join(','), 
							key: $("#nav_search>input").val()
					   },
					   reset:['food_detail_types', 'price_description', 'additional_info', 'table_styles', 'liquors', 'parking', 'order_rule', 'theme_childe_sub3', 'theme_childe_url', 'r_num', 'page']});
	});
	// box button click
	$("#nav_container>.search.sel>.box>button").click(function(){
		$("#nav_shading.shading_bg").click();
	});

	// init state
	$(function(){
		$("#nav_area>.box>.district>li:first-child").click();
		$("#nav_genre input:checked").change();

		var checked = 
			$.unique( $("#nav_area input:checked").map(function() { 
				return $(this).prop('checked', false)
					.attr('id').substr(0,32); 
			}).get() );

		$.each(checked, function(){
			$("[id^="+this+"]").eq(0).prop('checked', true).change();
		});
	});
});

shadingHideEvent("#photoReviewViewerPopupShading.shading_bg", function()
{
	$("#photoReviewViewerPopup>.close").click();
});
$("#photoReviewViewerPopup>.close").on("click", function()
{
	$("#photoReviewViewerPopupShading.shading_bg").hide();
	$("#photoReviewViewerPopup").hide();
});

$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.prev,#photoReviewViewerPopup>.section.photo>.nav_wrap>.prev").on("click", function()
{
	poing.popup.photoReviewViewerPopupSlider.slideToPrev();
});

$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.next,#photoReviewViewerPopup>.section.photo>.nav_wrap>.next").on("click", function()
{
	poing.popup.photoReviewViewerPopupSlider.slideToNext();
});

$(document).on("keydown", function(e)
{
	if(!inFocus && $("#photoReviewViewerPopup").is(":visible"))
	{
		if(e.keyCode === 37)
		{
			poing.popup.photoReviewViewerPopupSlider.slideToPrev();
		}
		else if(e.keyCode === 39)
		{
			poing.popup.photoReviewViewerPopupSlider.slideToNext();
		}
	}
});

$("#photoReviewViewerPopup").on("selectstart", function()
{
	return false;
});

$(window).on("resize", function()
{
	if($("#photoReviewViewerPopup").is(":visible"))
	{
		$("#photoReviewViewerPopup>.section.photo>.slider_wrap").css("height", "100%").css("height", "-=100px");
		$("#photoReviewViewerPopup>.section.photo>.nav_wrap").css("top", "100%").css("top", "-=100px");
		$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav").css("width", "100%").css("width", "-=80px");
		if($("#photoReviewViewerPopup>.section.photo").hasClass("side"))
		{
			$("#photoReviewViewerPopup>.section.photo").css("width", "100%").css("width", "-=360px");
		}

		var index = poing.popup.photoReviewViewerPopupSlider.getCurrentSliceIndex();
		var nav_width = $("#photoReviewViewerPopup>.section.photo>.nav_wrap").width();
		var count = parseInt(nav_width/68);
		var scroll = parseInt(index/count)*count*68;
		$("#photoReviewViewerPopup>.section.photo>.nav_wrap>.nav>.slice").css("left", "-"+scroll+"px");

		var sb = $("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap").offset().top; // drag bottom boundary
		var st = sb - $("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap").height(); // drag top boundary
		$("#photoReviewViewerPopup>.section.photo>.slider_wrap>.slider>.i_wrap>i").draggable( "option", { containment: [0,st,0,sb] });
	}
});
$(document).ready(function(){
	shadingHideEvent("#reserveShading.shading_bg", function()
	{
		$("#pre-reserve").hide();
		$("#post-reserve").hide();
		$("#result").hide();
	});
})


var minimum_party_size = 1;
var isSendConfirm = false;

// result button event bind
$("#result>.confirm-btn>.mypage").click(function(){
	location.href = "/timeline/?payment";
});
$("#result>.confirm-btn>.confirm").click(function(){
	$("#reserveShading.shading_bg").click();
});
// input point only numeric
$("#post-reserve>.section.price tr.point>.value>input").on({
	keydown: function(e){
		return  (e.keyCode >= 48 && e.keyCode <= 57) || // Number
				(e.keyCode >= 37 && e.keyCode <= 40) || // arrow
				(e.keyCode === 8); // Backspace
	},/*
	keypress: function(e){ // 한글 입력 keypress 안먹음
		return (e.keyCode >= 48 && e.keyCode <= 57);
	},*/

	keyup: function(){
		var value = Number(this.value);
		var max = Number($(this).attr('max'));

		if(value > max)
			$(this).val(max);
		else if(value < 0 || isNaN(this.value))
			$(this).val(0);
		else if(String(this.value) !== String(value))
			$(this).val(value);

		// calculate total price
		var origin = Number( $("#post-reserve>.section.price tr.origin>.value>span").text().replace(/,/g, '') );
		var total = origin - Number($(this).val());
		$("#post-reserve>.section.price tr.total>.value>span").text( total.toLocaleString() );
	}
});

$("div#pre-reserve").click(function(e) {
	$("#calendar").hide();
	$("#calendar~i.select_arrow").removeClass("up");
	$("#timetable").hide();
	$("#timetable~i.select_arrow").removeClass("up");
})
$("div#pre-reserve>i#reserve-close").click(function() {
	$("#reserveShading.shading_bg").click();
});
$("#pre-reserve textarea").click(function() {
	$(this).select();
})
$("#pre-reserve div.confirm-btn>button.reserve").click(function() {
	// check form validation
			if( $(".confirm_code>input.code").is(":visible") && $(".confirm_code>input.code").attr('done') !== 'true' ) // 인증 x
		{
			noticePopupInit({'message':"휴대폰 인증을 해주세요."});
			return;
		}
		if( $("#reserve_time").text() === "예약 불가" ) // 시간 선택 x
	{
		noticePopupInit({'message':"예약 불가능한 시간입니다."});
		return;
	}

	if($.trim($("#pre-reserve textarea").val())!="간단한 요청사항을 남겨주세요."){
		$("#post-reserve div.comment span.value").html($("#pre-reserve textarea").val());	
	}

	$(".reserve-popup").hide();
	$("#reserveShading").hide();

	var time = $("#reserve_time").attr('time').split(':');
	var date = new Date($("#reserve_date").attr('data-str'));
	date.setHours(time[0]);
	date.setMinutes(time[1]);

	var selected = $("#banner.product>.inner_wrap>.inner>.body>ul>li");
	var options = [];

	for(var i=0; i<selected.length; ++i)
	{
		var op = selected.eq(i);
		options[i] = {'id': op.data('id'), 'count': op.find(".count_box>input").val()};
	}
	
	if($("#pre-reserve").data('type') === "buy") {
		var size = $("#reserve_person_count").text();
		var msg = $("#reserve_comment").val();

		$.ajax({
			'url': "/pay/addCart",
			'method': "POST",
			'dataType': "JSON",
			'data': {'options': options, 'date': date, 'size': size, 'id': reserve_id, 'msg': msg},
			'context': {'date': date, 'size': size, 'msg': msg},
			'success':function(response) {
				if(response)
				{
					response = response.data.dealings;
					var pop = $("#post-reserve");
					pop.show();
					$("#reserveShading").show();
					$("#pre-reserve").hide();

					// init view..........
					var list = pop.find(".section.info td.info>ul");
					list.empty();
					
					for(var i=0; i<response.merchandise_options.length; ++i) {
						var option = response.merchandise_options[i];
						var li = $("<li>")
							.append( $("<div>", {'class':'name', 'text':option.title}) )
							.append( $("<div>", {'class':'price', 'text':option.actual_price.toLocaleString()+'원'}) )
							.append( $("<div>", {'class':'count', 'text':option.count}) )
							.append( $("<div>", {'class':'total_price', 'text':(option.count * option.actual_price).toLocaleString()+'원'}) );
						list.append(li);
					}
					var reserve = pop.find(".section.reserve table");
					date_str = date.getFullYear()+'년 '
								+ (this.date.getMonth()+1)+'월 '
								+ this.date.getDate()+'일 '
								+ ['일','월','화','수','목','금','토'][this.date.getDay()]+'요일 / '
								+ this.date.getHours()+'시 '
								+ this.date.getMinutes()+'분 / '
								+ this.size+'명';
					reserve.find("tr.info>.value").text(date_str);
					reserve.find("tr.comment>.value").text(this.msg);

					pop.find(".section.price tr.origin>.value>span").text(response.total_price.toLocaleString());
					pop.find(".section.price tr.point>.value").val(0);
					pop.find(".section.price tr.total>.value>span").text(response.total_price.toLocaleString());

					$("#post-reserve input[type=radio], #post-reserve input[type=checkbox]").each(function(){
						$(this).prop('checked', false);
					});

					// next step
					pop.find(".confirm-btn>button").click($.proxy(function(){
						// check validate form
						if( $("#post-reserve input:checked").length !== 3 ) {
							noticePopupInit({'message': "항목을 모두 선택하세요."});
							return;
						}	

						var data = [{'dealing_id':response.id}];
						this.type = $("#post-reserve .section.payment input:checked+label").text();
						this.total = $("#post-reserve .section.price tr.total>.value").text();


						$.ajax({
                            'url': "/pay/OrderRequest",
                            'method': "POST",
                            'dataType': "JSON",
                            'context': this,
                            'data': {'dealings':data, 'payment_type':$("#post-reserve>.section.payment>.body>input:checked").data('type'), 'point':$("#post-reserve>.section.price tr.point>.value>input").val()},
                            'success':function(res) {
                            	if(res) {
                            		res = res.data.order;
	                    			//KCP_ORDER_FORM_FILL(res.payment_type, res.id, /*good_name,*/ res.total_price, res.name, res.email, res.phone, res.phone);
                            	} else
                    				noticePopupInit({'message':"상품을 구매하는 중 에러가 발생했습니다."});
							}
						});
					}, this));
				} else
					noticePopupInit({'message': "상품을 구매하는 중 에러가 발생했습니다."});
			}
		});
	} else if($("#pre-reserve").data('type') === "add") {
		$.ajax({
			'url': "/pay/addCart",
			'method': "POST",
			'dataType': "JSON",
			'data': {'options': options, 'date': date, 'size': $("#reserve_person_count").text(), 'id': reserve_id, 'msg': $("#reserve_comment").val()},
			'success':function(response) {
				if(response)
				{
					confirm_show.call(this,
			            {'msg': "선택하신 상품을 장바구니에 담았습니다.",
			             'cancel_msg': '계속 쇼핑 하기',
			             'confirm_msg': '장바구니',
			             'confirm': function() { location.href = '/pay'; } 
			        });
					$("#pre-reserve").hide();
				} else
					noticePopupInit({'message': "상품을 장바구니에 담는 중 에러가 발생했습니다."});
			}
		});
	}
});
$("div.reserve-popup>div.box_list>div.box>.person_count>i.minus").click(function() {
	var target =  $("#pre-reserve .person_count .count");
	var value = Number(target.text());
	if( value > minimum_party_size)
	{
		target.text(--value);
		$(".popup-row.comment span.count").text(value + "명");
	}
})
$("div.reserve-popup>div.box_list>div.box>.person_count>i.plus").click(function() {
	var target =  $("#pre-reserve .person_count .count");
	var value = Number(target.text());
	if( value < 20)
	{
		target.text(++value);
		$(".popup-row.comment span.count").text(value + "명");
	}
})
$("div.reserve-popup>div.box_list>div.box>.date").parent().click(function(e) {
	e.stopPropagation();
	if($(e.target).hasClass("ui-icon"))
		return;

	$("#calendar").toggle();
	$("#calendar~i.select_arrow").toggleClass("up");
	$("#timetable").hide();
	$("#timetable~i.select_arrow").removeClass("up");
})
$("#calendar").delegate(".ui-datepicker-header", "click", function(e){
	e.stopPropagation();
})

$("div.reserve-popup>div.box_list>div.box>.time").parent().click(function(e) {
	e.stopPropagation();

	if($(e.target).text() === "예약 불가")
		return;

	$("#timetable").toggle();
	$("#timetable~i.select_arrow").toggleClass("up");
	$("#calendar").hide();
	$("#calendar~i.select_arrow").removeClass("up");
})

$("#timetable").delegate("li", "click", function(e) {
	e.stopPropagation();

	$("div.reserve-popup>div.box_list>div.box>.time").removeClass("first");
	var selected = $(e.target).attr('data-time');
	var time = selected.split(":");
	var convert_time = "";

	if(Number(time[0]) < 12)
		convert_time = "오전 ";
	else if(Number(time[0]) >= 12)
	{
		convert_time = "오후 ";
		if(time[0]>=13)
			time[0] -= 12;
	}

	convert_time += time[0] + ":" + time[1];

	$("#pre-reserve #reserve_time").text(convert_time);
	$("#pre-reserve #reserve_time").attr('time', selected);
	$(".popup-row.comment span.time").text(convert_time);

	$("#timetable").hide();
	$("#timetable~i.select_arrow").removeClass("up");
})
var lastRequestParam = [];
$("div.confirm>button.send").click(function() {
	if(document.getElementById("reserve_name").value == "" || document.getElementById("reserve_phone").value == "")
	{
		noticePopupInit({'message':'성함과 연락처는 꼭 적어주셔야 합니다.'});
		return;
	}
	isSendConfirm = true;
	lastRequestParam['name'] = document.getElementById("reserve_name").value;
	lastRequestParam['phone'] = document.getElementById("reserve_phone").value;
	$.ajax({
		'url': "/user/SendConfirmCode",
		'method': "POST",
		'dataType': "JSON",
		'data': { 'name':lastRequestParam['name'], 'phone':lastRequestParam['phone']},
        'success':function(response) 
        {
            console.log(response);
            if(response.status == false) { noticePopupInit({message:response.error.message}); }
            else {
			    noticePopupInit({'message':"인증번호를 담은 문자가 발송되었습니다.<br><br>3분 이내에 올바르게 입력해주세요."});
                $(".confirm_code>input.code").attr('id', response.data.user.id)
            }
		}
	});
})
$("div.confirm>div.resend>span").click(function() {
	$("div.confirm>button.send").click();
})
$("div.confirm>button.check").click(function() {
	if(isSendConfirm === false)
	{
		noticePopupInit({'message':'먼저 인증번호를 전송해주세요.'});
		return;
	}

	if($(".confirm_code>input.code").attr('done') === 'true')
	{
		noticePopupInit({'message':"이미 인증하셨습니다."});
		return; 
	}

	lastRequestParam['sms_code'] = $(".confirm_code>input.code")[0].value;
	$.ajax({
		'url': "/user/CheckConfirmCode",
		'method': "POST",
		'dataType': "JSON",
		'data': { 'id':$(".confirm_code>input.code").attr('id'), 'name':lastRequestParam['name'], 'phone':lastRequestParam['phone'], 'confirmCode':lastRequestParam['sms_code'] },
		'success':function(response) {
			if(response.data.error != null) {
				noticePopupInit({'message':"인증번호가 올바르지 않습니다.\n다시 한 번 확인 후 입력해주세요."});
			} else if(response.data.user != null || (response.data != null && response.data.user != null)) {
				noticePopupInit({'message':"인증이 완료되었습니다."});
				$.ajax({
					'url': "/user/RequestMerge",
					'method': "POST",
					'dataType': "JSON",
					'data': {'name':lastRequestParam['name'], 'phone':lastRequestParam['phone'], 'sms_code':lastRequestParam['sms_code']},

					'success': function(res)
					{
						res = res.data;
						if(res.user != null || res == "true") {
							noticePopupInit({'message':"계정에 번호가 등록되었습니다.<br><br>다음부터는 인증 없이 예약하실 수 있습니다."});
							$(".confirm_code>input.code").attr('done', 'true');
							
							$("div.popup-row.confirm").hide();
							$("div#pre-reserve").css('height', '350px');
							$("div#pre-reserve").css('margin-top', '-203px');
						}
						else if(res.error != null)
						{
							noticePopupInit({'message':"계정에 번호를 등록하는 도중 문제가 발생했습니다.<br><br>"+res.error.message});
						}
					}
				});
			}
		}
	});
});

$(".box_list").on("selectstart", function(){ return false; });

var minDate, maxDate, reserve, reserve_id;
var place_id;

function reserve_popup_init(type)
{
	var id = "37984";	
	var reserve_setting = '{"is_default":true,"holidays":[],"reservation_closed_days":[],"start_end_times":[],"working_hours":[],"lead_time":0.5,"times_hash":{}}';
	
	if(reserve_setting.minimum_party_size)
		minimum_party_size = reserve_setting.minimum_party_size;

	// popup init
	$("#reserve_person_count").html(minimum_party_size+1); // personnel count
	$("#reserve_name").val(""); // name
	$("#reserve_phone").val(""); // phone
	$(".confirm_code>input.code").val(""); // confirm_code
	$(".confirm_code>input.code").removeAttr('done'); // confirm check
	$("#reserve_comment").val(""); // message
	$("#pre-reserve").attr('data-type', type);
	$("div.reserve-popup>div.box_list>div.box>.person_count>i.minus").trigger("click");

	
	if((typeof reserve_setting) === "object")
		reserve = reserve_setting;
	else if((typeof reserve_setting) === "string")
		reserve = JSON.parse(reserve_setting);

	reserve_id = id;
	minDate = 0+reserve.reservation_lead_day;
	maxDate = minDate+30;

	// calendar setting
	$('#calendar').datepicker({
		inline: true,
		firstDay: 00,
		showOtherMonths: true,
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		monthNames: [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월" ],
		minDate: minDate,
		maxDate: maxDate,
		beforeShowDay: function(day)
		{
            var result;
           	switch (day.getDay()) {
                case 0: // is sunday?
                    result = [true, "date-sunday"];
                    break;
                case 6: // is saturday?
                    result = [true, "date-saturday"];
                    break;
                default:
                    result = [true, ""];
                    break;
            }
 
            return result;
		},
		onSelect: function(str, obj){
			$("div.reserve-popup>div.box_list>div.box>.date").removeClass("first");

			var selected  = new Date(str);
			var day = new Date(str).getDay();
			var se = reserve.start_end_times[day];
			var th = reserve.times_hash[day];
			
			var title = Number(selected.getMonth()+1)+"월 "+selected.getDate()+"일";
			$("#reserve_date").html(title).attr("data-str", str);
			
			var selected_date = Date.parse(str);
			var isHoliday = false;
			
			for(var i in reserve.holidays)
			{
				var holi = Date.parse(reserve.holidays[i].split('.').join('/'));
				if(selected_date === holi)
				{
					$("#pre-reserve #reserve_time").text("예약 불가");
					isHoliday = true;
				}
			}

			var list = $("<ul>");

			var lead_time = 30;
			if(reserve.reservation_lead_time)
				lead_time = reserve.reservation_lead_time * 60;

			var now = new Date();
			var now_hour = now.getHours() + parseInt(lead_time/60);
			var now_min = now.getMinutes() + (lead_time%60);

			if(!isHoliday)
			{
				now.setHours(0);
				now.setMinutes(0);
				now.setSeconds(0);
				now.setMilliseconds(0);

				$(th).each(function() {
					var str = this.split(':');
					if(now.getTime() == selected.getTime() && ((str[0] > now_hour) || (str[0] == now_hour && str[1] >= now_min)))
					{
						var noon = Number(str[0])<12? "오전":"오후";

						if(Number(str[0]) >= 13)
							str[0] -= 12;

						list.append($("<li>").addClass("disable-block").attr("data-time", this).html(noon + " " + str[0] + ":" + str[1]));
					}
					else if(now.getTime() != selected.getTime())
					{
						var noon = Number(str[0])<12? "오전":"오후";

						if(Number(str[0]) >= 13)
							str[0] -= 12;

						list.append($("<li>").addClass("disable-block").attr("data-time", this).html(noon + " " + str[0] + ":" + str[1]));
					}
				});
			}

			if(th.length === 0 || list.length === 1)
				$("#pre-reserve #reserve_time").text("예약 불가");

			$("#timetable").empty().append(list);
			$("#timetable li").eq(0).trigger("click");
			$("#timetable").hide();
			$("#timetable~i.select_arrow").removeClass("up");

			$("#calendar").hide();
			$("#calendar~i.select_arrow").removeClass("up");
			$(".popup-row.comment span.date").text(title);
		}
	});
}

</script>
			<script>
				$(function() {
					$(".lazy").lazy({
						threshold : 300,
						effect : "fadeIn",
						effectTime: 400,
						afterLoad: function(e) {
							e.removeClass('lazy');
						}
					});
					setTimeout(function() { $("body").scrollTo("+=1px").scrollTo("-=1px"); }, 50);
				});

                location.hash = '';
                $(window).on('hashchange', function(e) {
                    e.preventDefault();

                    if(location.hash == '#login') {
                        if(poing.account.checkLoginState() == true) 
                            noticePopupInit({message: '이미 로그인하셨습니다.'});

                        var scroll = $(window).scrollTop();
                        location.hash = '';
                        $(window).scrollTop( scroll );
                    }
                });
			</script>
			
		</div>

		
	

</body>
</html>