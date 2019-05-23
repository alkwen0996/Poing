package poing.member.auth.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;

public class CheckEmailDupleService {
	
	public boolean checkEmailDuple(String email) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			int memberID = MemberDAO.selectID(conn, email);
			if(memberID == 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
