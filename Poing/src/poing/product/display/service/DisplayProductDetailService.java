package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.simple.JSONArray;

import com.util.ConnectionProvider;

import poing.product.ProductDTO;
import poing.product.ProductDetailDAO;


public class DisplayProductDetailService {
	public boolean updateTotalmoney(int totalmoney, int id) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			result = dao.updateTotalmoney(conn, totalmoney, id);
			
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean deletePayCart(int reserva_tic_seq) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result2 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			 result2 = dao.deletePayCart(conn, reserva_tic_seq);
			 
			 return result2;
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
	
	public ArrayList<ProductDTO> select_qna(int p_num) {
		System.out.println("select_qna");
		ProductDetailDAO dao = ProductDetailDAO.getInstance();
		Connection conn = null;
		ArrayList<ProductDTO> list_qna = null;
		try {
			conn = ConnectionProvider.getConnection();
			list_qna	 = dao.selectdisplay_QnA(conn, p_num);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list_qna;
	}// select
}// class
