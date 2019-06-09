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
		sql.append("insert into cart (cart_seq, m_no, c_date, party_size, message) values (cart_seq.nextval,?,?,?,?)");
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
		String sql = " select * from p_product p join editer_review e on p.e_seq = e.e_seq join product_img i on p.img_seq = i.img_seq join p_restaurant r on r.p_num = p.p_num where p.p_num = ? ";
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
				dto.setImg_seq(rs.getInt("img_seq"));
				dto.setE_name(rs.getString("e_name"));
				dto.setE_content(rs.getString("e_content"));
				dto.setPhoto_img(rs.getString("photo_img"));
				dto.setMenu_img(rs.getString("menu_img"));
				dto.setEditer_img(rs.getString("editer_img"));
				dto.setP_st_ed_date(rs.getString("p_st_ed_date"));
				dto.setP_origin_money(rs.getInt("p_origin_money"));
				dto.setP_dc_money(rs.getInt("p_dc_money"));
//				dto.setP_content_1(rs.getString("p_content_1"));
//				dto.setP_content_2(rs.getString("p_content_2"));
//				dto.setP_content_3(rs.getString("p_content_3"));
//				dto.setP_content_4(rs.getString("p_content_4"));
//				dto.setP_content_5(rs.getString("p_content_5"));
//				dto.setMenu_info_title(rs.getString("menu_info_title"));
//				dto.setP_use_time_title(rs.getString("p_use_time_title"));
//				dto.setAdvice_title(rs.getString("advice_title"));
//				dto.setCancel_change_title(rs.getString("cancel_change_title"));
//				dto.setUse_case_title(rs.getString("use_case_title"));
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
		PreparedStatement pstmt_qna = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ResultSet rs_qna = null;
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
				
				// qna
				StringBuffer sql_qna = new StringBuffer();
				sql_qna.append(" select * " + 
						" from p_product p " + 
						" join editer_review e on p.e_seq = e.e_seq " + 
						" join product_img i on p.img_seq = i.img_seq " + 
						" join p_restaurant r on r.p_num = p.p_num " + 
						" join (select q_m_no,q_ctime,q_content,q_seq,q_tic_seq, " + 
						" reply_seq,reply_ctime,reply_content,admin_seq " + 
						"  from question q  " + 
						" join reply rp on q_reply_seq = reply_seq) qrp on q_tic_seq = p.p_num " + 
						" where p.p_num = ? ");
				pstmt_qna = conn.prepareCall(sql_qna.toString());
				pstmt_qna.setInt(1, p_num);
				rs_qna = pstmt_qna.executeQuery();
				while(rs_qna.next()) {
					//dto.setE_name(rs_qna.getString("e_name"));
					dto.setQ_content(rs_qna.getString("q_content"));
					dto.setQ_ctime(rs_qna.getString("q_ctime"));
					dto.setReply_seq(rs_qna.getInt("reply_seq"));
					dto.setReply_content(rs_qna.getString("reply_content"));
					dto.setReply_ctime(rs_qna.getString("reply_ctime"));
					dto.setAdmin_seq(rs_qna.getInt("admin_seq"));
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
		return dto;	
	}
	
	public ArrayList<ProductDTO> selectdisplay_QnA(Connection conn, int p_num) {
		
		PreparedStatement pstmt_qna = null;
		ResultSet rs_qna = null;
		ProductDTO dto = null;
		ArrayList<ProductDTO> list =null;
		
		StringBuffer sql_qna = new StringBuffer();
		sql_qna.append(" select * " + 
				" from p_product p " + 
				" join editer_review e on p.e_seq = e.e_seq " + 
				" join product_img i on p.img_seq = i.img_seq " + 
				" join p_restaurant r on r.p_num = p.p_num " + 
				" join (select q_m_no,q_ctime,q_content,q_seq,q_tic_seq, " + 
				" reply_seq,reply_ctime,reply_content,admin_seq " + 
				"  from question q  " + 
				" join reply rp on q_reply_seq = reply_seq) qrp on q_tic_seq = p.p_num " + 
				" where p.p_num = ? ");
		
		try {
				dto = new ProductDTO();
				// qna
				
				pstmt_qna = conn.prepareCall(sql_qna.toString());
				pstmt_qna.setInt(1, p_num);
				rs_qna = pstmt_qna.executeQuery();
				
				if(rs_qna.next()) {
					list = new ArrayList<>();
					do {
						//dto.setE_name(rs_qna.getString("e_name"));
						dto.setP_num(rs_qna.getInt("p_num"));
						dto.setQ_content(rs_qna.getString("q_content"));
						dto.setQ_ctime(rs_qna.getString("q_ctime"));
						dto.setReply_seq(rs_qna.getInt("reply_seq"));
						dto.setReply_content(rs_qna.getString("reply_content"));
						dto.setReply_ctime(rs_qna.getString("reply_ctime"));
						dto.setAdmin_seq(rs_qna.getInt("admin_seq"));
						dto.setE_name(rs_qna.getString("e_name"));
						list.add(dto);
					}while(rs_qna.next());
				}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt_qna.close();
				rs_qna.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return list;	
	}//selectdisplay_QnA
	
	public int insertQnA(Connection conn, ProductDTO pdto) {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into question values ");
		sql.append(" (seq_question.nextval, ? , sysdate, ? ,?,null) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, pdto.getE_seq());
			pstmt.setString(2, pdto.getQ_content());
			pstmt.setInt(3, pdto.getQ_tic_seq());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	} //insertQnA
	
}//class
