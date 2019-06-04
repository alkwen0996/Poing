package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.product.ReserveTicketDTO;

public class ProductPayService {
	public List<ReserveTicketDTO> selectReserva_tic() {
		ReserveTicketDTO rdto = new ReserveTicketDTO();
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<ReserveTicketDTO> list1 = MemberDAO.selectReserva_tic(conn);
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
			throw new RuntimeException(e);
		}
		return insertCheck;
		
	}

	public boolean selectRp_seq(int rp_seq, int totalmoney, String m_email, int point) {
		System.out.println("selectRp_seq 안으로 들어옴"+totalmoney);
		System.out.println("selectRp_seq 안으로 들어옴"+point);
		System.out.println("selectRp_seq 안으로 들어옴"+m_email);
		System.out.println("selectRp_seq 안으로 들어옴"+rp_seq);
		boolean updateCheck = false;
		try {
			Connection conn = ConnectionProvider.getConnection();
			if (totalmoney <= rp_seq && point == totalmoney) {
				System.out.println("조건만족");
				updateCheck = MemberDAO.selectRp_seq(conn, rp_seq, totalmoney, m_email);
				System.out.println(updateCheck); //

			}
		} catch (Exception e) {
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