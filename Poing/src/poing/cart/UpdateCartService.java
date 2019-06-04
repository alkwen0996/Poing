package poing.cart;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.product.CartDAO;

public class UpdateCartService {
	
	public boolean updatecart(int party_size, String message, String c_date, int cart_seq) {
		CartDAO cartdao = new CartDAO();
		boolean result = true;
		try(Connection conn = ConnectionProvider.getConnection()) {
			result = cartdao.updateCart(conn, party_size, message, c_date, cart_seq);
			
			return result;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
