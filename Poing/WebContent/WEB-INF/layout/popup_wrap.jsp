<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${ authUser == null }">
	<jsp:include page="/WEB-INF/layout/popup_wrap_noLogin.jsp"></jsp:include>
</c:if>

<c:if test="${ authUser != null }">
	<jsp:include page="/WEB-INF/layout/popup_wrap_Login.jsp"></jsp:include>
</c:if>
