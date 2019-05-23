package poing.member.auth.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.member.MemberDTO;

public class JoinMemberService {
	public boolean joinMember(MemberDTO mdto) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			return MemberDAO.insertMember(conn, mdto);
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
