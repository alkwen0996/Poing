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
					<ul>
						 
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
                                        <i class="icon arrow xs prev"></i><span class="page">1</span><span>4</span><i class="icon arrow xs next"></i>
                                    </div>
                                                            </li>
                                                                <li class="item" data-id="35740">
                                        <span>만</span>
                                    </li>
                                                                <li class="item" data-id="37576">
                                        <span>투뿔등심 고담 (삼성점)</span>
                                    </li>
                                                                <li class="item" data-id="45600">
                                        <span>나무식탁</span>
                                    </li>
                                                                <li class="item" data-id="45800">
                                        <span>몽상가 크레이프</span>
                                    </li>
                                                                <li class="item" data-id="28622">
                                        <span>라미띠에</span>
                                    </li>
                                                                <li class="item" data-id="43900" style="display: none;">
                                        <span>녹턴 사카바</span>
                                    </li>
                                                                <li class="item" data-id="41500" style="display: none;">
                                        <span>반비반스</span>
                                    </li>
                                                                <li class="item" data-id="630" style="display: none;">
                                        <span>신선설농탕 (서초점)</span>
                                    </li>
                                                                <li class="item" data-id="600" style="display: none;">
                                        <span>서해쭈꾸미</span>
                                    </li>
                                                                <li class="item" data-id="310" style="display: none;">
                                        <span>월남쌈도곡점</span>
                                    </li>
                                                                <li class="item" data-id="300" style="display: none;">
                                        <span>타워한우</span>
                                    </li>
                                                                <li class="item" data-id="100" style="display: none;">
                                        <span>시추안 하우스 (삼성점)</span>
                                    </li>
                                                                <li class="item" data-id="1000" style="display: none;">
                                        <span>왕창</span>
                                    </li>
                                                                <li class="item" data-id="40000" style="display: none;">
                                        <span>익스퍼</span>
                                    </li>
                                                                <li class="item" data-id="6400" style="display: none;">
                                        <span>강촌매운탕</span>
                                    </li>
                                                                <li class="item" data-id="10000" style="display: none;">
                                        <span>대구 반야월 막창</span>
                                    </li>
                                                                <li class="item" data-id="2000" style="display: none;">
                                        <span>영동왕족발</span>
                                    </li>
                                                                <li class="item" data-id="32696" style="display: none;">
                                        <span>아벡누</span>
                                    </li>
                                                                <li class="item" data-id="12413" style="display: none;">
                                        <span>피에르 가니에르 서울</span>
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
									<div id="left_time">남은시간 <span>7일 02:06:53</span></div>
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