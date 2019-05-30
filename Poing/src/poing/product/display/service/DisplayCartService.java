package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.product.CartDAO;
import poing.product.CartDTO;
import poing.product.ProductDAO;
import poing.product.ProductDTO;

public class DisplayCartService {
	CartDAO cartdao = new CartDAO();
	
	public boolean insertbasket(int mId, int poId, int cNum) {
		try {
			Connection conn = ConnectionProvider.getConnection();
			boolean insertCheck = cartdao.insertbasket(conn, mId, poId, cNum);
			if (insertCheck) {
				return true;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return false;
	}
	
	/*public int selectcart(int p_num) {
   
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int cart = cartdao.insertbasket(conn, p_num);
			
			return cart;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	} */
}
