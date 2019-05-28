package poing.product.display.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductDAO {
	
	private static ProductDAO displaydao = new ProductDAO();
	public static ProductDAO getInstance() {
		return displaydao;
	}

	public ProductDAO() {}
	
	public List<ProductDTO> selectdisplay(Connection conn){
		System.out.println(1);
		String sql = "select * from p_product";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ProductDTO dto = null;
			while (rs.next()) {
				dto = new ProductDTO();
				dto.setR_name(rs.getString("p_name"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_type(rs.getString("p_type"));
				dto.setDiscount(rs.getString("p_price"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return list;	
	}
}
