<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	
%>

<%
	StringBuffer sql_type = new StringBuffer();

	sql_type.append(" select * from notice_type ");

	Connection conn_type = null;
	PreparedStatement pstmt_type = null;
	ResultSet rs_type = null;

	conn_type = ConnectionProvider.getConnection();
	pstmt_type = conn_type.prepareStatement(sql_type.toString());
	rs_type = pstmt_type.executeQuery();

	// 타입별로 검색해오기
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	StringBuffer sql = new StringBuffer();
	int target_seq = 0;
	
	int wuid = 0; 
	String wuname = ""; 

	if (rs_type.getString("nt_pushtype") == "review") {

		sql.append(" select *  from ");
		sql.append(" ( select *from userNotice un ");
		sql.append(" join notice_type nt on un.nt_seq = nt.nt_seq ");
		sql.append(" ) unnt ");
		sql.append(" join member m on unnt.un_m_seq = m.m_seq ");
		sql.append(" join ( 	select * from review rev ");
		sql.append(" join member m on rev.rev_m_seq = m.m_seq ) revm ");
		sql.append(" on unnt.rev_seq = revm.rev_seq ");

		target_seq = rs_type.getInt("rev.rev_seq");
		wuid = ;

	}  
		else if(rs_type.getString("nt_pushtype") == "user"){
		
			sql.append(" select *  from( ");
			sql.append(" select *from userNotice un ");
			sql.append(" join notice_type nt on un.nt_seq = nt.nt_seq) unnt ");
			sql.append(" join member m on unnt.un_m_seq = m.m_seq  ");
			sql.append(" join ( select * from member m join follow f on follower_seq = m.M_SEQ ) mf ");
			sql.append(" on unnt.un_m_seq = mf.following_seq ");
			sql.append(" where unnt.m_seq is not null ");
			
			target_seq = rs_type.getInt(" mf.follower_seq ");
		
		} 

	JSONObject jsonObject = null;
	JSONArray jsonArray = null;
	try {
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql.toString());
		rs = pstmt.executeQuery();

		jsonObject = new JSONObject();
		jsonArray = new JSONArray();

		while (rs.next()) {

			int id = rs.getInt("un_seq");
			int user_id = rs.getInt("nt_m_seq");
			String push_type = rs.getString("nt_push_type");
			String target_id = rs.getString("target_seq");
			String target = rs.getString("nt_target");
			int is_read = rs.getInt("un_is_read");
			int is_count = rs.getInt("un_is_count");
			int is_poing = rs.getInt("un_is_poing");
			int is_block_on_user = rs.getInt("un_is_block_on_user");
			int additional = rs.getInt("un_additional");
			String contents = rs.getString("nt_typecontent");
			int wuid = rs.getInt("un_m_seq");
			String wuname = rs.getString("m.m_name");
			String updated_at = rs.getString("pn_updated_at");
			String created_at = rs.getString("pn_created_at");

			JSONObject jsonData = new JSONObject();

			JSONArray image = new JSONArray();
			JSONObject img_type = new JSONObject();
			img_type.put("original", null);
			img_type.put("thumbnail", null);
			image.add(img_type);

			jsonData.put("image", image);

			jsonData.put("schema", null);
			jsonData.put("web_schema", null);

			jsonData.put("who_update", null);
			jsonData.put("created_at", created_at);
			jsonData.put("updated_at", updated_at);
			jsonData.put("additional", additional);
			jsonData.put("wuname", wuname);
			jsonData.put("wuid", wuid);
			jsonData.put("contents", contents);
			jsonData.put("is_block_on_user", is_block_on_user);
			jsonData.put("is_poing", is_poing);
			jsonData.put("is_count", is_count);
			jsonData.put("is_read", is_read);
			jsonData.put("target", target);
			jsonData.put("target_id", target_id);
			jsonData.put("mongo_target_id", null);
			jsonData.put("push_type", push_type);
			jsonData.put("user_id", user_id);
			jsonData.put("object_id", null);
			jsonData.put("id", id);

			jsonArray.add(jsonData);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		pstmt.close();
		rs.close();
		conn.close();
	}
%>
<%=jsonArray%>





<%-- 
 [{
    "id": 7151396,
    "user_id": 1520328,
    "push_type": "comment_review", 
    "target_id": 193592,
    "target": "review",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 0,
    "is_block_on_user": 0,
    "contents": "\ucf54\uba58\ud2b8 \ud558\uc168\uc2b5\ub2c8\ub2e4.",
    "wuid": 1517256,
    "wuname": "\uace0\uc9c0\uc6a9",
    "updated_at": "2019-06-03 11:12:29",
    "created_at": "2019-06-03 09:33:16",
    "image": {
        "original": null,
        "thumbnail": null
    }
}, {
    "id": 7145244,
    "user_id": 1520328,
    "push_type": "selection_review",
    "target_id": 193592,
    "target": "review",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 0,
    "is_block_on_user": 0,
    "contents": "\ub9ac\ubdf0\ub97c \ucc1c \ud558\uc168\uc2b5\ub2c8\ub2e4.",
    "wuid": 1517256,
    "wuname": "\uace0\uc9c0\uc6a9",
    "updated_at": "2019-06-02 18:30:30",
    "created_at": "2019-06-01 15:26:34",
    "image": {
        "original": null,
        "thumbnail": null
    }
}, {
    "id": 7145240,
    "user_id": 1520328,
    "push_type": "like_review",
    "target_id": 193592,
    "target": "review",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 0,
    "is_block_on_user": 0,
    "contents": "\ub9ac\ubdf0\ub97c \uc88b\uc544\uc694 \ud558\uc168\uc2b5\ub2c8\ub2e4.",
    "wuid": 1517256,
    "wuname": "\uace0\uc9c0\uc6a9",
    "updated_at": "2019-06-02 18:30:30",
    "created_at": "2019-06-01 15:26:34",
    "image": {
        "original": null,
        "thumbnail": null
    }
}, {
    "id": 7145236,
    "user_id": 1520328,
    "push_type": "comment_review",
    "target_id": 193592,
    "target": "review",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 0,
    "is_block_on_user": 0,
    "contents": "\ucf54\uba58\ud2b8 \ud558\uc168\uc2b5\ub2c8\ub2e4.",
    "wuid": 1517256,
    "wuname": "\uace0\uc9c0\uc6a9",
    "updated_at": "2019-06-02 18:30:30",
    "created_at": "2019-06-01 15:26:20",
    "image": {
        "original": null,
        "thumbnail": null
    }
}, {
    "id": 7145232,
    "user_id": 1520328,
    "push_type": "follow",
    "target_id": 1517256,
    "target": "user",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 0,
    "is_block_on_user": 0,
    "contents": "\ud314\ub85c\uc6b0 \ud558\uc168\uc2b5\ub2c8\ub2e4.",
    "wuid": 1517256,
    "wuname": "\uace0\uc9c0\uc6a9",
    "updated_at": "2019-06-02 18:30:30",
    "created_at": "2019-06-01 15:25:53",
    "image": {
        "original": null,
        "thumbnail": null
    }
}] --%>