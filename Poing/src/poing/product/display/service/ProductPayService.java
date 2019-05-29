package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.member.MemberDTO;

public class ProductPayService {
	/*public MemberDTO selectMemberByID(int memberID) {
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
	}*/
	public boolean selectRp_seq(int rp_seq, int p_dc_money, String m_email, int point) {
		
		boolean updateCheck = false;
		try {
			Connection conn = ConnectionProvider.getConnection();
			if (p_dc_money <= rp_seq && point == p_dc_money) {
				updateCheck = MemberDAO.selectRp_seq(conn, rp_seq, p_dc_money, m_email);
				System.out.println(updateCheck);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		return updateCheck;
		
		
	}
}
