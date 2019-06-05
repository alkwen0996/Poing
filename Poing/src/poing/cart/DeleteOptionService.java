package poing.cart;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.product.CartDAO;

public class DeleteOptionService {
	
	public boolean deleteOption(int cart_seq, int op_seq) {
	      CartDAO cartdao = new CartDAO();
	      boolean result = false;
	      try (Connection conn = ConnectionProvider.getConnection()) {   
	          result = cartdao.deleteOption(conn, cart_seq, op_seq);
	         if (result == true) {
	            return true;
	         }else {
	            return false;
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }
}
