package poing.cart;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.product.CartDAO;

public class ConfirmOptionService {
	
	/*public boolean deleteoption(int cart_seq) {
		CartDAO cartdao = new CartDAO();
		boolean result = true;
		try(Connection conn = ConnectionProvider.getConnection()) {
			result = cartdao.updateOption1(conn, cart_seq);
			
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	 public boolean updateOption(int cart_seq, String[] op_seq, String[] op_cnt) {
		 CartDAO cartdao = new CartDAO();
	      boolean result = false;
	      try (Connection conn = ConnectionProvider.getConnection()) {   
	          result = cartdao.updateOption(conn, cart_seq, op_seq, op_cnt);
	         if (result == true) {
	            return true;
	         }else {
	            return false;
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }*/
}
