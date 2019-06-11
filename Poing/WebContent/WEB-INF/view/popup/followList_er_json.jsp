<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% 
StringBuffer sql = new StringBuffer();
sql.append( "WITH temp AS(  ");
sql.append( "    SELECT * FROM member ");
sql.append( "    WHERE m_seq IN ( SELECT follower_seq FROM follow WHERE following_seq = ?) ");
sql.append( ") ");
sql.append( "SELECT temp.m_seq fer_no, temp.m_name fer_name, temp.m_img fer_img,  ");
sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = temp.m_seq) ercnt, ");
sql.append( "(SELECT COUNT(*) FROM follow WHERE following_seq = temp.m_seq) edcnt, ");
sql.append( "(SELECT COUNT(*) FROM follow WHERE following_seq = temp.m_seq AND follower_seq = ?) amIfollow ");
sql.append( "FROM temp ");
JSONObject jsonObject = new JSONObject();
JSONObject data = new JSONObject();
jsonObject.put("status", true);
jsonObject.put("data", data);
JSONArray follows = new JSONArray();
data.put("follows", follows);
JSONObject meta = new JSONObject();
meta.put("page", 1);
meta.put("per_page", 14);
meta.put("follower_count", request.getParameter("follower_count"));
jsonObject.put("meta", meta);

JSONObject follower = null;
try {
	Connection conn = ConnectionProvider.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	String m_seq = request.getParameter("id");
	pstmt.setString(1, request.getParameter("id"));
	pstmt.setString(2, request.getParameter("id"));
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		follower = new JSONObject();
		follower.put("object_id", null);
		follower.put("id", rs.getInt("fer_no"));
		follower.put("web_name", rs.getString("fer_name"));
		follower.put("profile_image", null);//rs.getString("fer_img"));
		follower.put("follow_state", rs.getInt("amIfollow")==0?false:true);
		follower.put("follower_count", rs.getInt("ercnt"));
		follower.put("follower_count", rs.getInt("edcnt"));
		follower.put("review_count", 0);
		JSONObject temp = new JSONObject();
		temp.put("follower", follower);
		follows.add(temp);
	}
}
catch (Exception e) {
	jsonObject.put("status", false);

	e.printStackTrace();
	
}
%>
<%= jsonObject %>
