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
				mdto.setM_pw(rs.getString("m_pw"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mdto;
	}
	public static boolean insertMember(Connection conn, MemberDTO mdto) {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO member ");
		sql.append(" (              m_no, m_name, m_birth, m_gen, m_email, m_level, m_pw, m_nickname, rp_seq) VALUES");
		sql.append(" (seq_member.nextval,      ?,       ?,     ?,       ?,       ?,    ?,          ?,      ?) ");	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, mdto.getM_name());
			pstmt.setString(2, mdto.getM_birth().toString());
			pstmt.setInt(3, mdto.getM_gen());
			pstmt.setString(4, mdto.getM_email());
			pstmt.setInt(5, mdto.getM_level());
			pstmt.setString(6, mdto.getM_pw());
			pstmt.setString(7, mdto.getM_name());
			pstmt.setInt(8, mdto.getRp_seq());
			result = pstmt.executeUpdate()==1?true:false;
			//입력성공시 true, 실패시 false반환
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}