<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<%
	JSONObject jsonObject = new JSONObject();
	jsonObject.put("status", request.getAttribute("status"));
	
	
	JSONObject data = new JSONObject();
	if(request.getAttribute("errorMsg")!=null)
	{
		data.put("error", request.getAttribute("errorMsg"));
	}
	data.put("review", request.getAttribute("reviewID"));
	jsonObject.put("data", data);
%>
<%=jsonObject%>