package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.product.CartDAO;
import poing.product.ProductDTO;

public class DisplayCartService {
	CartDAO cartdao = new CartDAO();
	
	public boolean insertbasket(int p_num) {
		try {
			Connection conn = ConnectionProvider.getConnection();
			boolean insertCheck = cartdao.insertbasket(conn, p_num);
			if (insertCheck) {
				return true;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return false;
	}
}
