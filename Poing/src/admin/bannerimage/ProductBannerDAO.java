package admin.bannerimage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductBannerDAO {

	public static ArrayList<ProductBannerDTO> selectProductBannerList(Connection conn) throws SQLException {
		
		ArrayList<ProductBannerDTO> pb_list = null;
		ProductBannerDTO pbDTO = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM product_banner ORDER BY pb_turn_no ASC ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {
			pb_list = new ArrayList<>();
			do {
				pbDTO = new ProductBannerDTO(rs);
				pb_list.add(pbDTO);
			} while (rs.next());
		}
		rs.close();
		pstmt.close();
		return pb_list;
	}
	public boolean updateProductBannerTurnNo(Connection conn, int pb_seq, int move) throws SQLException {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		//--up일경우
		//--먼저 기존 리스트 +1시킴
		sql.append(" UPDATE product_banner SET pb_turn_no = pb_turn_no + " + move);
		sql.append(" WHERE pb_turn_no = (SELECT pb_turn_no + "+-move+" FROM product_banner WHERE pb_seq = ?) ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, pb_seq);
		result = pstmt.executeUpdate()==0?false:true;
		pstmt.close();
		
		sql = new StringBuffer();
		sql.append(" UPDATE product_banner SET pb_turn_no = pb_turn_no + " + -move);
		sql.append(" WHERE pb_seq = ? ");
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, pb_seq);
		result = pstmt.executeUpdate()==0?false:true;
		pstmt.close();
		return false;
	}
	public boolean deleteProductBanner(Connection conn, int pb_seq) throws SQLException {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM product_banner ");
		sql.append(" WHERE pb_seq = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, pb_seq);
		result = pstmt.executeUpdate()==0?false:true;
		pstmt.close();
		return result;
	}

}
