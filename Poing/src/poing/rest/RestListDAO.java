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
		String sql = "select * from restaurant";
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
				//dto.setRest_menu(rs.getString("rest_menu"));
				//dto.setRest_reservation_cnt(rs.getInt("rest_reservation_cnt"));
				//dto.setRest_review_cnt(rs.getInt("rest_review_cnt"));
				dto.setRest_view_cnt(rs.getInt("rest_view_cnt"));
				//dto.setRest_starpoint(rs.getDouble("rest_starpoint"));
				dto.setRest_loc(rs.getString("rest_address"));
				//dto.setRest_tic_code(rs.getInt("p_num"));
				dto.setRest_line_exp(rs.getString("rest_line_exp"));
				dto.setRest_alchol(rs.getString("rest_alchol"));
				dto.setRest_parking_yn(rs.getString("rest_parking_yn"));
				dto.setRest_add_info(rs.getString("rest_add_info"));
				dto.setRest_budget_type(rs.getString("rest_budget_type"));
				dto.setRest_table_type(rs.getString("rest_table_type"));
				dto.setRest_food_type(rs.getString("rest_foodinfo"));
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

	
	public List<RestListDTO> selectdisplay(Connection conn, String pop, String loc_code, String food_type,
			String searchWord) {
		String locationSql = null;
		StringBuffer sql = new StringBuffer();
							sql.append( "select distinct a.* from p_restaurant a ");
							sql.append( "inner join loc_code_per_rest b on a.rest_seq = b.rest_seq " );
							sql.append( "inner join food_code_per_rest c on a.rest_seq = c.rest_seq " );
							sql.append( "where ");
		
		System.out.println("pop ="+pop);
		System.out.println("loc_code ="+loc_code);
		System.out.println("food_type ="+food_type);
		System.out.println("searchWord ="+searchWord);
		
		if(pop!=null ) sql.append( "loc_code in ("+pop+") " );
		
		if(food_type!=null) {
			if(pop!=null) sql.append( "and " );
						    sql.append( "food_code in (" + food_type +") " );
		}
		if(searchWord!=null ) {
			if(pop!=null || food_type!=null) {
							sql.append(" and ");
			}
							sql.append( "(rest_name like '%"+searchWord+"%' or rest_line_exp like '%"+searchWord+"%') " );
		}
		//String [] loc_codes = {};
		//for (int i = 0; i < loc_codes.length; i++) {
		//	sql += "and rest_loc like '%"+loc_codes[i]+"%' ";
		//}
		System.out.println("restListDAO 검색selectdisplay line 120 "+sql.toString());
		
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ArrayList<RestListDTO> list = new ArrayList<>();
		try {
			if(loc_code!=null) { 
			locationSql = "select * from general_loc_code where loc_code in ( ? )";
			pstmt = conn.prepareStatement(locationSql);
			pstmt.setString(1, loc_code);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				sql.append( "and rest_loc like '%"+rs.getString("loc_add")+"%' " );
				}
			}
			
			System.out.println("restListDAO 검색selectdisplay line 134"+sql.toString());
			pstmt2 = conn.prepareStatement(sql.toString());
			rs2 = pstmt2.executeQuery();
			RestListDTO dto = null;
			while (rs2.next()) {
					dto = new RestListDTO();
					dto.setRest_seq(rs2.getInt("rest_seq"));
					dto.setRest_name(rs2.getString("rest_name"));
					dto.setRest_tel(rs2.getString("rest_tel"));
					dto.setRest_hour(rs2.getString("rest_hour"));
					dto.setRest_menu(rs2.getString("rest_menu"));
					dto.setRest_reservation_cnt(rs2.getInt("rest_reservation_cnt"));
					dto.setRest_review_cnt(rs2.getInt("rest_review_cnt"));
					dto.setRest_view_cnt(rs2.getInt("rest_view_cnt"));
					dto.setRest_starpoint(rs2.getDouble("rest_starpoint"));
					dto.setRest_loc(rs2.getString("rest_loc"));
					dto.setRest_tic_code(rs2.getInt("p_num"));
					dto.setRest_line_exp(rs2.getString("rest_line_exp"));
					dto.setRest_alchol(rs2.getString("rest_alchol"));
					dto.setRest_parking_yn(rs2.getString("rest_parking_yn"));
					dto.setRest_add_info(rs2.getString("rest_add_info"));
					dto.setRest_budget_type(rs2.getString("rest_budget_type"));
					dto.setRest_table_type(rs2.getString("rest_table_type"));
					dto.setRest_food_type(rs2.getString("rest_food_type"));
					dto.setRest_lat(rs2.getFloat("rest_lat"));
					dto.setRest_long(rs2.getFloat("rest_long"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return list;	
	}
}
