<%@page import="poing.rest.RestTimlineReserveDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%

int reserve_seq = Integer.parseInt( request.getParameter("id") );

Connection conn = ConnectionProvider.getConnection();
String sql = "select * from (select * from rest_reserve  where r_reserve_seq ="+reserve_seq+") a left join member b on a. r_reserve_m_seq = b.m_seq";
PreparedStatement pstmt = null;
ResultSet rs = null;
System.out.println("getReseveConfirm sql"+sql);

pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();
JSONObject res = new JSONObject();

if (rs.next()) {
	res.put("status", "success");
	res.put("m_name", rs.getString("m_name"));
	res.put("r_reserve_date", rs.getString("r_reserve_date"));
	res.put("r_reserve_hour", rs.getString("r_reserve_hour"));
	res.put("r_reserve_num_of_people", rs.getString("r_reserve_num_of_people"));
	res.put("r_reserve_request", rs.getString("r_reserve_request"));
	
} else {
	res.put("status", "fail");
}
pstmt.close();
rs.close();
conn.close();


%>
<%=res%>