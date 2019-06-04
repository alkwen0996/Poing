<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="poing.member.MemberDTO"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
System.out.println("rest restReserveditAjax loaded");

String rnumNrest_seq = request.getParameter("rnumNrest_seq");
System.out.println("rnumNrest_seq="+rnumNrest_seq);

String reserve_num = rnumNrest_seq.split(" ")[0];
System.out.println("reserve_num="+reserve_num);

String rest_seq = rnumNrest_seq.split(" ")[1];
System.out.println("rest_seq="+rest_seq);

int numofpeople =Integer.parseInt( request.getParameter("numofpeople") );
System.out.println("numofpeople="+numofpeople);

String datetime = request.getParameter("date");
String date = datetime.split(" ")[0];
System.out.println("date="+date);
String time = datetime.split(" ")[0].split(":")[0]+":"+datetime.split(" ")[0].split(":")[1];
System.out.println("time="+time);

int m_num = Integer.parseInt( request.getParameter("m_num") );
System.out.println("m_num="+m_num);

String message = request.getParameter("msg");
System.out.println("message="+message);


%>
{
"status": "true"
}
