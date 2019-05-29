package poing.rest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import poing.review.ReviewSearchDTO;

public class RestListDAO {

	private static RestListDAO displaydao = new RestListDAO();
	public static RestListDAO getInstance() {
		return displaydao;
	}

	public RestListDAO() {}

	public List<RestListDTO> selectdisplay(Connection conn){
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
				dto.setRest_lat(rs.getFloat("rest_lat"));
				dto.setRest_long(rs.getFloat("rest_long"));
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

	public ArrayList<ReviewSearchDTO> selectSimpleRestInfo(Connection conn, String searchWord) throws SQLException
	{
		StringBuffer sql = new StringBuffer();
		sql.append(" WITH temp2 AS( ");
		sql.append(" SELECT ROWNUM AS no, temp.* ");
		sql.append(" FROM ");
		sql.append(" ( ");
		sql.append("    SELECT rest_seq, rest_name, rest_loc ");
		sql.append("    FROM p_restaurant ");
		sql.append("    WHERE REGEXP_LIKE(rest_name, ?, 'i') OR REGEXP_LIKE(rest_loc, ?, 'i') ");
		//sql.append("    ORDER BY rest_name ");
		sql.append("    )temp ");
		sql.append(" ) ");
		sql.append(" SELECT temp2.* FROM temp2 ");
		sql.append(" WHERE temp2.no BETWEEN 1 AND 5 ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, searchWord);
		pstmt.setString(2, searchWord);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<ReviewSearchDTO> searchList = null;
		if(rs.next())
		{
			ReviewSearchDTO resultDTO = null;
			searchList = new ArrayList<>();
			do {
				resultDTO = new ReviewSearchDTO();
				resultDTO.setId(rs.getInt("rest_seq"));
				resultDTO.setName(rs.getString("rest_name"));
				resultDTO.setDescription(rs.getString("rest_loc"));
				searchList.add(resultDTO);
			} while (rs.next());
		}
		return searchList;
	}
}
