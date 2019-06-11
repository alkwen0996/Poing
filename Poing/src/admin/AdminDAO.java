package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import admin.AdminDTO;

public class AdminDAO {
	public boolean checkAdminId(Connection conn, String e_id) throws SQLException {
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(*) result FROM editer ");
		sql.append(" WHERE e_id = ? ");
		
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, e_id);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			result = rs.getInt("result")==0?false:true;
		}
		return result;
	}
	public String selectAdminPw(Connection conn, String e_id) throws SQLException {
		String e_pw = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT e_pw FROM editer ");
		sql.append(" WHERE e_id = ? ");
		
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, e_id);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			e_pw = rs.getString("e_pw");
		}
		return e_pw;
	}
	public AdminDTO getAdminDTO(Connection conn, String e_id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM editer ");
		sql.append(" WHERE e_id = ? ");
		
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, e_id);
		ResultSet rs = pstmt.executeQuery();
		AdminDTO adminDTO = null;
		if (rs.next()) {
			 adminDTO = new AdminDTO(rs);
		}
		return adminDTO;
	}
}