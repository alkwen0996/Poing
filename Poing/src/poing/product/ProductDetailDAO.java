package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import poing.member.MemberDTO;


public class ProductDetailDAO {
	
	private static ProductDetailDAO displaydao = new ProductDetailDAO();
	public static ProductDetailDAO getInstance() {
		return displaydao;
	}

	public ProductDetailDAO() {}
	
	
	public ProductDTO selectdisplay(Connection conn, int p_num){
		String sql = " select * from p_product p join editer_review e on p.e_seq = e.e_seq join product_img i on p.img_seq = i.img_seq join p_restaurant r on p.p_num = r.p_num where p.p_num = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_num);
			rs = pstmt.executeQuery();

				dto = new ProductDTO();
				rs.next();
				dto.setP_num(rs.getInt("p_num"));
				dto.setR_type(rs.getString("r_type"));
				dto.setRest_name(rs.getString("rest_name"));
				dto.setR_location(rs.getString("r_location"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_type(rs.getString("p_type"));
				dto.setP_option(rs.getString("p_option"));
				dto.setE_seq(rs.getInt("e_seq"));
				dto.setImg_seq(rs.getInt("img_seq"));
				dto.setE_name(rs.getString("e_name"));
				dto.setE_content(rs.getString("e_content"));
				dto.setPhoto_img(rs.getString("photo_img"));
				dto.setMenu_img(rs.getString("menu_img"));
				dto.setEditer_img(rs.getString("editer_img"));
				dto.setP_st_ed_date(rs.getString("p_st_ed_date"));
				dto.setP_origin_money(rs.getInt("p_origin_money"));
				dto.setP_dc_money(rs.getInt("p_dc_money"));
				
				

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
		return dto;	
	}
}
