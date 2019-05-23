package poing.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	public static int selectID(Connection conn, String email) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT m_no FROM member ");
		sql.append("WHERE m_email = ? ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt("m_no");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	//회원 정보 검색
	public MemberDTO selectById(Connection conn, int memberID){
		MemberDTO mdto = null;
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM member WHERE m_no = ?");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, memberID);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				mdto = new MemberDTO();
				mdto.setM_no(rs.getInt("m_no"));
				mdto.setM_name(rs.getString("m_name"));
				mdto.setM_pw(rs.getString("m_password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mdto;
	}
}
