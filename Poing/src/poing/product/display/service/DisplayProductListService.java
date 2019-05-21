package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;


public class DisplayProductListService {
	public List<ProductDTO> select() {
		System.out.println(2);
		ProductDAO dao = ProductDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			List<ProductDTO> list = dao.selectdisplay(conn);
			// 로그 처리
			// 
			//
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
