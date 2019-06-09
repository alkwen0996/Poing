package poing.cart;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.product.CartDAO;
import poing.product.ProductDTO;

public class UpdateOptionService {

	public List<ProductDTO> select(int cart_seq) {
		CartDAO cartdao = new CartDAO();
		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<ProductDTO> list = cartdao.selectoption(conn, cart_seq);
			conn.close();
			// 로그 처리
			// 
			//
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<ProductDTO> selectop(int cart_seq){
		CartDAO cartdao = new CartDAO();
		
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<ProductDTO> option = cartdao.Selectoption(conn, cart_seq);
			
			return option;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
