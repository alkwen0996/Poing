<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="poing.review.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<%
	ArrayList<CommentDTO> clist = (ArrayList<CommentDTO>)request.getAttribute("clist");
	JSONArray jsonArray = new JSONArray();
	SimpleDateFormat format = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
	JSONObject cdto_json = null;
	if(clist!= null) {
		Iterator<CommentDTO> ir = clist.iterator();
		while (ir.hasNext()) {
			CommentDTO cdto = (CommentDTO) ir.next();
			cdto_json.put("id", cdto.getRc_no());
			cdto_json.put("user_id", cdto.getM_no());
			cdto_json.put("review_id", cdto.getRev_no());
			cdto_json.put("contents", cdto.getRc_content());
			cdto_json.put("name", cdto.getM_name());
			cdto_json.put("created_at", format.format(cdto.getRc_wtime()));
			cdto_json.put("updated_at", format.format(cdto.getRc_mtime()));
			cdto_json.put("profile_image", new JSONObject().put("url", cdto.getM_img()));
			jsonArray.add(cdto_json);
		}
	}
%>
<%= jsonArray %>