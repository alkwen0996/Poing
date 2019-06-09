<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
trimDirectiveWhitespaces="true"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>



<%
	StringBuffer sql = new StringBuffer();
	sql.append(" select * from ( ");
	sql.append("  select * from  ");
	sql.append("  (select m.M_NAME m_name,m.m_no m_no, r.REV_NO rev_no ");
	sql.append(" from review r join member m on r.m_no = m.m_no ");
	sql.append(" where r.m_no=m.m_no) mr ");
	sql.append(" join userNotice u on rev_no = un_target_id ");
	sql.append(" where rev_no = un_target_id) ur ");
	sql.append(" join notice_type t on un_push_type = notice_push_type ");
	sql.append(" where un_push_type = 'comment_review' ");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	JSONObject jsonObject = null;
	JSONArray jsonArray=null;
	try{
		conn = ConnectionProvider.getConnection();
		pstmt = conn.prepareStatement(sql.toString());
		rs = pstmt.executeQuery();
		
		jsonObject = new JSONObject();
		 jsonArray = new JSONArray();
		
		while(rs.next()){
			
			int id = rs.getInt("un_id");
			int user_id = rs.getInt("un_user_id");
			String push_type = rs.getString("un_push_type");
			int target_id = rs.getInt("un_target_id");
			String target = rs.getString("un_target"); 
			int is_read = rs.getInt("un_is_read");
			int is_count =rs.getInt("un_is_count");
			int is_poing = rs.getInt("un_is_poing");
			int additional = rs.getInt("un_additional");
			int is_block_on_user = rs.getInt("un_is_block_on_user");
			String contents = rs.getString("notice_type_content");
			int wuid = rs.getInt("m_no");
			String wuname = rs.getString("m_name");
			String  updated_at = rs.getString("un_updated_at");
			String  created_at = rs.getString("un_created_at");
			
			
			JSONObject jsonData = new JSONObject();
			
			JSONArray image = new JSONArray();
			JSONObject img_type = new JSONObject();
			img_type.put("original", null);
			img_type.put("thumbnail",null);
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
			jsonData.put("mongo_target_id", target_id);
			jsonData.put("push_type", push_type);
			jsonData.put("user_id", user_id);
			jsonData.put("object_id", null);			
			jsonData.put("id", id);
		
			jsonArray.add(jsonData);
			
		}
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		   pstmt.close();
		   rs.close();
		   conn.close();
	   }
	
%>
<%=jsonArray %>


 
 
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