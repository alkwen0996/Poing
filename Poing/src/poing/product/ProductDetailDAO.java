package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;

import poing.member.MemberDTO;


public class ProductDetailDAO {
	
	private static ProductDetailDAO displaydao = new ProductDetailDAO();
	public static ProductDetailDAO getInstance() {
		return displaydao;
	}
	public static List<RefundTicketDTO> selectReserva_tic(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select op_cnt,p_dc_money ,reserva_tic_seq,p_st_ed_date,op_name, rest_name, c_date,party_size,photo_img,op_cnt,op_price from cart c join totalcart t on c.cart_seq = t.cart_seq join  p_option p on t.op_seq = p.op_seq join p_product a on a.p_num = p.p_num join p_restaurant l on l.p_num = a.p_num join product_img i on i.img_seq = a.img_seq join reserve_tic k on k.cart_seq = c.cart_seq where p_state='결제완료' ");
		PreparedStatement pstmt = null;
		
		
		ResultSet rs = null;
		ArrayList<RefundTicketDTO> list1 = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			RefundTicketDTO rdto = null;
			while(rs.next()) {
			rdto = new RefundTicketDTO();
			rdto.setReserva_tic_seq(rs.getInt("reserva_tic_seq"));
			rdto.setRest_name(rs.getString("rest_name"));
			rdto.setP_st_ed_date(rs.getString("p_st_ed_date"));
			rdto.setOp_name(rs.getString("op_name"));
			rdto.setC_date(rs.getString("c_date"));
			rdto.setParty_size(rs.getInt("party_size"));
			rdto.setPhoto_img(rs.getString("photo_img"));
			rdto.setP_dc_money(rs.getInt("p_dc_money"));
			rdto.setOp_cnt(rs.getInt("op_cnt"));
			list1.add(rdto);
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
		
		return list1;
	}
	

	public ProductDetailDAO() {}
	
	public boolean updateTotalmoney(Connection conn, String totalmoney, int id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" update member set rp_seq = rp_seq + ? where m_no = ? ");
		PreparedStatement pstmt = null;
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, totalmoney);
			pstmt.setInt(2, id);
			result = pstmt.executeUpdate()==0? false:true;
			
			pstmt.close();
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	};
	
	public static List<RefundTicketDTO> selectRefund_tic(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select p_dc_money ,reserva_tic_seq,p_st_ed_date,op_name, rest_name, c_date,party_size,photo_img,op_cnt,op_price from cart c join totalcart t on c.cart_seq = t.cart_seq join  p_option p on t.op_seq = p.op_seq join p_product a on a.p_num = p.p_num join p_restaurant l on l.p_num = a.p_num join product_img i on i.img_seq = a.img_seq join reserve_tic k on k.cart_seq = c.cart_seq where p_state='환불완료' ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<RefundTicketDTO> list2 = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			RefundTicketDTO rtdto = null;
			while(rs.next()) {
				rtdto = new RefundTicketDTO();
				rtdto.setReserva_tic_seq(rs.getInt("reserva_tic_seq"));
				rtdto.setRest_name(rs.getString("rest_name"));
				rtdto.setP_st_ed_date(rs.getString("p_st_ed_date"));
				rtdto.setOp_name(rs.getString("op_name"));
				rtdto.setC_date(rs.getString("c_date"));
				rtdto.setParty_size(rs.getInt("party_size"));
				rtdto.setPhoto_img(rs.getString("photo_img"));
				rtdto.setOp_cnt(rs.getInt("op_cnt"));
				rtdto.setOp_price(rs.getInt("op_price"));
				rtdto.setP_dc_money(rs.getInt("p_dc_money"));
				list2.add(rtdto);
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
		
		return list2;
	}
	
	public static List<PointHistoryDTO> PointHistory(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select * from pointUseHistory ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<PointHistoryDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			PointHistoryDTO phdto = null;
			while(rs.next()) {
				phdto = new PointHistoryDTO();
				phdto.setPointUseHistory_seq(rs.getInt("pointUseHistory_seq"));
				phdto.setM_no(rs.getInt("m_no"));
				phdto.setEventSysdate(rs.getString("eventSysdate"));
				phdto.setUseContent(rs.getString("useContent"));
				phdto.setPointRecord(rs.getString("pointRecord"));
				list.add(phdto);
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
		
		return list;
	}
	public static PointHistoryDTO selectRownum(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select rownum from pointUseHistory ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PointHistoryDTO phdto = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				phdto = new PointHistoryDTO();
				phdto.setRownum(rs.getInt("rownum"));
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
		
		return phdto;
	}
	
	public boolean updateState(Connection conn, int reserva_tic_seq) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" update reserve_tic set p_state = '삭제완료' where p_state = '환불완료' and reserva_tic_seq = ? ");
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
	
	public boolean updatePayCart(Connection conn, int reserva_tic_seq, int m_no, String totalmoney) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" update reserve_tic set p_state = '환불완료' where p_state = '결제완료' and reserva_tic_seq = ? ");
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		boolean result = false;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, reserva_tic_seq);
				result = pstmt.executeUpdate()==0? false:true;
				if(result) {
					String sql2 ="insert into pointUseHistory (pointUseHistory_seq, m_no, eventSysdate, useContent, pointRecord) values (pointUseHistory_seq.nextval,차감된금액  ?,sysdate,'티켓을 환불했습니다.',?)";
					pstmt2 = conn.prepareStatement(sql2);
					pstmt2.setInt(1, m_no);
					pstmt2.setString(2, totalmoney);
					boolean result2 = pstmt2.executeUpdate()==0? false:true;
					System.out.println("updatePayCart");
				}
				
			pstmt.close();
			pstmt2.close();
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
