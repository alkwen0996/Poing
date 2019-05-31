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
	
	public boolean insertbasket(int m_no) {
		try {
			Connection conn = ConnectionProvider.getConnection();
			boolean insertCheck = cartdao.insertbasket(conn, m_no);
			if (insertCheck) {
				return true;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		return false;
	}
	
	public int selectcid() {
   
		try (Connection conn = ConnectionProvider.getConnection()) {			
			int cart = cartdao.selectcid(conn);
			
			return cart;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	} 
}
