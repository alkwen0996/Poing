package poing.rest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.webkit.dom.WheelEventImpl;

import poing.review.ReviewSearchDTO;

public class RestListDAO {

	private static RestListDAO displaydao = new RestListDAO();
	public static RestListDAO getInstance() {
		return displaydao;
	}

	public RestListDAO() {}

	public List<RestListDTO> selectdisplay(Connection conn, int current_page){
		String sql = " select rownum, p.* from p_restaurant p ";
		       sql = " select rownum ynum, x.* from ( "+sql+" ) x";

		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ArrayList<RestListDTO> list = new ArrayList<>();
		int totalcount = 0;
		int countlist = 12;
		int countPage = 10; 
		int totalpage = 0;
		
		int start =0;
		int end = 0;
		
		try {
			pstmt2 = conn.prepareStatement("select count(*) totalcount from ( "+sql+" )");
			rs2 = pstmt2.executeQuery();
			rs2.next();
			if(rs2.getInt("totalcount")==0) return null;
			totalcount = rs2.getInt(1);
			totalpage = totalcount / countlist;
			if (totalcount % countlist > 0) totalpage++;
			if (totalpage < current_page) current_page = totalpage;
			if ( current_page <0) current_page = 1;

			start = (current_page-1)*12+1;
			end = current_page*12>totalcount?totalcount:current_page*12;
			System.out.println("start= "+start);
			System.out.println("end= "+end);
			
			pstmt = conn.prepareStatement("select y.* from ( "+sql+" where rownum<=?) y where ynum>=? " );
			pstmt.setInt(2, start);
			pstmt.setInt(1, end);
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
			if(list!=null) {
				list.get(0).setTotalpage(totalpage);
				list.get(0).setTotalcount(totalcount);				
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
			String searchWord, int current_page) {
		String locationSql = null;
		StringBuffer sql = new StringBuffer();

							sql.append( "select rownum znum, z.* from ( select distinct a.* from p_restaurant a ");
							sql.append( "inner join loc_code_per_rest b on a.rest_seq = b.rest_seq " );
							sql.append( "inner join food_code_per_rest c on a.rest_seq = c.rest_seq " );
							sql.append( "where ");
		
		System.out.println("pop ="+pop);
		System.out.println("loc_code ="+loc_code);
		System.out.println("food_type ="+food_type);
		System.out.println("searchWord ="+searchWord);
		
		int totalcount = 0;
		int countlist = 12;
		int countPage = 10; 
		int totalpage = 0;
		
		int start =0;
		int end = 0;
		
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
		
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmtcnt = null;
		
		ResultSet rs = null;
		ResultSet rs2 = null;
		ResultSet rscnt = null;
		ArrayList<RestListDTO> list = new ArrayList<>();
		try {
			if(loc_code!=null) { 
			locationSql = "select * from general_loc_code where loc_code in ( ? )";
			pstmt = conn.prepareStatement(locationSql);
			pstmt.setString(1, loc_code);
			rs = pstmt.executeQuery();
			
			int cnt = 0;
			while (rs.next()) {
				if(cnt==0 && pop==null && food_type==null && searchWord==null) sql.append( " rest_loc like '%"+rs.getString("loc_add")+"%' " );
				else if (cnt==0 && (pop!=null || food_type!=null || searchWord!=null)) sql.append( "and rest_loc like '%"+rs.getString("loc_add")+"%' " ); 
				else sql.append( "and rest_loc like '%"+rs.getString("loc_add")+"%' " );
				cnt++;
				}
			}
					 sql.append( " ) z" );
			
			System.out.println("restListDAO 검색selectdisplay line 134"+sql.toString());
			//sql 완성
			
			pstmtcnt = conn.prepareStatement("select count(*) totalcount from ( "+sql.toString()+" )");
			rscnt = pstmtcnt.executeQuery();
			rscnt.next();
			if(rscnt.getInt("totalcount")==0) return null;
			
			totalcount = rscnt.getInt("totalcount");
			totalpage = totalcount / countlist;
			
			if (totalcount % countlist > 0) totalpage++;
			if (totalpage < current_page) current_page = totalpage;
			if ( current_page <0) current_page = 1;

			start = (current_page-1)*12+1;
			end = current_page*12>totalcount?totalcount:current_page*12;
			
			
			//실제 검색된 데이터 담기
			pstmt2 = conn.prepareStatement("select y.* from ( "+sql.toString()+" where rownum<=?) y where znum>=? " );
			pstmt2.setInt(2, start);
			pstmt2.setInt(1, end);
			System.out.println("로그인x+검색 페이징"+start+"~"+end);
			
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
			if(list!=null) {
				list.get(0).setTotalpage(totalpage);
				list.get(0).setTotalcount(totalcount);
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

	public List<RestListDTO> selectdisplay(Connection conn, String pop, String loc_code, String food_type,
			String searchWord, int member_num, int current_page) {
		String locationSql = null;
		StringBuffer sql = new StringBuffer();
							sql.append( "select rownum znum, z.* from ( select distinct a.*, d.m_no from p_restaurant a ");
							sql.append( "inner join loc_code_per_rest b on a.rest_seq = b.rest_seq " );
							sql.append( "inner join food_code_per_rest c on a.rest_seq = c.rest_seq " );
							sql.append( "left join (select * from pick where m_no="+member_num+") d on a.rest_seq= d.rest_no ");
							sql.append( "where ");
		
		System.out.println("pop ="+pop);
		System.out.println("loc_code ="+loc_code);
		System.out.println("food_type ="+food_type);
		System.out.println("searchWord ="+searchWord);
		
		int totalcount = 0;
		int countlist = 12;
		int countPage = 10; 
		int totalpage = 0;
		
		int start =0;
		int end = 0;
		
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
							
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmtcnt = null;
		
		ResultSet rs = null;
		ResultSet rs2 = null;
		ResultSet rscnt = null;
		ArrayList<RestListDTO> list = new ArrayList<>();
		try {
			if(loc_code!=null) { 
			locationSql = "select * from general_loc_code where loc_code in ( ? )";
			pstmt = conn.prepareStatement(locationSql);
			pstmt.setString(1, loc_code);
			rs = pstmt.executeQuery();
			
			int cnt = 0;
			while (rs.next()) {
				if(cnt==0 && pop==null && food_type==null && searchWord==null) sql.append( " rest_loc like '%"+rs.getString("loc_add")+"%' " );
				else if (cnt==0 && (pop!=null || food_type!=null || searchWord!=null)) sql.append( "and rest_loc like '%"+rs.getString("loc_add")+"%' " ); 
				else sql.append( "and rest_loc like '%"+rs.getString("loc_add")+"%' " );
				cnt++;
				}
			}
					 sql.append( " ) z" );
			
			System.out.println("restListDAO 검색selectdisplay line 134"+sql.toString());
			//sql 완성
			
			pstmtcnt = conn.prepareStatement("select count(*) totalcount from ( "+sql.toString()+" )");
			rscnt = pstmtcnt.executeQuery();
			rscnt.next();
			if(rscnt.getInt("totalcount")==0) return null;
			totalcount = rscnt.getInt("totalcount");
			totalpage = totalcount / countlist;
			if (totalcount % countlist > 0) totalpage++;
			if (totalpage < current_page) current_page = totalpage;
			if ( current_page <0) current_page = 1;

			start = (current_page-1)*12+1;
			end = current_page*12>totalcount?totalcount:current_page*12;
			
			
			//실제 검색된 데이터 담기
			pstmt2 = conn.prepareStatement("select y.* from ( "+sql.toString()+" where rownum<=?) y where znum>=? " );
			pstmt2.setInt(2, start);
			pstmt2.setInt(1, end);
			System.out.println("로그인+검색 페이징"+start+"~"+end);
			
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
					dto.setRest_fav(rs2.getInt("m_no")>0?1:0);  //찜하기 추적
				list.add(dto);
			}
			if(list!=null) {
				list.get(0).setTotalpage(totalpage);
				list.get(0).setTotalcount(totalcount);
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

	public List<RestListDTO> selectdisplay(Connection conn, int member_num, int current_page) {
		String sql = " select rownum znum, z.* from ( select distinct a.*, d.m_no from p_restaurant a " 
				    +" left join (select * from pick where m_no="+member_num
				    +" ) d on a.rest_seq= d.rest_no order by rest_seq)z ";
		PreparedStatement pstmt = null;
		PreparedStatement pstmtcnt = null;
		ResultSet rs = null;
		ResultSet rscnt = null;
		ArrayList<RestListDTO> list = new ArrayList<>();
		
		int totalcount = 0;
		int countlist = 12;
		int countPage = 10; 
		int totalpage = 0;
		
		int start =0;
		int end = 0;
		
		try {
			pstmtcnt = conn.prepareStatement("select count(*) totalcount from ( "+sql+" )");		
			rscnt = pstmtcnt.executeQuery();
			rscnt.next();
			if(rscnt.getInt("totalcount")==0) return null;
			totalcount = rscnt.getInt("totalcount");
			totalpage = totalcount / countlist;
			if (totalcount % countlist > 0) totalpage++;
			if (totalpage < current_page) current_page = totalpage;
			if ( current_page <0) current_page = 1;

			start = (current_page-1)*12+1;
			end = current_page*12>totalcount?totalcount:current_page*12;
			
			pstmt = conn.prepareStatement("select y.* from ( "+sql+" where rownum<=?) y where znum>=? " );
			pstmt.setInt(2, start);
			pstmt.setInt(1, end);
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
				dto.setRest_fav(rs.getInt("m_no")>0?1:0);  //찜하기 추적
				
				list.add(dto);
			}
			if(list!=null) {
				list.get(0).setTotalpage(totalpage);
				list.get(0).setTotalcount(totalcount);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				pstmtcnt.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return list;	
		
		
	}

	public List<RestListDTO> selectdisplay(Connection conn) {
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
}
