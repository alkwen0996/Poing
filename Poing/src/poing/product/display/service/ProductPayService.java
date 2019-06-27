package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.product.ProductDetailDAO;
import poing.product.RefundTicketDTO;
import poing.product.PointHistoryDTO;

public class ProductPayService {
	public List<RefundTicketDTO> selectReserva_tic(int m_seq) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<RefundTicketDTO> list = ProductDetailDAO.selectReserva_tic(conn, m_seq);
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		
		
	}
	public List<RefundTicketDTO> selectUseReserva_tic(int m_seq) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<RefundTicketDTO> list = ProductDetailDAO.selectUseReserva_tic(conn, m_seq);
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
		
		
	}
	
	public boolean insertReserve_tic(int tic_seq, int m_seq, int cart_seq, int totalmoney) {
		boolean insertCheck = false;
		try {
			Connection conn = ConnectionProvider.getConnection();
			
			insertCheck = MemberDAO.insertReserve_tic(conn, tic_seq, m_seq, cart_seq,totalmoney);
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return insertCheck;
		
	}

	public boolean updateUserPoint(int m_seq,int m_point, int totalmoney, String m_email, int point) {
		boolean updateCheck = false;
		try {
			Connection conn = ConnectionProvider.getConnection();
			if (totalmoney <= m_point && point == totalmoney) {
				updateCheck = MemberDAO.updateUserPoint(conn,m_seq, m_point, totalmoney, m_email, point);
				System.out.println(updateCheck); //
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return updateCheck;

	}
}