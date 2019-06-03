package poing.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import poing.rest.RestListDTO;
import poing.rest.RestReserveDTO;
import poing.rest.RestTimlineReserveDTO;

import poing.product.ProductDTO;
import poing.product.reserva_ticDTO;

public class MemberDAO {
	
	
	
	
	
	public static int selectID(Connection conn, String email) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT m_no FROM member ");
		sql.append("WHERE m_email = ? ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt("m_no");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	//회원 정보 검색
	public MemberDTO selectById(Connection conn, int memberID) throws SQLException{
		MemberDTO mdto = null;
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM member WHERE m_no = ?");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, memberID);

		rs = pstmt.executeQuery();
		if (rs.next()) {
			mdto = new MemberDTO(rs);
		}
		return mdto;
	}
	
	public static List<reserva_ticDTO> selectReserva_tic(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select reserva_tic_seq,p_st_ed_date,op_name, rest_name, c_date,party_size,photo_img from cart c join totalcart t on c.cart_seq = t.cart_seq join  p_option p on t.op_seq = p.op_seq join p_product a on a.p_num = p.p_num join p_restaurant l on l.p_num = a.p_num join product_img i on i.img_seq = a.img_seq join reserve_tic k on k.cart_seq = c.cart_seq ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<reserva_ticDTO> list1 = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			reserva_ticDTO rdto = null;
			while(rs.next()) {
			rdto = new reserva_ticDTO();
			rdto.setReserva_tic_seq(rs.getInt("reserva_tic_seq"));
			rdto.setRest_name(rs.getString("rest_name"));
			rdto.setP_st_ed_date(rs.getString("p_st_ed_date"));
			rdto.setOp_name(rs.getString("op_name"));
			rdto.setC_date(rs.getString("c_date"));
			rdto.setParty_size(rs.getInt("party_size"));
			rdto.setPhoto_img(rs.getString("photo_img"));
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
	
	public static boolean insertReserve_tic(Connection conn, int p_num, int m_no, int cart_seq){
		MemberDTO mdto = null;
		boolean result1 = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into reserve_tic (reserva_tic_seq, p_num, m_no, cart_seq, p_state)values (reserva_tic_seq.nextval, ?, ?, ?,'결제완료') ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			//pstmt.setInt(1, rp_seq);
			pstmt.setInt(1, p_num);
			pstmt.setInt(2, m_no);
			pstmt.setInt(3, cart_seq);
			//
			 
			result1 = pstmt.executeUpdate()==0? false:true;
			// 
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result1;
	}
	
	
	public static boolean selectRp_seq(Connection conn, int rp_seq, int p_dc_money, String m_email){
		MemberDTO mdto = null;
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" update member set rp_seq = rp_seq -? where m_email = ? ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			//pstmt.setInt(1, rp_seq);
			pstmt.setInt(1, p_dc_money);
			pstmt.setString(2, m_email);
			//
			 
			result = pstmt.executeUpdate()!=0? true:false;
			// 
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	
	public static boolean insertMember(Connection conn, MemberDTO mdto) {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO member ");
		sql.append(" (              m_no, m_name, m_birth, m_gen, m_email, m_level, m_pw, m_nickname, rp_seq) VALUES");
		sql.append(" (seq_member.nextval,      ?,       ?,     ?,       ?,       ?,    ?,          ?,      ?) ");	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, mdto.getM_name());
		pstmt.setString(2, mdto.getM_birth().toString());
		pstmt.setInt(3, mdto.getM_gen());
		pstmt.setString(4, mdto.getM_email());
		pstmt.setInt(5, mdto.getM_level());
		pstmt.setString(6, mdto.getM_pw());
		pstmt.setString(7, mdto.getM_name());
		pstmt.setInt(8, mdto.getRp_seq());
		result = pstmt.executeUpdate()==1?true:false;
		}catch (Exception e) {
			// TODO: handle exception
		}
		//입력성공시 true, 실패시 false반환
		return result;
	}

	public static int[] getFollowCnt(Connection conn, int m_no) throws SQLException {
		int[] result = new int[2];
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT ");
		sql.append(" (SELECT COUNT(*) FROM follow WHERE follower_seq = ?) edcnt, ");
		sql.append(" (SELECT COUNT(*) FROM follow WHERE following_seq = ?) ercnt ");
		sql.append(" FROM dual ");

		PreparedStatement pstmt;
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, m_no);
		pstmt.setInt(2, m_no);
		ResultSet rs = pstmt.executeQuery();
		if ( rs.next() ) {
			result[0] = rs.getInt("edcnt");
			result[1] = rs.getInt("ercnt");
		}		
		return result;
	}
	public boolean deleteFollower(Connection conn, int myId, int fid) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM follow ");
		sql.append(" WHERE follower_seq = ? AND following_seq = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, myId);
		pstmt.setInt(2, fid);
		boolean result = pstmt.executeUpdate()==0 ? false : true;


		return result;
	}
	public boolean insertFollower(Connection conn, int myId, int fid) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO follow (follow_seq, follower_seq, following_seq) ");
		sql.append(" VALUES(follow_seq.nextval, ?, ?) ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, myId);
		pstmt.setInt(2, fid);
		boolean result = pstmt.executeUpdate()==0 ? false : true;
		return result;
	}
	public boolean updateProfileImage(Connection conn, int m_no, String filePath) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE member SET m_img = ?");
		sql.append(" WHERE m_no = ? ");
		
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, filePath);
		pstmt.setInt(2, m_no);
		result = pstmt.executeUpdate();
		return result==0?false:true;
	}
	
	public ArrayList<RestTimlineReserveDTO> getReserveRest(Connection conn, int memberID) throws SQLException {
		
		String sql = "select * from rest_reserve a join p_restaurant b on a.rest_no = b.rest_seq where a.m_num =? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<RestTimlineReserveDTO> list = new ArrayList<>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberID);
			rs = pstmt.executeQuery();
			RestTimlineReserveDTO dto = null;
			while (rs.next()) {
				dto = new RestTimlineReserveDTO();
				dto.setR_reserve_seq(  rs.getInt("R_RESERVE_NUM") );
				dto.setR_reserve_date( rs.getDate("R_RESERVE_DATE").toString()  );
				dto.setR_reserve_hour(  rs.getString("R_RESERVE_HOUR") );
				dto.setR_reserve_name( rs.getString("r_reserve_name") ); 
				dto.setR_reserve_request(  rs.getString("r_reserve_request") );
				dto.setRest_seq( rs.getInt("rest_no") );
				dto.setR_reserve_status( rs.getInt("R_RESERVE_STATUS") );
				dto.setR_reserve_numofpeople(rs.getInt("R_RESERVE_NUM_OF_PEOPLE"));
				dto.setRest_name(rs.getString("rest_name"));
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

