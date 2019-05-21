package poing.member.auth.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	public int selectID(Connection conn, String email) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT m_no FROM p_member ");
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
		/*MemberDTO mdto = new MemberDTO();
		StringBuffer sql = new StringBuffer();
		sql.append("{ CALL selectMemberID(?,?) } ");

		CallableStatement cstmt = null;
		ResultSet rs = null;

		try {
			cstmt = conn.prepareCall(sql.toString());
			cstmt.registerOutParameter(2, oracle.jdbc.OracleTypes.CURSOR);
			cstmt.executeQuery();
			rs = (ResultSet) cstmt.getObject(2);
			if(rs.next())
			{
				mdto.convert(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return mdto;*/
		MemberDTO mdto = null;
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM p_member WHERE m_no = ?");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, memberID);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				mdto = new MemberDTO();
				mdto.setId(rs.getInt("m_no"));
				mdto.setName(rs.getString("m_name"));
				mdto.setPassword(rs.getString("m_password"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mdto;
	}
}
