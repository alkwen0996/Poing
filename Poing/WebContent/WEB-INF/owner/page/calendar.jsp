<%@page import="poing.rest.RestTimlineReserveDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="poing.review.display.service.DisplayReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Matrix Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
<%@include file="/owner/css/bootstrap.min.css" %>
<%@include file="/owner/css/bootstrap-responsive.min.css" %>
<%@include file="/owner/css/fullcalendar.css" %>
<%@include file="/owner/css/bootstrap-wysihtml5.css" %>
<%@include file="/owner/css/matrix-style.css" %>
<%@include file="/owner/css/matrix-media.css" %>
<%@include file="/owner/font-awesome/css/font-awesome.css" %>
<%@include file="/owner/css/jquery.gritter.css" %>
<%@include file="/fullcalendar/packages/core/main.css" %>
<%@include file="/fullcalendar/packages/daygrid/main.css" %>
</style>
<style>
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  margin-left:0;
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 15% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 35%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
.popup-title{
	color: #c91b3c;
    font-size: 17px;
    padding-bottom: 13px;
    border-bottom: 1px solid #dfdfdf;
    margin-bottom: 25px;
    font-weight: 600;
}

.popup-row{
	font-size: 17px;
    font-weight: 700;
    padding-bottom: 8px;
    padding-top: 9px;
}
.label{
	font-size: 17px;
}
</style>

</head>
<body>


	<!-- The Modal -->
	<div id="myModal" class="modal">

  	<!-- Modal content -->
  	<div class="modal-content">
    	<span class="close">&times;</span>
    	
    	
    	
		<div class="popup-title">예약이 접수되었습니다.<br> 확정/불가를 선택해 주세요</div>
		
		<div class="popup-row">
			<span class="subtitle">예약 내역입니다.</span>
		</div>
		<div class="popup-row name">
			<span class="label">예약자명</span>  <span id="m_name" class="value"></span>
		</div>
		<div class="popup-row date">
			<span class="label">예약날짜</span>  <span id="r_reserve_date" class="value"></span>
		</div>
		<div class="popup-row time">
			<span class="label">예약시간</span>  <span id="r_reserve_hour" class="value"></span>
		</div>
		<div class="popup-row personnel">
			<span class="label">인원수</span>  <span id="r_reserve_num_of_people" class="value"></span>
		</div>
		<div class="popup-row phone">
			<span class="label">연락처</span>  <span class="value">010-0001-1024</span>
		</div>
		<div class="popup-row comment">
			<span class="label">요청사항</span>  <span id="r_reserve_request"  class="value"></span>
		</div>
		<br><br>

		<div class="confirm-btn" style="margin-left:20%;">
			<button value ="" class="reserve_confirm" tabindex="-1" style="background-color: #08c; color: white; font-size: 17px; border:1px;">예약 확정 통보</button>
			<button value="" class="reserve_reject" tabindex="-1" style="background-color: #c91b3c; color: white; font-size: 17px; border:1px;" >예약 불가 통보</button>
		</div>
    	
    	
  	</div>
	</div>

 
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.ow">Matrix Admin</a></h1>
</div>
<!--close-Header-part--> 

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.ow"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.ow"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>

<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch--> 

<!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-file"></i>Addons</a>
  <ul>
    <li><a href="index.ow"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="charts.ow"><i class="icon icon-signal"></i> <span>Charts &amp; graphs</span></a> </li>
    <li> <a href="widgets.ow"><i class="icon icon-inbox"></i> <span>Widgets</span></a> </li>
    <li><a href="tables.ow"><i class="icon icon-th"></i> <span>Tables</span></a></li>
    <li><a href="grid.ow"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.ow">Basic Form</a></li>
        <li><a href="form-validation.ow">Form with Validation</a></li>
        <li><a href="form-wizard.ow">Form with Wizard</a></li>
      </ul>
    </li>
    <li><a href="buttons.ow"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
    <li><a href="interface.ow"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
    <li class="submenu active"> <a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="index2.ow">Dashboard2</a></li>
        <li><a href="gallery.ow">Gallery</a></li>
        <li><a href="calendar.ow">Calendar</a></li>
        <li><a href="invoice.ow">Invoice</a></li>
        <li><a href="chat.ow">Chat option</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="error403.ow">Error 403</a></li>
        <li><a href="error404.ow">Error 404</a></li>
        <li><a href="error405.ow">Error 405</a></li>
        <li><a href="error500.ow">Error 500</a></li>
      </ul>
    </li>
    <li class="content"> <span>Monthly Bandwidth Transfer</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
    </li>
  </ul>
</div>
<div id="content">
	<div id='calendar_created'></div>

</div>
<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part-->

<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src='/Poing/fullcalendar/packages/core/main.js'></script>
<script src='/Poing/fullcalendar/packages/daygrid/main.js'></script>
<script src='/Poing/fullcalendar/packages/core/locales-all.js'></script>
<script src="js/matrix.js"></script> 

<%
ArrayList<RestTimlineReserveDTO> list = (ArrayList<RestTimlineReserveDTO>)request.getAttribute("list"); 
StringBuffer sb = new StringBuffer();
if(list.size()>0){
for( int i=0 ; i<list.size(); i++) {
	if(i==0) {
		sb.append("{");
		sb.append("title: '예약 요청', start: '"+list.get(i).getR_reserve_date()+"',");
		sb.append("id:'"+list.get(i).getR_reserve_seq()+"'}");
	} else {
		sb.append(",{");
		sb.append("title: '예약 요청', start: '"+list.get(i).getR_reserve_date()+"',");
		sb.append("id:'"+list.get(i).getR_reserve_seq()+"'}");
	}
	
	/* if(i==0) reserveDate += "{title: '예약', start: '"+list.get(i).getR_reserve_date()+"'}";
	else reserveDate += ",{title: '예약', start: '"+list.get(i).getR_reserve_date()+"'}";
	} */
	}
}
%>
<script>

//Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal 
// btn.onclick = function() {
//  modal.style.display = "block";
//} 

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


var calendarEl = document.getElementById('calendar_created');

var calendar = new FullCalendar.Calendar(calendarEl, {
  plugins: [ 'dayGrid' ],
  locale: 'ko',	    
  header: {
    left: 'prev',
    center: 'title',
    right: 'next'
  },
  formatdate: {
  	day: 'dd'
  },
  events: [
  	<%=sb%>
  ],
  eventClick: function(info) {
	    
	  $.ajax({
			url: '/Poing/owner/ajax/reserve_confirm.ow',
			method: "post",
			dataType: 'json',
			data: {
				'id': info.event.id
			},
			async: false
		}).success(function (data) {
			var status = "";
			if(data.status=="fail") {
				status = "오류발생. 다시 시도해주세요";
				alert(status);
			} else {
				$("#m_name").text(data.m_name);
				$("#r_reserve_date").text(data.r_reserve_date);
				$("#r_reserve_hour").text(data.r_reserve_hour);
				$("#r_reserve_num_of_people").text(data.r_reserve_num_of_people);
				$("#r_reserve_request").text(data.r_reserve_request);
				
				$(".reserve_confirm").attr("value",info.event.id);
				$(".reserve_reject").attr("value",info.event.id);
				
			}
			modal.style.display = "block";
		});
	    info.el.style.borderColor = 'red';
	  }
});
calendar.render();

$(".reserve_confirm").click(function() {
	
	 $.ajax({
			url: '/Poing/owner/ajax/reserve_confirmY.ow',
			method: "post",
			dataType: 'json',
			data: {
				'reserve_seq': $(this).val()
			},
			async: false
		}).success(function (data) {
			var status = "";
			if(data.status=="fail") {
				status = "오류발생. 다시 시도해주세요";
				alert(status);
			} else {
				$("#m_name").text(data.m_name);
				$("#r_reserve_date").text(data.r_reserve_date);
				$("#r_reserve_hour").text(data.r_reserve_hour);
				$("#r_reserve_num_of_people").text(data.r_reserve_num_of_people);
				$("#r_reserve_request").text(data.r_reserve_request);
				
				$(".reserve_confirm").attr("value",info.event.id);
				$(".reserve_reject").attr("value",info.event.id);
				
			}
			modal.style.display = "block";
		});
	
})

</script>
</body>
</html>
