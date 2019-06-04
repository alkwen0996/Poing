package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.json.simple.JSONArray;

import poing.member.MemberDTO;


public class ProductDetailDAO {
	
	private static ProductDetailDAO displaydao = new ProductDetailDAO();
	public static ProductDetailDAO getInstance() {
		return displaydao;
	}
	
	

	public ProductDetailDAO() {}
	
	public boolean updateTotalmoney(Connection conn, int totalmoney, int id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" update member set rp_seq = rp_seq + ? where m_no = ? ");
		PreparedStatement pstmt = null;
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, totalmoney);
			pstmt.setInt(2, id);
			result = pstmt.executeUpdate()==0? false:true;
			
			pstmt.close();
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	};
	
	public boolean deletePayCart(Connection conn, int reserva_tic_seq) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" delete reserve_tic where reserva_tic_seq = ? ");
		PreparedStatement pstmt = null;
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, reserva_tic_seq);
				result = pstmt.executeUpdate()==0? false:true;
				
			pstmt.close();
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	};
	
	public int insertCart(Connection conn,int m_no, String c_date, int party_size, String message) throws SQLException {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append("insert into cart (cart_seq, m_no, c_date, party_size, message)values (cart_seq.nextval,?,?,?,?)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		int cart_seq = -1;
		try {
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, m_no);
				pstmt.setString(2, c_date);
				pstmt.setInt(3, party_size);
				pstmt.setString(4, message);
				result = pstmt.executeUpdate()==0? false:true;
				
				if (result) {
					String sql2 = "select cart_seq.currval cart_seq from dual";
					pstmt = conn.prepareStatement(sql2);
					rs = pstmt.executeQuery();
					while (rs.next()) {
						cart_seq = rs.getInt(1);
					}
					
				}
				pstmt.close();
				rs.close();
				conn.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cart_seq;
	};
//	public int selectCart_seq(Connection conn) throws SQLException {
//		String sql = "select cart_seq.currval cart_seq from dual";
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		ResultSet rs = null;
//		ProductDTO dto = null;
//		int cart_seq = 0;
//		try {
//			
//			dto = new ProductDTO();
//			rs = pstmt.executeQuery();
//				cart_seq = rs.getInt("cart_seq");
//		}catch (SQLException e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				pstmt.close();
//				rs.close();
//				conn.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}	
//		
//		return cart_seq;
//	};
	public boolean insertTotalCart(Connection conn, int cart_seq, ArrayList<Integer> ids,ArrayList<Integer> counts) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into totalcart (total_cart_seq, cart_seq, op_seq, op_cnt)values (total_cart_seq.nextval, ?, ?, ?)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			for (int i = 0; i < ids.size(); i++) {
				pstmt.setInt(1, cart_seq);
				pstmt.setInt(2, ids.get(i));
				pstmt.setInt(3, counts.get(i));
				result = pstmt.executeUpdate()==0? false:true;
				if (result) {
					return result;
				}
			}
			pstmt.close();
			rs.close();
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	};
	
	public ProductDTO selectCartId(Connection conn, int cart_seq){
		String sql = " select * from totalcart t join p_option p on t.op_seq = p.op_seq join cart c on t.cart_seq = c.cart_seq where c.cart_seq = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto2 = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart_seq);
			rs = pstmt.executeQuery();

				dto2 = new ProductDTO();
				if(rs.next()) {
				dto2.setOp_name(rs.getString("op_name"));
				dto2.setOp_cnt(rs.getInt("op_cnt"));
				dto2.setParty_size(rs.getInt("party_size"));
				dto2.setMessage(rs.getString("message"));
				dto2.setOp_price(rs.getInt("op_price"));
				dto2.setC_date(rs.getString("c_date"));
				};
				
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
		return dto2;	
	}
	
	
	public ProductDTO selectdisplay(Connection conn, int p_num){
		String sql = " select * from p_product p join p_menu_info i on p.p_num = i.p_num join p_use_time t on p.p_num = t.p_num join p_detail_advice a on p.p_num = a.p_num join cancel_change c on p.p_num = c.p_num join use_case e on p.p_num = e.p_num where p.p_num = ? ";
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
				dto.setP_origin_money(rs.getInt("p_origin_money"));
				dto.setP_dc_money(rs.getInt("p_dc_money"));
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
				dto.setP_min_Personnel(rs.getInt("p_min_personnel"));
				dto.setP_content_1(rs.getString("p_content_1"));
				dto.setP_content_2(rs.getString("p_content_2"));
				dto.setP_content_3(rs.getString("p_content_3"));
				dto.setP_content_4(rs.getString("p_content_4"));
				dto.setP_content_5(rs.getString("p_content_5"));
				dto.setMenu_info_title(rs.getString("menu_info_title"));
				dto.setP_use_time_title(rs.getString("p_use_time_title"));
				dto.setAdvice_title(rs.getString("advice_title"));
				dto.setCancel_change_title(rs.getString("cancel_change_title"));
				dto.setUse_case_title(rs.getString("use_case_title"));
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

	public ProductDTO selectdisplay(Connection conn, int p_num, int member_num) {
		String sql = " select * from p_product p join editer_review e on p.e_seq = e.e_seq join product_img i on p.img_seq = i.img_seq join p_restaurant r on r.p_num = p.p_num where p.p_num = ? ";
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ProductDTO dto = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		// 
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
				dto.setP_origin_money(rs.getInt("p_origin_money"));
				dto.setP_dc_money(rs.getInt("p_dc_money"));
				dto.setP_option(rs.getString("p_option"));
				dto.setE_seq(rs.getInt("e_seq"));
				dto.setImg_seq(rs.getInt("img_seq"));
				dto.setE_name(rs.getString("e_name"));
				dto.setE_content(rs.getString("e_content"));
				dto.setPhoto_img(rs.getString("photo_img"));
				dto.setMenu_img(rs.getString("menu_img"));
				dto.setEditer_img(rs.getString("editer_img"));
				//dto.setP_st_ed_date(rs.getString("p_st_ed_date"));
				
				sql = "select count(*) cnt from (select * from pick where m_no = ? and tic_no = ?)";
				pstmt2 = conn.prepareStatement(sql);
				pstmt2.setInt(1, member_num);
				pstmt2.setInt(2, p_num);
				rs2 = pstmt2.executeQuery();
				rs2.next();
				dto.setPick(rs2.getInt("cnt"));
				System.out.println("productdetail DAO : cnt = "+rs2.getInt("cnt"));
				
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
