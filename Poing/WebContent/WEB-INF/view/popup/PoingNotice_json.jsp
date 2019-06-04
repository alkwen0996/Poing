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
	sql.append(" with temp as(select * ");
	sql.append(" from poingNotice pn ");
	sql.append(" join notice_type nt on pn.pn_push_type = nt.notice_push_type ");
	sql.append(" where nt.notice_push_type = 'level_up')  ");
	sql.append(" select * from temp t, member m  ");
	sql.append(" where t.pn_user_id = m.m_no  ");
	
 
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
			
			int id = rs.getInt("pn_id");
			int user_id = rs.getInt("pn_user_id");
			String push_type = rs.getString("pn_push_type");
			String target_id = rs.getString("pn_target_id");
			/* String target = rs.getString(""); */
			int is_read = rs.getInt("pn_is_read");
			int is_count =rs.getInt("pn_is_count");
			int is_poing = rs.getInt("pn_is_poing");
			int is_block_on_user = rs.getInt("pn_is_block_on_user");
			String contents = rs.getString("notice_type_content");
			int wuid = rs.getInt("m_no");
			String wuname = rs.getString("m_name");
			String  updated_at = rs.getString("pn_updated_at");
			String  created_at = rs.getString("pn_created_at");
			
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
			jsonData.put("additional", null);
			jsonData.put("wuname", wuname);
			jsonData.put("wuid", wuid);
			jsonData.put("contents", contents);
			jsonData.put("is_block_on_user", is_block_on_user);
			jsonData.put("is_poing", is_poing);
			jsonData.put("is_count", is_count);
			jsonData.put("is_read", is_read);
			jsonData.put("target", null);
			jsonData.put("target_id", target_id);
			jsonData.put("mongo_target_id", null);
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
[
{
    "id": 7090032,
    "user_id": 1520328,
    "push_type": "level_up",
    "target_id": 1520328,
    "target": "user",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 1,
    "is_block_on_user": 0,
    "contents": "\uc774\ubbfc\uc218\ub2d8, \ub808\ubca8 \uc5c5! \ub808\ubca8 2 \ub2ec\uc131\uc73c\ub85c 1,000P\uac00 \uc801\ub9bd\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
    "wuid": 1520328,
    "wuname": "\uc774\ubbfc\uc218",
    "updated_at": "2019-06-01 12:48:24",
    "created_at": "2019-05-22 12:25:01",
    "image": {
        "original": null,
        "thumbnail": {
            "width": 130,
            "height": 130,
            "uri": "147081205757aacf991cba7.png",
            "url": "http:\/\/c1.poing.co.kr\/147081205757aacf991cba7.png"
        }
    }
}



,{
    "id": 7078316,
    "user_id": 1520328,
    "push_type": "reply_inquiry",
    "target_id": 5588,
    "target": "product",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 1,
    "is_block_on_user": 0,
    "contents": "\"2019 \uad6d\uc81c\uc8fc\ub958\ubc15\ub78c\ud68c\"\uc5d0 \ub0a8\uaca8\uc8fc\uc2e0 \ubb38\uc758\uc0ac\ud56d\uc5d0 \ub2f5\ubcc0\uc774 \ub3c4\ucc29\ud588\uc2b5\ub2c8\ub2e4.",
    "wuid": null,
    "wuname": "\uc774\ubbfc\uc218",
    "updated_at": "2019-05-21 12:07:05",
    "created_at": "2019-05-20 17:25:11",
    "image": {
        "original": {
            "id": 7674312,
            "uri": "MRI-original\/MjAxOTA1\/15567902865ccabc0ebb5b5.png",
            "url": "http:\/\/c2.poing.co.kr\/MRI-original\/MjAxOTA1\/15567902865ccabc0ebb5b5.png",
            "width": 520,
            "height": 386,
            "orig_size": {
                "orig_width": "959",
                "orig_height": "640"
            }
        },
        "thumbnail": {
            "id": 7674312,
            "uri": "MRI-thumbnail\/MjAxOTA1\/15567902865ccabc0ebb5b5.png",
            "url": "http:\/\/c2.poing.co.kr\/MRI-thumbnail\/MjAxOTA1\/15567902865ccabc0ebb5b5.png",
            "width": 520,
            "height": 386,
            "orig_size": {
                "orig_width": "959",
                "orig_height": "640"
            }
        }
    }

}
, {
    "id": 7072888,
    "user_id": 1520328,
    "push_type": "cancel_reservation",
    "target_id": 5025,
    "target": "place",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 1,
    "is_block_on_user": 0,
    "contents": "[\uc608\uc57d\ucde8\uc18c]\n\ub77c\uad6c\ub728\/05.31(\uae08)\/13:30\/1\uba85 \uc608\uc57d\uc774 \uc815\uc0c1\uc801\uc73c\ub85c \ucde8\uc18c\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
    "wuid": 1520328,
    "wuname": "\uc774\ubbfc\uc218",
    "updated_at": "2019-05-20 10:18:27",
    "created_at": "2019-05-19 16:59:16",
    "image": {
        "original": {
            "id": 5304788,
            "uri": "PIMAGE-original\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "url": "http:\/\/c2.poing.co.kr\/PIMAGE-original\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "width": 520,
            "height": 386,
            "status": "live"
        },
        "thumbnail": {
            "id": 5304788,
            "uri": "PIMAGE-thumbnail\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "url": "http:\/\/c2.poing.co.kr\/PIMAGE-thumbnail\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "width": 304,
            "height": 256,
            "status": "live"
        }
    }

}, {
    "id": 7072884,
    "user_id": 1520328,
    "push_type": "accept_reservation",
    "target_id": 5025,
    "target": "place",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 1,
    "is_block_on_user": 0,
    "contents": "[\uc608\uc57d\ub300\uae30]\n\ub77c\uad6c\ub728\/05.31(\uae08)\/13:30\/1\uba85 \uc608\uc57d\uc774 \uc811\uc218 \ub300\uae30\uc911\uc785\ub2c8\ub2e4. \ub9e4\uc7a5\uacfc\uc758 \uc5f0\uacb0 \uc989\uc2dc \uc608\uc57d \ud655\uc815 \uc5ec\ubd80\ub97c \uc54c\ub824\ub4dc\ub9ac\uaca0\uc2b5\ub2c8\ub2e4. (\ub9e4\uc7a5 \uc624\ud508 \uc0c1\ud669\uc5d0 \ub530\ub77c \uc608\uc57d \uc5f0\uacb0\uc774 \uc9c0\uc5f0 \ub420\uc218\ub3c4 \uc788\uc2b5\ub2c8\ub2e4.)",
    "wuid": 1520328,
    "wuname": "\uc774\ubbfc\uc218",
    "updated_at": "2019-05-20 10:18:27",
    "created_at": "2019-05-19 16:58:48",
    "image": {
        "original": {
            "id": 5304788,
            "uri": "PIMAGE-original\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "url": "http:\/\/c2.poing.co.kr\/PIMAGE-original\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "width": 520,
            "height": 386,
            "status": "live"
        },
        "thumbnail": {
            "id": 5304788,
            "uri": "PIMAGE-thumbnail\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "url": "http:\/\/c2.poing.co.kr\/PIMAGE-thumbnail\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "width": 304,
            "height": 256,
            "status": "live"
        }
    }

}, {
    "id": 6997916,
    "user_id": 1520328,
    "push_type": "cancel_reservation",
    "target_id": 5025,
    "target": "place",
    "is_read": 0,
    "is_count": 0,
    "is_poing": 1,
    "is_block_on_user": 0,
    "contents": "[\uc608\uc57d\ucde8\uc18c]\n\ub77c\uad6c\ub728\/06.05(\uc218)\/12:00\/1\uba85 \uc608\uc57d\uc774 \uc815\uc0c1\uc801\uc73c\ub85c \ucde8\uc18c\ub418\uc5c8\uc2b5\ub2c8\ub2e4.",
    "wuid": 1520328,
    "wuname": "\uc774\ubbfc\uc218",
    "updated_at": "2019-05-17 15:36:54",
    "created_at": "2019-05-06 17:38:06",
    "image": {
        "original": {
            "id": 5304788,
            "uri": "PIMAGE-original\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "url": "http:\/\/c2.poing.co.kr\/PIMAGE-original\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "width": 520,
            "height": 386,
            "status": "live"
        },
        "thumbnail": {
            "id": 5304788,
            "uri": "PIMAGE-thumbnail\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "url": "http:\/\/c2.poing.co.kr\/PIMAGE-thumbnail\/MjAxNzA1\/14948376625919699eea6d5.jpeg",
            "width": 304,
            "height": 256,
            "status": "live"
        }
    }

} 
--%>
