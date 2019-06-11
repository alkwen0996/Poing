package poing.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserNoticeDAO {
	private static UserNoticeDAO displaydao = new UserNoticeDAO();
	
	public static UserNoticeDAO getInstance() {
		return displaydao;
	}// getInstance
	
	public UserNoticeDAO() {}
	
	public UserNoticeDTO selectDisplay(Connection conn){
		System.out.println("UserNoticeDAO selectDisplay()");
		StringBuilder sql = new StringBuilder();
		sql.append("");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserNoticeDTO undto = null;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				undto = new UserNoticeDTO();
				undto.setUn_seq(rs.getInt("un_seq"));
				undto.setUn_m_seq(rs.getInt("un_m_seq"));
				undto.setUn_m_name(rs.getString("un_m_name"));
				undto.setUn_is_read(rs.getInt("un_is_read"));
				undto.setUn_is_poing(rs.getInt("un_is_poing"));
				undto.setUn_is_count(rs.getInt("un_is_count"));
				undto.setUn_is_block_on_user(rs.getInt("un_is_block_on_user"));
				undto.setUn_additional(rs.getInt("un_additional"));
				undto.setUn_ctime(rs.getString("un_ctime"));
				undto.setUn_utime(rs.getString("un_utime"));			
				undto.setUn_img_original(rs.getString("un_img_original"));
				undto.setUn_img_thumnail(rs.getString("un_img_thumnail"));
				undto.setNt_seq(rs.getInt("nt_seq"));
				undto.setNt_pushtype(rs.getString("nt_pushtype"));
				undto.setNt_typecontent(rs.getString("nt_typecontent"));
				undto.setNt_target(rs.getString("nt_target"));
				undto.setNt_m_seq(rs.getInt("nt_m_seq"));
				undto.setNt_m_name(rs.getString("nt_m_name"));
				undto.setNt_rev_seq(rs.getInt("nt_rev_seq"));
				undto.setNt_rest_seq(rs.getInt("nt_rest_seq"));
				undto.setNt_rest_name(rs.getString("nt_rest_name"));
				undto.setNt_tic_seq(rs.getInt("nt_tic_seq"));
				undto.setNt_tic_name(rs.getString("nt_tic_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return undto;
		
	}// selectDisplay
	
}// class
