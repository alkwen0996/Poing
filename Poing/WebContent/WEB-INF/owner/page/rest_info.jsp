<%@page import="poing.review.display.service.DisplayReviewService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>레스토랑 이미지</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<style>
<%@include file="/owner/css/bootstrap.min.css" %>
<%@include file="/owner/css/bootstrap-responsive.min.css" %>
<%@include file="/owner/css/uniform.css" %>
<%@include file="/owner/css/matrix-style.css" %>
<%@include file="/owner/css/matrix-media.css" %>
<%@include file="/owner/font-awesome/css/font-awesome.css" %>
</style>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<jsp:include page="/WEB-INF/owner/layout/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/owner/layout/sidebar.jsp"></jsp:include>

<div id="content">
	<div id="content-header">
		<div id="breadcrumb">
			<a href="index.html" class="tip-bottom"
				data-original-title="Go to Home"><i class="icon-home"></i> Home</a>
			<a href="#" class="tip-bottom" data-original-title="">Form
				elements</a> <a href="#" class="current">Common elements</a>
		</div>
		<h1>Common Form Elements</h1>
	</div>
	<div class="container-fluid">
		<hr>
		<div class="row-fluid">
			<div class="span6">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"> <i class="icon-align-justify"></i>
						</span>
						<h5>배너 정보</h5>
					</div>
					<div class="widget-content nopadding">
						<form action="#" method="get" class="form-horizontal">
							<div class="control-group">
								<label class="control-label">First Name :</label>
								<div class="controls">
									<input type="text" class="span11" placeholder="First name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Last Name :</label>
								<div class="controls">
									<input type="text" class="span11" placeholder="Last name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Password input</label>
								<div class="controls">
									<input type="password" class="span11"
										placeholder="Enter Password">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Company info :</label>
								<div class="controls">
									<input type="text" class="span11" placeholder="Company name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Description field:</label>
								<div class="controls">
									<input type="text" class="span11"> <span
										class="help-block">Description field</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Message</label>
								<div class="controls">
									<textarea class="span11"></textarea>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-success">Save</button>
							</div>
						</form>
					</div>
				</div>


			</div>
			<div class="span6">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"> <i class="icon-align-justify"></i>
						</span>
						<h5>상세정보</h5>
					</div>
					<div class="widget-content nopadding">
						<form action="#" class="form-horizontal">
							<div class="control-group">
								<label for="normal" class="control-label">Phone field</label>
								<div class="controls">
									<input type="text" id="mask-phone" class="span8 mask text">
									<span class="help-block blue span8">(999) 999-9999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">Phone field +
									ext.</label>
								<div class="controls">
									<input type="text" id="mask-phoneExt" class="span8 mask text">
									<span class="help-block blue span8">(999) 999-9999?
										x99999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">Phone field +
									ext.</label>
								<div class="controls">
									<input type="text" id="mask-phoneInt" class="span8 mask text">
									<span class="help-block blue span8">+40 999 999 999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">Date field</label>
								<div class="controls">
									<input type="text" id="mask-date" class="span8 mask text">
									<span class="help-block blue span8">99/99/9999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">SSN field</label>
								<div class="controls">
									<input type="text" id="mask-ssn" class="span8 mask text">
									<span class="help-block blue span8">999-99-9999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">Product Key</label>
								<div class="controls">
									<input type="text" id="mask-productKey"
										class="span8 mask text"> <span
										class="help-block blue span8">a*-999-a999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">Eye Script</label>
								<div class="controls">
									<input type="text" id="mask-eyeScript" class="span8 mask text">
									<span class="help-block blue span8">~9.99 ~9.99 999</span>
								</div>
							</div>
							<div class="control-group">
								<label for="normal" class="control-label">Percent</label>
								<div class="controls">
									<input type="text" id="mask-percent" class="span8 mask text">
									<span class="help-block blue span8">99%</span>
								</div>
							</div>
						</form>
					</div>
				</div>


			</div>
		</div>

	</div>
</div>
<!-- content -->
<!--Footer-part-->
<div class="row-fluid">
<div id="footer" class="span12">
	2013 &copy; Matrix Admin. Brought to you by <a
		href="http://themedesigner.in">Themedesigner.in</a>
</div>
</div>
<!--end-Footer-part-->
<script src="js/jquery.min.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/bootstrap-colorpicker.js"></script>
<script src="js/bootstrap-datepicker.js"></script> 
<script src="js/matrix.form_common.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/matrix.js"></script>
</body>
</html>
