<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%

boolean result2 = (Boolean)request.getAttribute("result2");
boolean result1 = (Boolean)request.getAttribute("result1");


JSONObject jsonObject = new JSONObject();
jsonObject.put("status1", result1);
jsonObject.put("status2", result2);

System.out.print("환불 완료" + result2);
%>
<%=jsonObject%>



