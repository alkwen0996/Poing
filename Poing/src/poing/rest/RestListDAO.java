package poing.rest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RestListDAO {

	private static RestListDAO displaydao = new RestListDAO();
	public static RestListDAO getInstance() {
		return displaydao;
	}

	public RestListDAO() {}

	public List<RestListDTO> selectdisplay(Connection conn){
		System.out.println(1);
		String sql = "select * from p_restaurant";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<RestListDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			RestListDTO dto = null;
			while (rs.next()) {
				dto = new RestListDTO();
				dto.setRest_seq(rs.getInt("rest_seq"));
				dto.setRest_name(rs.getString("rest_name"));
				dto.setRest_tel(rs.getString("rest_tel"));
				dto.setRest_hour(rs.getString("rest_hour"));
				dto.setRest_menu(rs.getString("rest_menu"));
				dto.setRest_reservation_cnt(rs.getInt("rest_reservation_cnt"));
				dto.setRest_review_cnt(rs.getInt("rest_review_cnt"));
				dto.setRest_view_cnt(rs.getInt("rest_view_cnt"));
				dto.setRest_starpoint(rs.getDouble("rest_starpoint"));
				dto.setRest_loc(rs.getString("rest_loc"));
				dto.setRest_tic_code(rs.getInt("p_num"));
				dto.setRest_line_exp(rs.getString("rest_line_exp"));
				dto.setRest_alchol(rs.getString("rest_alchol"));
				dto.setRest_parking_yn(rs.getString("rest_parking_yn"));
				dto.setRest_add_info(rs.getString("rest_add_info"));
				dto.setRest_budget_type(rs.getString("rest_budget_type"));
				dto.setRest_table_type(rs.getString("rest_table_type"));
				dto.setRest_food_type(rs.getString("rest_food_type"));
				
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
