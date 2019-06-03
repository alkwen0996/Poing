package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;

import poing.product.CartDAO;
import poing.product.CartDTO;
import poing.product.ProductDAO;
import poing.product.ProductDTO;

public class DisplayCartService {
   CartDAO cartdao = new CartDAO();
   
   public int insertbasket(int m_no) {
      try {
         Connection conn = ConnectionProvider.getConnection();
         conn.setAutoCommit(false);
         int cart = cartdao.insertbasket(conn, m_no);
         
         /*if (cart != -1) {
            return true;
         }*/
         
         return cart;
      } catch (SQLException e) {
         throw new RuntimeException(e);
      } 
      //return false;
   }
   
   public boolean insertTotalCart(int cart_seq, String[] ids, String[] counts) {
	       
	      boolean result = false;
	      try (Connection conn = ConnectionProvider.getConnection()) {   
	          result = cartdao.insertTotalCart(conn, cart_seq, ids, counts);
	         if (result == true) {
	            return true;
	         }else {
	            return false;
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }
   
   public List<ProductDTO> select() {
		ProductDAO dao = ProductDAO.getInstance();
		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<ProductDTO> list = cartdao.CartList(conn);
			// 로그 처리
			// 
			//
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
   
}