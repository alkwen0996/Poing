package poing.member.auth.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.member.MemberDTO;

public class LoginMemberService {
	MemberDAO mdao = new MemberDAO();
	public int getMemberID(String email) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			int memberID = MemberDAO.selectID(conn, email);
			return memberID ;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	public MemberDTO selectMemberByID(int memberID) {
		MemberDTO mdto = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			mdto = mdao.selectById(conn , memberID);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mdto;
	}
}
