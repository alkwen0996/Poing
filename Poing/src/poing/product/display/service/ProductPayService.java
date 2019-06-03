package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.member.MemberDTO;
import poing.product.ProductDTO;
import poing.product.reserva_ticDTO;

public class ProductPayService {
	public List<reserva_ticDTO> selectReserva_tic() {
		reserva_ticDTO rdto = new reserva_ticDTO();
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<reserva_ticDTO> list1 = MemberDAO.selectReserva_tic(conn);
			// 로그 처리
			// 
			//
			return list1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		
		
	}
	
	public boolean insertReserve_tic(int p_num, int m_no, int cart_seq) {
		boolean insertCheck = false;
		try {
			Connection conn = ConnectionProvider.getConnection();
			
			insertCheck = MemberDAO.insertReserve_tic(conn, p_num, m_no, cart_seq);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return insertCheck;
		
	}

	public boolean selectRp_seq(int rp_seq, int p_dc_money, String m_email, int point) {

		boolean updateCheck = false;
		try {
			Connection conn = ConnectionProvider.getConnection();
			if (p_dc_money <= rp_seq && point == p_dc_money) {
				updateCheck = MemberDAO.selectRp_seq(conn, rp_seq, p_dc_money, m_email);
				System.out.println(updateCheck); //

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
		return updateCheck;

	}
}
/*
 * public MemberDTO selectMemberByID(int memberID) { MemberDTO mdto = null;
 * Connection conn = null; try { conn = ConnectionProvider.getConnection(); mdto
 * = mdao.selectById(conn , memberID); } catch (SQLException e) { // TODO
 * Auto-generated catch block e.printStackTrace(); } return mdto; }
 */