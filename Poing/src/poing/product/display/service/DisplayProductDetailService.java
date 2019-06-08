package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;

import com.util.ConnectionProvider;

import poing.product.ProductDTO;
import poing.product.ProductDetailDAO;
import poing.product.RefundTicketDTO;
import poing.product.PointHistoryDTO;


public class DisplayProductDetailService {
	public boolean updateTotalmoney(String totalmoney, int id) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			result = dao.updateTotalmoney(conn, totalmoney, id);
			
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public ProductDTO selectProductDetail(int p_num) {
		try (Connection conn = ConnectionProvider.getConnection()){	
			ProductDTO dto = ProductDetailDAO.selectProductDetail(conn, p_num);
			
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public PointHistoryDTO selectRownum() {
		boolean result2 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			PointHistoryDTO rtdto = ProductDetailDAO.selectRownum(conn);
			
			return rtdto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<PointHistoryDTO> PointHistory() {
		PointHistoryDTO rtdto = new PointHistoryDTO();
		boolean result2 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			List<PointHistoryDTO> list3 = ProductDetailDAO.PointHistory(conn);
			
			return list3;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<RefundTicketDTO> selectRefund_tic() {
		RefundTicketDTO rtdto = new RefundTicketDTO();
		boolean result2 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			List<RefundTicketDTO> list2 = ProductDetailDAO.selectRefund_tic(conn);
			
			return list2;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public int insertCart(int m_no, String c_date, int party_size, String message,ArrayList<Integer> ids,ArrayList<Integer> counts) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		boolean result1 = false;
		try (Connection conn = ConnectionProvider.getConnection()){	
//			conn.setAutoCommit(false);
			int cart_seq = dao.insertCart(conn, m_no, c_date, party_size, message);
//			 conn.commit();
			return cart_seq;
			/*			if (cart_seq>=1 && result1 == true) {
				return true;
			}else {
				return false;
			}*/
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean updatePayCart(int reserva_tic_seq, int m_no, String totalmoney) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result2 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			 result2 = dao.updatePayCart(conn, reserva_tic_seq, m_no, totalmoney);
			 
			 return result2;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean updateState(int reserva_tic_seq) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result3 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			result3 = dao.updateState(conn, reserva_tic_seq);
			
			return result3;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	

	public boolean insertTotalCart(int cart_seq,ArrayList<Integer> ids,ArrayList<Integer> counts) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		boolean result = false;
		try (Connection conn = ConnectionProvider.getConnection()) {	
			 result = dao.insertTotalCart(conn, cart_seq, ids, counts);
			if (result == true) {
				return true;
			}else {
				return false;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public ProductDTO selectCartId(int cart_seq) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();
		try (Connection conn = ConnectionProvider.getConnection()) {
			ProductDTO dto = dao.selectCartId(conn, cart_seq);
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	

	public ProductDTO select(int p_num) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.selectdisplay(conn, p_num);
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public ProductDTO select(int p_num, int member_num) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.selectdisplay(conn, p_num, member_num);
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
