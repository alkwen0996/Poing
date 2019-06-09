<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="body first">
	<div class="title">티켓에 대해 궁금한 점이 있으시다면 문의해주세요!</div>
	<div class="desc">
		-구매한 상품의 취소/반품은 마이페이지&gt;결제&gt;구매내역에서 신청 가능합니다.<br> -상품문의 게시판을 통해
		취소나 환불, 반품 등은 처리되지 않습니다.<br> -상품과 관계없는 글, 양도, 광고성, 욕설, 비방, 도배등의
		글은 예고 없이 삭제됩니다.<br> -공개 게시판이니 전화번호, 메일 주소 등 고객님의 소중한 개인정보는 절대 남기지
		말아주세요.
	</div>
	<div class="input">
		<div class="subject">자세하게 써주세요</div>
		<textarea id="text" class="border_radius soft"></textarea>
	</div>
</div>

<div class="body send_qna">
	<button class="border_radius soft" tabindex="-1">상품 문의 등록하기</button>
</div>

<%-- <c:forEach items = "${qlist }" varStatus = "status" var = "qdto ">
	<div class="body qna" data-id="${qdto.q_seq }">
		<div class="title">질문&amp;답변</div>
	
		<div class="question">
			<span class="label">질문</span> <span class="name">${qdto.q_m_name}</span>
			<div class="text">
				${qdto.q_content } 
				<span class="time"style="display: inline;">${qdto.q_ctime }</span>
			</div>
		</div>
		
		<div class="reply">
			<span class="label">답변</span> <span class="name">${rdto.admin_seq }</span>
			<div class="text">
			${rdto.reply_content }
				<span class="time" style="display: inline;">하루 전</span>
			</div>
		</div>
		
	</div>
</c:forEach> --%>



<%-- 		<div class="body qna">
			<div class="title">질문&amp;답변</div>
			<div class="blank">
                <i class="icon inquiry"></i>
                상품 문의가 없습니다.
            </div>
		</div> --%>
	<%-- <c:choose>
 	 	<c:when test = "${list_qna eq null }">
			<div class="body qna">
			<div class="title">질문&amp;답변</div>
			<div class="blank">
                <i class="icon inquiry"></i>
                상품 문의가 없습니다.
            </div>
		</div>		 	
	 	</c:when> --%> 
	 	
		<%-- <c:when test = "${list_qna ne null }"> --%>
			<c:forEach items = "${ list_qna}" varStatus = "status" var = "dto_qna">
				<div class="body qna" data-id="${dto_qna.q_seq }">
					<div class="title">질문&amp;답변</div>
					<div class="question">
						<span class="label">질문</span> <span class="name">${dto_qna.e_name }</span>
						<div class="text">
							${dto_qna.q_content } 
							<span class="time"style="display: inline;">${dto_qna.q_ctime }</span>
						</div>
					</div>
					<div class="reply">
						<span class="label">답변</span> <span class="name">${dto_qna.admin_seq }</span>
						<div class="text">
							${dto_qna.e_name }님, 안녕하세요! ${dto_qna.admin_seq }입니다.<br>
							${dto_qna.reply_content }
							<span class="time"style="display: inline;">${dto_qna.reply_ctime }</span>
						</div>
					</div>
				</div>
			</c:forEach>
	<%-- 	</c:when>
	</c:choose> --%>


<script>
	$(".body.send_qna>button").click(function() {
		if (poing.account.checkLoginState()) {
			var data = {
				'id' : '5432',
				'inquiry' : $("#text").val(),
				'ticket_seq':${param.p_num}
			};
			$.ajax({
				url : '/Poing/product/sendInquiry.do',
				type : 'POST',
				data : data,
				success : function() {
					location.reload();
				}
			});
		}
	});
	$(document).ready(function() {
		var times = $(".time");

		for (var i = 0; i < times.length; ++i) {
			var iter = times.eq(i);
			var time = iter.text();
			iter.text(moment(time).locale("ko").fromNow()).show();
		}
	});
</script>