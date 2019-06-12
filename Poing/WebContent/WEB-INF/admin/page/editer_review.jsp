<%@page import="poing.review.display.service.DisplayReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>리뷰 작성</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
<%@include file="/admin/css/bootstrap.min.css" %>
<%@include file="/admin/css/bootstrap-responsive.min.css" %>
<%@include file="/admin/css/colorpicker.css" %>
<%@include file="/admin/css/datepicker.css" %>
<%@include file="/admin/css/uniform.css" %>
<%@include file="/admin/css/select2.css" %>
<%@include file="/admin/css/matrix-style.css" %>
<%@include file="/admin/css/matrix-media.css" %>
<%@include file="/admin/css/bootstrap-wysihtml5.css" %>
<%@include file="/admin/font-awesome/css/font-awesome.css" %>
</style>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<jsp:include page="/WEB-INF/admin/layout/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/admin/layout/sidebar.jsp"></jsp:include>


<div id="content">
	<div class="container-fluid">
		<div class="row-fluid">	
			<div class="span6">
				<div class="widget-box widget-chat">
					<div class="widget-title bg_lb">
						<span class="icon"> <i class="icon-comment"></i>
						</span>
						<h5>Chat Option</h5>
					</div>
					<div class="widget-content nopadding collapse in" id="collapseG4">
						<div class="chat-users panel-right2">
							<div class="panel-title">
								<h5>레스토랑 검색</h5>
							</div>
							<div class="panel-content nopadding">
								<ul class="contact-list">
									<li id="user-Alex" class="online">
										<input type="text" name="searchRest" class="searchRest" style="width: 145px; margin: 0 auto" />
									</li>
								</ul>
							</div>
						</div>
						<div class="chat-content panel-left2">
							<div class="chat-messages" id="chat-messages">
								<div id="chat-messages-inner">
									<p id="msg-1" class="user-linda" style="display: block;">
										<span class="msg-block"><img src="img/demo/av2.jpg" alt="">
											<strong>Linda</strong> 
											<span class="time">16:09</span>
											<span class="msg">Hello Every one do u want to freindship with me?</span>
										</span>
									</p>
									
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part--> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script> 
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/jquery.toggle.buttons.js"></script> 
<script src="js/masked.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/wysihtml5-0.3.0.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/bootstrap-wysihtml5.js"></script> 
<script>
	$('.textarea_editor').wysihtml5();
	
	$(".searchRest").on("keyup", function() {
		if( $(this).val().length > 0) {
            $.ajax({'url': "/Poing/restaurant/search.do?searchWord="+encodeURIComponent($(this).val()),
                    'type': "GET",
                    'success': function(res) {
                        res = $.parseJSON(res).data.ac_keywords;

                        var list = $("#chat-messages-inner");
                        list.empty();

                        if(res.length > 0) {
                            for(var i=0; i<res.length && i<5; ++i) {
                                var e = res[i];
                                var li = $("<li>", {'data-id':e.id});
                                li.append( $("<div>", {	'class':'name',
                                                        'text':e.name }) );
                                li.append( $("<div>", {	'class':'desc',
                                                        'text':e.description }) );
                                list.append(li);
                            }
                        } else {
                            var li = $("<li>");
                            li.append( $("<div>", {'text':'검색 결과가 없습니다.' }) );
                            list.append(li);
                        }
                    }
            });
	});
</script>
</body>
</html>
