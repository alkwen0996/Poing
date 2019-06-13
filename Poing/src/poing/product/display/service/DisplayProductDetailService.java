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
	
	public List<ProductDTO> selectRestPhotoImg(int tic_seq) {
		try (Connection conn = ConnectionProvider.getConnection()){	
			List<ProductDTO> list = ProductDetailDAO.selectRestPhotoImg(conn, tic_seq);
			
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
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
	
//	public ProductDTO selectProductDetail(int tic_seq) {
//		try (Connection conn = ConnectionProvider.getConnection()){	
//			ProductDTO dto = ProductDetailDAO.selectProductDetail(conn, tic_seq);
//			
//			return dto;
//		} catch (SQLException e) {
//			throw new RuntimeException(e);
//		}
//	}
	
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
		try (Connection conn = ConnectionProvider.getConnection()){	
			List<PointHistoryDTO> list3 = ProductDetailDAO.PointHistory(conn);
			
			return list3;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<ProductDTO> selectMenuImgList(int tic_seq) {
		try (Connection conn = ConnectionProvider.getConnection()){	
			List<ProductDTO> list = ProductDetailDAO.selectMenuImgList(conn, tic_seq);
			
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<ProductDTO> selectProductList(int cart_seq) {
		try (Connection conn = ConnectionProvider.getConnection()){
			List<ProductDTO> list = ProductDetailDAO.selectProductList(conn, cart_seq);
			
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	
	public List<RefundTicketDTO> selectRefund_tic() {
		RefundTicketDTO rtdto = new RefundTicketDTO();
		try (Connection conn = ConnectionProvider.getConnection()){	
			List<RefundTicketDTO> list2 = ProductDetailDAO.selectRefund_tic(conn);
			
			return list2;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public int insertCart(int m_no, String c_date, int party_size, String message) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()){	
//			conn.setAutoCommit(false);
			int tic_cart_seq = dao.insertCart(conn, m_no, c_date, party_size, message);
//			 conn.commit();
			return tic_cart_seq;
			/*			if (cart_seq>=1 && result1 == true) {
				return true;
			}else {
				return false;
			}*/
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean updatePayCart(int tc_purchas_seq, int m_no, int totalmoney) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result2 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			 result2 = dao.updatePayCart(conn, tc_purchas_seq, m_no, totalmoney);
			 
			 return result2;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean updateState(int tc_purchas_seq) {
		ProductDetailDAO dao = new ProductDetailDAO();		
		boolean result3 = true;
		try (Connection conn = ConnectionProvider.getConnection()){	
			result3 = dao.updateState(conn, tc_purchas_seq);
			
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
         conn.close();
         // 로그 처리
         // 
         //
         return dto;
      } catch (SQLException e) {
         throw new RuntimeException(e);
      }
   }
   

	public ProductDTO select(int tic_seq) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.selectdisplay(conn, tic_seq);
			conn.close();
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public ProductDTO selectDetailMenu(int tic_seq) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.selectDetailMenu(conn, tic_seq);
			conn.close();
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public ProductDTO photoRownum(int tic_seq) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.photoRownum(conn, tic_seq);
			conn.close();
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public ProductDTO menuRownum(int tic_seq) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.menuRownum(conn, tic_seq);
			conn.close();
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public ProductDTO select(int tic_seq, int member_num) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.selectdisplay(conn, tic_seq, member_num);
			conn.close();
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
	public ArrayList<ProductDTO> select_qna(int tic_seq) {
		System.out.println("select_qna");
		ProductDetailDAO dao = ProductDetailDAO.getInstance();
		Connection conn = null;
		ArrayList<ProductDTO> list_qna = null;
		try {
			conn = ConnectionProvider.getConnection();
			list_qna	 = dao.selectdisplay_QnA(conn, tic_seq);
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list_qna;
	}// select
}// class
