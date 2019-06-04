package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;


public class ProductDAO {
	
	private static ProductDAO displaydao = new ProductDAO();
	public static ProductDAO getInstance() {
		return displaydao;
	}

	public ProductDAO() {}
	
	public List<ProductDTO> selectdisplay(Connection conn, int first, int end){
		StringBuffer sql = new StringBuffer();
		sql.append(" select no, p_num, rest_name, r_location, p_name, p_type, discount ");
		sql.append(" from ( ");
		sql.append(" select rownum no, p_num, p_name, rest_name, r_location, p_type, discount ");
		sql.append(" from ( ");
		sql.append("  select p.p_num p_num, p_name, r.rest_name, r_location, p_type, discount ");
		sql.append("  from p_product p JOIN p_restaurant r ON r.p_num = p.p_num  ");
		sql.append("  ) t ");
		sql.append(" ) b ");
		sql.append(" where b.no between ? and ? ");
			   
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, first);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			ProductDTO dto = null;
			while (rs.next()) {
				dto = new ProductDTO();
				dto.setP_num(rs.getInt("p_num"));
				dto.setRest_name(rs.getString("rest_name"));
				dto.setR_location(rs.getString("r_location"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_type(rs.getString("p_type"));
				dto.setDiscount(rs.getString("discount"));
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
	
	public List<ProductDTO> sselectdisplay(Connection conn, int first, int end, int bpage){
		StringBuffer sql = new StringBuffer();
		sql.append(" select no, p_num, rest_name, r_location, p_name, p_type, discount, r_type ");
		sql.append(" from ( ");
		sql.append(" select rownum no, p_num, p_name, rest_name, r_location, p_type, discount, r_type ");
		sql.append(" from ( ");
		sql.append("  select p.p_num p_num, p_name, r.rest_name, r_location, p_type, discount, r_type ");
		sql.append("  from p_product p JOIN p_restaurant r ON r.p_num = p.p_num  ");
		sql.append("  ) t ");
		sql.append(" ) b ");
		sql.append(" where b.no between ? and ? ");
		if(bpage == 9728) {
			sql = sql.append( " and r_type = '일식' ");
		} else if (bpage == 10952) {
			sql = sql.append( " and r_type = '한식' ");
		}
			   
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, first);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			ProductDTO dto = null;
			while (rs.next()) {
				dto = new ProductDTO();
				dto.setP_num(rs.getInt("p_num"));
				dto.setRest_name(rs.getString("rest_name"));
				dto.setR_location(rs.getString("r_location"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_type(rs.getString("p_type"));
				dto.setDiscount(rs.getString("discount"));
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

	public int getStotalCount(int bpage) {
		int total = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnectionProvider.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append(" select count(*) ");
			sql.append(" from ( ");
			sql.append(" select rownum no, p_num, p_name, rest_name, r_location, p_type, discount, r_type ");
			sql.append(" from ( ");
			sql.append("  select p.p_num p_num, p_name, r.rest_name, r_location, p_type, discount, r_type ");
			sql.append("  from p_product p JOIN p_restaurant r ON r.p_num = p.p_num  ");
			sql.append("  ) t ");
			sql.append(" ) b ");
			
			if(bpage == 9728) {
				sql = sql.append( " where r_type = '일식' ");
			} else if (bpage == 10952) {
				sql = sql.append( " where r_type = '한식' ");
			}
			
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt(1);
			}
		} 
		 catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		} return total;
	}
	
	public int getTotalCount() {
		int total = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ConnectionProvider.getConnection();
			String sql = " select count(*) from p_product ";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				total = rs.getInt(1);
			}
		} 
		 catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		} return total;
	}
}
