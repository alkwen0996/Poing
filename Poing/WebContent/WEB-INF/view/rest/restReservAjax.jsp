<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@page import="poing.member.MemberDTO"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
int rest_seq = Integer.parseInt(request.getParameter("restaurantId"));
String msg = request.getParameter("message");
%>
{
"status": true,
"rest_seq":"<%=rest_seq%>",
"message":"<%=msg%>"
}

