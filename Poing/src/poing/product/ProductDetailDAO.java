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
	
	public static ArrayList<ProductDTO> selectRestPhotoImg(Connection conn, int tic_seq) {
		String sql = " select * from ticket_menu_img where tic_seq = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, tic_seq);
			rs = pstmt.executeQuery();
			dto = new ProductDTO();
			while(rs.next()) {
			dto.setTic_menu_images(rs.getString("tic_menu_images"));
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
	public static List<ProductDTO> selectProductList(Connection conn, int cart_seq) {
		String sql = " select c.tic_option_seq tic_option_seq,tic_op_name, tic_dc_price, tic_op_purchas_cnt from tic_option o join tic_cart_option_cnt c on o.tic_option_seq = c.tic_option_seq join cart a on a.tic_cart_seq = c.tic_cart_seq where a.tic_cart_seq =? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart_seq);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				dto = new ProductDTO();
				dto.setTic_option_seq(rs.getInt("tic_option_seq"));
				dto.setTic_op_name(rs.getString("tic_op_name"));
				dto.setTic_op_purchas_cnt(rs.getInt("tic_op_purchas_cnt"));
				dto.setTic_dc_price(rs.getInt("tic_dc_price"));
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

	public static List<RefundTicketDTO> selectReserva_tic(Connection conn) {
		String sql = null;
		sql = " select * from tic_cart_purchase_detail a join cart b on a.tic_cart_seq = b.tic_cart_seq join ticket c on c.tic_seq = a.tic_seq join restaurant d on c.rest_seq = d.rest_seq where tic_purchas_state = '결제완료' ";
		PreparedStatement pstmt = null;

		ResultSet rs = null;
		ArrayList<RefundTicketDTO> list1 = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			RefundTicketDTO rdto = null;
			while (rs.next()) {
				rdto = new RefundTicketDTO();
				rdto.setRest_name(rs.getString("rest_name"));
				rdto.setTic_validate_content(rs.getString("tic_validate_content"));
				rdto.setTic_reserve_date(rs.getString("tic_reserve_date"));
				rdto.setTic_num_of_people(rs.getInt("tic_num_of_people"));
				rdto.setTic_img(rs.getString("tic_img"));
				list1.add(rdto);
			}
			;
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

	public ProductDetailDAO() {
	}

	public boolean updateTotalmoney(Connection conn, String totalmoney, int id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" update member set rp_seq = rp_seq + ? where m_no = ? ");
		PreparedStatement pstmt = null;
		boolean result = false;

		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, totalmoney);
			pstmt.setInt(2, id);
			result = pstmt.executeUpdate() == 0 ? false : true;

			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	};

	public static List<RefundTicketDTO> selectRefund_tic(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(
				" select p_dc_money ,reserva_tic_seq,p_st_ed_date,op_name, rest_name, c_date,party_size,photo_img,op_cnt,op_price from cart c join totalcart t on c.cart_seq = t.cart_seq join  p_option p on t.op_seq = p.op_seq join p_product a on a.p_num = p.p_num join p_restaurant l on l.p_num = a.p_num join product_img i on i.img_seq = a.img_seq join reserve_tic k on k.cart_seq = c.cart_seq where p_state='환불완료' ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<RefundTicketDTO> list2 = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			RefundTicketDTO rtdto = null;
			while (rs.next()) {
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
			}
			;
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
			while (rs.next()) {
				phdto = new PointHistoryDTO();
				phdto.setPointUseHistory_seq(rs.getInt("pointUseHistory_seq"));
				phdto.setM_no(rs.getInt("m_no"));
				phdto.setEventSysdate(rs.getString("eventSysdate"));
				phdto.setUseContent(rs.getString("useContent"));
				phdto.setPointRecord(rs.getString("pointRecord"));
				list.add(phdto);
			}
			;
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
			while (rs.next()) {
				phdto = new PointHistoryDTO();
				phdto.setRownum(rs.getInt("rownum"));
			}
			;
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
			result = pstmt.executeUpdate() == 0 ? false : true;

			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	};

	public boolean updatePayCart(Connection conn, int reserva_tic_seq, int m_no, String totalmoney)
			throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" update reserve_tic set p_state = '환불완료' where p_state = '결제완료' and reserva_tic_seq = ? ");
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		boolean result = false;

		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, reserva_tic_seq);
			result = pstmt.executeUpdate() == 0 ? false : true;
			if (result) {
				String sql2 = "insert into pointUseHistory (pointUseHistory_seq, m_no, eventSysdate, useContent, pointRecord) values (pointUseHistory_seq.nextval, ?,sysdate,'티켓을 환불했습니다.',?)";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setInt(1, m_no);
				pstmt2.setString(2, totalmoney);
				boolean result2 = pstmt2.executeUpdate() == 0 ? false : true;
				System.out.println("updatePayCart");
			}

			pstmt.close();
			pstmt2.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	};

	public int insertCart(Connection conn, int m_no, String c_date, int party_size, String message)
			throws SQLException {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append("insert into cart (tic_cart_seq, tic_num_of_people, tic_request, tic_reserve_date, m_seq) values (cart_seq.nextval,?,?,?,?)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int tic_cart_seq = -1;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, party_size);
			pstmt.setString(2, message);
			pstmt.setString(3, c_date);
			pstmt.setInt(4, m_no);
			result = pstmt.executeUpdate() == 0 ? false : true;

			if (result) {
				String sql2 = "select cart_seq.currval cart_seq from dual";
				pstmt = conn.prepareStatement(sql2);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					tic_cart_seq = rs.getInt(1);
				}

			}
			pstmt.close();
			rs.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return tic_cart_seq;
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
	public boolean insertTotalCart(Connection conn, int tic_cart_seq, ArrayList<Integer> ids, ArrayList<Integer> counts)
			throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into tic_cart_option_cnt (tic_purchas_history_seq, tic_cart_seq, tic_option_seq, tic_op_purchas_cnt)values "
				+ "(tic_cart_option_cnt_seq.nextval, ?, ?, ?)");
		PreparedStatement pstmt = null;
		boolean result = false;

		try {
			int n = ids.size();
			for (int i = 0 ; i < n;  i++) {
				 
				pstmt = conn.prepareStatement(sql.toString());
					pstmt.setInt(1, tic_cart_seq);
					pstmt.setInt(2, ids.get(i));
					pstmt.setInt(3, counts.get(i));
				System.out.print("카트시퀀스"+tic_cart_seq);
				System.out.print("/ 옵션번호"+ids.get(i));
				System.out.println("/ 개수"+counts.get(i));
				
				result = pstmt.executeUpdate() == 0 ? false : true;
				if (!result) {
					System.out.println(">>> " + result );
					return result;
				}
			}
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	};

	public ProductDTO selectCartId(Connection conn, int cart_seq) {
		String sql = " select * from tic_cart_option_cnt t join tic_option p on t.tic_option_seq = p.tic_option_seq join cart c on t.tic_cart_seq = c.tic_cart_seq where c.tic_cart_seq = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto2 = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart_seq);
			rs = pstmt.executeQuery();

			dto2 = new ProductDTO();
			if (rs.next()) {
				dto2.setTic_op_name(rs.getString("tic_op_name"));
				dto2.setTic_op_purchas_cnt(rs.getInt("tic_op_purchas_cnt"));
				dto2.setTic_num_of_people(rs.getInt("tic_num_of_people"));
				dto2.setTic_request(rs.getString("tic_request"));
				dto2.setTic_dc_price(rs.getInt("tic_dc_price"));
				dto2.setTic_reserve_date(rs.getString("tic_reserve_date"));
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
	
	
	public ProductDTO selectCartOption(Connection conn, int cart_seq) {
		String sql = " select * from tic_cart_option_cnt t join tic_option p on t.tic_option_seq = p.tic_option_seq join cart c on t.tic_cart_seq = c.tic_cart_seq where c.tic_cart_seq = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto2 = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cart_seq);
			rs = pstmt.executeQuery();
			
			dto2 = new ProductDTO();
			if (rs.next()) {
				dto2.setTic_op_name(rs.getString("tic_op_name"));
				dto2.setTic_op_purchas_cnt(rs.getInt("tic_op_purchas_cnt"));
				dto2.setTic_num_of_people(rs.getInt("tic_num_of_people"));
				dto2.setTic_request(rs.getString("tic_request"));
				dto2.setTic_dc_price(rs.getInt("tic_dc_price"));
				dto2.setTic_reserve_date(rs.getString("tic_reserve_date"));
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

	public static ProductDTO selectProductDetail(Connection conn, int p_num) {
		String sql = " select * from tic_menu_info m " + "join tic_use_case c on m.p_num = c.p_num "
				+ "join tic_guideInfo g on g.p_num = m.p_num " + "join tic_validate v on v.p_num = m.p_num "
				+ "join tic_cancel_change h on h.p_num = m.p_num " + "where m.p_num = ? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, p_num);
			rs = pstmt.executeQuery();

			dto = new ProductDTO();
			rs.next();
			dto.setTic_menu_info_content(rs.getString("tic_menu_info_content"));
			dto.setTicg_content(rs.getString("ticg_content"));
			dto.setTic_validate_content(rs.getString("tic_validate_content"));
			dto.setTic_cancel_content(rs.getString("tic_cancel_content"));
			dto.setTic_use_case_content(rs.getString("tic_use_case_content"));
			dto.setTic_use_case_title(rs.getString("tic_use_case_title"));
			dto.setTic_cancel_change_title(rs.getString("tic_cancel_change_title"));
			dto.setTic_validate_title(rs.getString("tic_validate_title"));
			dto.setTicg_title(rs.getString("ticg_title"));
			dto.setTic_menu_info_title(rs.getString("tic_menu_info_title"));

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

	public ProductDTO selectdisplay(Connection conn, int tic_seq) {
		String sql = " select * from restaurant r join editer_review e on r.rest_seq = e.rest_seq join ticket t "
				+ "on t.rest_seq = r.rest_seq join editer i on i.e_seq = e.e_seq where t.tic_seq = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, tic_seq);
			rs = pstmt.executeQuery();

			dto = new ProductDTO();
			rs.next();
			dto.setTic_seq(rs.getInt("tic_seq"));
			dto.setTic_type(rs.getString("tic_type"));
			dto.setRest_name(rs.getString("rest_name"));
			dto.setRest_address(rs.getString("rest_address"));
			dto.setTic_type(rs.getString("tic_type"));
			dto.setE_name(rs.getString("e_name"));
			dto.setEr_content(rs.getString("er_content"));
			dto.setE_img(rs.getString("e_img"));
			dto.setRest_foodinfo(rs.getString("rest_foodinfo"));

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

	public ProductDTO selectdisplay(Connection conn, int tic_seq, int member_num) {
		String sql = " select * from restaurant r join editer_review e on r.rest_seq = e.rest_seq join ticket t "
				+ "on t.rest_seq = r.rest_seq join editer i on i.e_seq = e.e_seq where t.tic_seq = ? ";
		
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
			pstmt.setInt(1, tic_seq);
			rs = pstmt.executeQuery();

			dto = new ProductDTO();
			rs.next();
			dto.setTic_seq(rs.getInt("tic_seq"));
			dto.setTic_type(rs.getString("tic_type"));
			dto.setRest_name(rs.getString("rest_name"));
			dto.setRest_address(rs.getString("rest_address"));
			dto.setTic_type(rs.getString("tic_type"));
			dto.setE_name(rs.getString("e_name"));
			dto.setEr_content(rs.getString("er_content"));
			dto.setE_img(rs.getString("e_img"));
			dto.setRest_foodinfo(rs.getString("rest_foodinfo"));
			// dto.setP_st_ed_date(rs.getString("p_st_ed_date"));

//			sql = "select count(*) cnt from (select * from pick where m_no = ? and tic_no = ?)";
//			pstmt2 = conn.prepareStatement(sql);
//			pstmt2.setInt(1, member_num);
//			pstmt2.setInt(2, tic_seq);
//			rs2 = pstmt2.executeQuery();
//			rs2.next();
//			dto.setPick(rs2.getInt("cnt"));
//			System.out.println("productdetail DAO : cnt = " + rs2.getInt("cnt"));

			// qna
			StringBuffer sql_qna = new StringBuffer();
			sql_qna.append(" select * " + " from p_product p " + " join editer_review e on p.e_seq = e.e_seq "
					+ " join product_img i on p.img_seq = i.img_seq " + " join p_restaurant r on r.p_num = p.p_num "
					+ " join (select q_m_no,q_ctime,q_content,q_seq,q_tic_seq, "
					+ " reply_seq,reply_ctime,reply_content,admin_seq " + "  from question q  "
					+ " join reply rp on q_reply_seq = reply_seq) qrp on q_tic_seq = p.p_num " + " where p.p_num = ? ");
			pstmt_qna = conn.prepareCall(sql_qna.toString());
			pstmt_qna.setInt(1, tic_seq);
			rs_qna = pstmt_qna.executeQuery();
			while (rs_qna.next()) {
				// dto.setE_name(rs_qna.getString("e_name"));
				/*
				 * dto.setQ_content(rs_qna.getString("q_content"));
				 * dto.setQ_ctime(rs_qna.getString("q_ctime"));
				 * dto.setReply_seq(rs_qna.getInt("reply_seq"));
				 * dto.setReply_content(rs_qna.getString("reply_content"));
				 * dto.setReply_ctime(rs_qna.getString("reply_ctime"));
				 * dto.setAdmin_seq(rs_qna.getInt("admin_seq"));
				 */
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

	public ArrayList<ProductDTO> selectdisplay_QnA(Connection conn, int tic_seq) {

		PreparedStatement pstmt_qna = null;
		ResultSet rs_qna = null;
		ProductDTO dto = null;
		ArrayList<ProductDTO> list = null;

		StringBuffer sql_qna = new StringBuffer();
		sql_qna.append(" select * " + " from p_product p " + " join editer_review e on p.e_seq = e.e_seq "
				+ " join product_img i on p.img_seq = i.img_seq " + " join p_restaurant r on r.p_num = p.p_num "
				+ " join (select q_m_no,q_ctime,q_content,q_seq,q_tic_seq, "
				+ " reply_seq,reply_ctime,reply_content,admin_seq " + "  from question q  "
				+ " join reply rp on q_reply_seq = reply_seq) qrp on q_tic_seq = p.p_num " + " where p.p_num = ? ");

		try {
			dto = new ProductDTO();
			// qna

			pstmt_qna = conn.prepareCall(sql_qna.toString());
			pstmt_qna.setInt(1, tic_seq);
			rs_qna = pstmt_qna.executeQuery();

			if (rs_qna.next()) {
				list = new ArrayList<>();
				do {
					// dto.setE_name(rs_qna.getString("e_name"));
					dto.setTic_seq(rs_qna.getInt("tic_seq"));
					/*
					 * dto.setQ_content(rs_qna.getString("q_content"));
					 * dto.setQ_ctime(rs_qna.getString("q_ctime"));
					 * dto.setReply_seq(rs_qna.getInt("reply_seq"));
					 * dto.setReply_content(rs_qna.getString("reply_content"));
					 * dto.setReply_ctime(rs_qna.getString("reply_ctime"));
					 * dto.setAdmin_seq(rs_qna.getInt("admin_seq"));
					 */
					dto.setE_name(rs_qna.getString("e_name"));
					list.add(dto);
				} while (rs_qna.next());
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
	}// selectdisplay_QnA

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
			/*
			 * pstmt.setString(2, pdto.getQ_content()); pstmt.setInt(3,
			 * pdto.getQ_tic_seq());
			 */
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	} // insertQnA
	
	

}// class
