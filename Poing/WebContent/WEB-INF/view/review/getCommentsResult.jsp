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
	SimpleDateFormat sdf = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
	JSONObject cdto_json = null;
	if(clist!= null) {
		Iterator<CommentDTO> ir = clist.iterator();
		while (ir.hasNext()) {
			cdto_json = new JSONObject();
			CommentDTO cdto = (CommentDTO) ir.next();
			cdto_json.put("id", cdto.getRc_no());
			cdto_json.put("user_id", cdto.getM_no());
			cdto_json.put("review_id", cdto.getRev_no());
			cdto_json.put("contents", cdto.getRc_content());
			cdto_json.put("name", cdto.getM_name());
			cdto_json.put("created_at", sdf.format(cdto.getRc_wtime()));
			cdto_json.put("updated_at", sdf.format(cdto.getRc_mtime()));
			String m_img = cdto.getM_img();
			JSONObject url = new JSONObject();
			url.put("url", m_img==null?"http://c1.poing.co.kr/original/images/common/default_profile_162.png":m_img);
			cdto_json.put("profile_image", url);
			jsonArray.add(cdto_json);
		}
	}
%>
<%= jsonArray %>