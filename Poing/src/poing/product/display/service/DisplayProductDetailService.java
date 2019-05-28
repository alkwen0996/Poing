package poing.product.display.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.product.ProductDTO;
import poing.product.ProductDetailDAO;


public class DisplayProductDetailService {
	public ProductDTO select(int p_num) {
		ProductDetailDAO dao = ProductDetailDAO.getInstance();		
		try (Connection conn = ConnectionProvider.getConnection()) {			
			ProductDTO dto = dao.selectdisplay(conn, p_num);
			// 로그 처리
			// 
			//
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
