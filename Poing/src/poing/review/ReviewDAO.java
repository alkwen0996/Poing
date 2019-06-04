package poing.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {

	public ReviewDAO() {}
	
	public static List<ReviewDTO> selectAllReview(Connection conn, String type, int my_no) throws SQLException{
		StringBuffer sql = new StringBuffer();
		sql.append( "SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append( "(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt,  ");
		sql.append( "(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no) pick_cnt ");
		if (my_no != -1) {
			sql.append( ",(SELECT COUNT(*) FROM follow WHERE following_seq = rev.m_no AND follower_seq = ?) amIfollow ");
			sql.append( ",(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = ?) amIlike ");
			sql.append( ",(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no AND m_no = ?) amIpick ");

		}
		sql.append( "FROM review rev ");
		sql.append( "JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append( "JOIN member mem ON rev.m_no = mem.m_no ");
		if (my_no != -1 && type.equals("follower")) {
			sql.append( "WHERE rev.m_no IN (SELECT following_seq FROM follow WHERE follower_seq = ?) ");
		}
		sql.append( "ORDER BY rev_wtime DESC ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList <ReviewDTO> list = null;
		pstmt = conn.prepareStatement(sql.toString());
		if (my_no != -1) {
			pstmt.setInt(1, my_no);
			pstmt.setInt(2, my_no);
			pstmt.setInt(3, my_no);
		}
		if (my_no != -1 && type.equals("follower")) {
			pstmt.setInt(4, my_no);
		}
		rs=pstmt.executeQuery();

		ReviewDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<>();
			do {
				dto = new ReviewDTO(rs, my_no);
				dto.setCdto(CommentDAO.selectLatestComment(conn, dto.getRev_no()));
				dto.setImages(ReviewDAO.selectReviewImages(conn, dto.getRev_no()));
				list.add(dto);
			}while(rs.next());//while
		}
		pstmt.close();
		rs.close();
		return list;
	}//selectdisplay
	
	public int insertReview(Connection conn, ReviewDTO rdto) throws WriteReviewError {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO review ");
		sql.append(" (rev_no,         rest_no, rev_wtime, rev_mtime, rev_content, m_no, rev_starpoint) values ");
		sql.append(" (rev_seq.nextval,?      , sysdate  , sysdate  , ?          , ?   , ?) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		StringBuffer sql2 = new StringBuffer();
		sql2.append(" SELECT rev_seq.currval cur FROM dual ");

		try {
			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setInt(1, rdto.getRest_no());
			pstmt.setString(2, rdto.getRev_content());
			pstmt.setInt(3, rdto.getM_no());
			pstmt.setDouble(4, rdto.getRev_starpoint());
			result = pstmt.executeUpdate();

			if(result != 0)
			{
				pstmt = conn.prepareStatement(sql2.toString());
				rs = pstmt.executeQuery();
				if(rs.next())
					result = rs.getInt("cur");
			}
			else {
				throw new WriteReviewError();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new WriteReviewError();
		}
		return result;
	}//insert
	public int deletReview(Connection conn, int rev_no) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM review WHERE rev_no = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_no);
		result = pstmt.executeUpdate();
		return result;
	}
	public int updateReview(Connection conn, int rev_no, String text, int grade) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE review SET rev_content = ?, rev_starpoint = ?, rev_mtime = sysdate WHERE rev_no = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, text);
		pstmt.setInt(2, grade);
		pstmt.setInt(3, rev_no);
		result = pstmt.executeUpdate();
		return result;
	}

	public static ArrayList<String> selectReviewImages(Connection conn, int rev_no) throws SQLException {
		ArrayList<String> reviewImages = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT rev_img FROM review_img ");
		sql.append(" WHERE rev_no = ? ");

		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_no);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			reviewImages = new ArrayList<>();
			do {
				reviewImages.add(rs.getString("rev_img"));
			} while (rs.next());
		}
		return reviewImages;
	}
	public boolean insertReviewImage(Connection conn, int rev_no, String filePath) throws SQLException {
		boolean result = false;

		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO review_img ");
		sql.append(" (rev_img_seq, rev_img, rev_no) VALUES ");
		sql.append(" (review_img_seq.nextval, ?, ?) ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, filePath);
		pstmt.setInt(2, rev_no);

		result = pstmt.executeUpdate()==0?false:true;

		return result;
	}


	public static ReviewDTO selectReviewById(Connection conn, int m_no, int rev_no) throws SQLException{
		StringBuffer sql = new StringBuffer();
		sql.append( "SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append( "(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt,  ");
		sql.append( "(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no) pick_cnt ");

		if (m_no != -1) {
			sql.append( ",(SELECT COUNT(*) FROM follow WHERE following_seq = rev.m_no AND follower_seq = ?) amIfollow ");
			sql.append( ",(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = ?) amIlike ");
			sql.append( ",(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no AND m_no = ?) amIpick ");
		}
		sql.append( "FROM review rev ");
		sql.append( "JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append( "JOIN member mem ON rev.m_no = mem.m_no ");
		sql.append( "WHERE rev.rev_no = ? ");
		sql.append( "ORDER BY rev_wtime DESC ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ReviewDTO dto = null;
		pstmt = conn.prepareStatement(sql.toString());
		if (m_no != -1) {
			pstmt.setInt(1, m_no);
			pstmt.setInt(2, m_no);
			pstmt.setInt(3, m_no);
			pstmt.setInt(4, rev_no);
		}
		else {
			pstmt.setInt(1, rev_no);
		}
		rs=pstmt.executeQuery();

		if (rs.next()) {
			dto = new ReviewDTO(rs, m_no);
			dto.setCdto(CommentDAO.selectLatestComment(conn, dto.getRev_no()));
			dto.setImages(selectReviewImages(conn, dto.getRev_no()));
		}
		pstmt.close();
		rs.close();
		return dto;
	}//ReviewDisplay

	public int insertLikeReview(Connection conn, int mid, int rev_id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO review_like ");
		sql.append(" (rl_no, m_no, rev_no) VALUES ");
		sql.append(" (review_like_seq.nextval, ?, ?) ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, mid);
		pstmt.setInt(2, rev_id);
		int result = 0;
		result = pstmt.executeUpdate();
		return result;
	}
	public int deleteLikeReview(Connection conn, int mid, int rev_id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM review_like ");
		sql.append(" WHERE m_no = ? AND rev_no = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());

		pstmt.setInt(1, mid);
		pstmt.setInt(2, rev_id);
		int result = 0;
		result = pstmt.executeUpdate();
		return result;	
	}


	public static ArrayList<ReviewDTO> selectMyWriteReview(Connection conn, int memberID) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append( "SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append( "(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt,  ");
		sql.append( "(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no) pick_cnt ");
		sql.append( ",(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = ?) amIlike ");
		sql.append( ",(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no AND m_no = ?) amIpick ");
		sql.append( "FROM review rev ");
		sql.append( "JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append( "JOIN member mem ON rev.m_no = mem.m_no ");
		sql.append( "WHERE rev.m_no = ? ");
		sql.append( "ORDER BY rev_wtime DESC ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList <ReviewDTO> list = null;
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, memberID);
		pstmt.setInt(2, memberID);
		pstmt.setInt(3, memberID);
		rs=pstmt.executeQuery();

		ReviewDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<>();
			do {
				dto = new ReviewDTO(rs);
				dto.setCdto(CommentDAO.selectLatestComment(conn, dto.getRev_no()));
				dto.setImages(ReviewDAO.selectReviewImages(conn, dto.getRev_no()));
				list.add(dto);
			}while(rs.next());//while
		}
		pstmt.close();
		rs.close();

		return list;
	}
	public int insertPickReview(Connection conn, int m_no, int rev_no) throws SQLException {
		int result = 0;

		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO pick ");
		sql.append(" (pick_seq,         m_no, review_num) VALUES ");
		sql.append(" (pick_seq.nextval, ?   , ?) ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, m_no);
		pstmt.setInt(2, rev_no);

		result = pstmt.executeUpdate();

		return result;
	}
	public int deletePickReview(Connection conn, int rev_no) throws SQLException {
		int result = 0;

		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM pick ");
		sql.append(" WHERE review_num = ? ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_no);

		result = pstmt.executeUpdate();

		return result;
	}

	public static ArrayList<ReviewDTO> selectMyPickReview(Connection conn, int memberID) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append( "SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append( "(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt,  ");
		sql.append( "(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no) pick_cnt ");
		sql.append( ",(SELECT COUNT(*) FROM follow WHERE following_seq = rev.m_no AND follower_seq = ?) amIfollow ");
		sql.append( ",(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = ?) amIlike ");
		sql.append( ",(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no AND m_no = ?) amIpick ");
		sql.append( "FROM review rev ");
		sql.append( "JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append( "JOIN member mem ON rev.m_no = mem.m_no ");
		sql.append( "WHERE rev.rev_no IN (select review_num from pick WHERE m_no = ? AND review_num IS NOT NULL) ");
		sql.append( "ORDER BY rev_wtime DESC ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList <ReviewDTO> list = null;
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, memberID);
		pstmt.setInt(2, memberID);
		pstmt.setInt(3, memberID);
		pstmt.setInt(4, memberID);
		rs=pstmt.executeQuery();

		ReviewDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<>();
			do {
				dto = new ReviewDTO(rs, memberID);
				dto.setCdto(CommentDAO.selectLatestComment(conn, dto.getRev_no()));
				dto.setImages(ReviewDAO.selectReviewImages(conn, dto.getRev_no()));
				list.add(dto);
			}while(rs.next());//while
		}
		pstmt.close();
		rs.close();
		return list;
	}

	public static ArrayList<ReviewDTO> selectRestReview(Connection conn, int rest_no, int my_no, String type) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append( "SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append( "(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt,  ");
		sql.append( "(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no) pick_cnt ");
		if (my_no != -1) {
			sql.append( ",(SELECT COUNT(*) FROM follow WHERE following_seq = rev.m_no AND follower_seq = ?) amIfollow ");
			sql.append( ",(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = ?) amIlike ");
			sql.append( ",(SELECT COUNT(*) FROM pick WHERE review_num = rev.rev_no AND m_no = ?) amIpick ");

		}
		sql.append( "FROM review rev ");
		sql.append( "JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append( "JOIN member mem ON rev.m_no = mem.m_no ");
		sql.append( "WHERE rest_no = ? ");
		if (type==null || type.equals("time")) {
			sql.append( "ORDER BY rev_wtime DESC ");
		}
		else if(type.equals("like")) {
			sql.append( "ORDER BY like_cnt DESC ");
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList <ReviewDTO> list = null;
		pstmt = conn.prepareStatement(sql.toString());
		if (my_no != -1) {
			pstmt.setInt(1, my_no);
			pstmt.setInt(2, my_no);
			pstmt.setInt(3, my_no);
			pstmt.setInt(4, rest_no);
		}
		else {
			pstmt.setInt(1, rest_no);
		}
		
		rs=pstmt.executeQuery();

		ReviewDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<>();
			do {
				dto = new ReviewDTO(rs, my_no);
				dto.setCdto(CommentDAO.selectLatestComment(conn, dto.getRev_no()));
				dto.setImages(ReviewDAO.selectReviewImages(conn, dto.getRev_no()));
				list.add(dto);
			}while(rs.next());//while
		}
		pstmt.close();
		rs.close();
		return list;
	}

	public static int countWriteReview(Connection conn, int m_no) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(*) review_cnt FROM review ");
		sql.append(" WHERE m_no = ? ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, m_no);
		ResultSet rs = pstmt.executeQuery();

		int result = 0;
		if (rs.next()) {
			result = rs.getInt("review_cnt");
		}
		return result;
	}
	public static int countLikeReview(Connection conn, int rev_id) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(*) like_cnt FROM review_like ");
		sql.append(" WHERE rev_no = ? ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_id);
		ResultSet rs = pstmt.executeQuery();

		int result = 0;
		if (rs.next()) {
			result = rs.getInt("like_cnt");
		}
		return result;
	}
	public static int countPickReview(Connection conn, int rev_no) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(*) pick_cnt FROM pick ");
		sql.append(" WHERE review_num = ? ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_no);
		ResultSet rs = pstmt.executeQuery();

		int result = 0;
		if (rs.next()) {
			result = rs.getInt("pick_cnt");
		}
		return result;
	}
	public static int countRestReview(Connection conn, int rest_no) throws SQLException {
		int review_cnt = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT COUNT(*) review_cnt FROM review ");
		sql.append(" WHERE rest_no = ? ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rest_no);
		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {
			review_cnt = rs.getInt("review_cnt");
		}
		return review_cnt;
	}
	
	public static ArrayList<ReviewDTO> selectMainReview(Connection conn) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT rev.*, rest.rest_name, rest.rest_loc, rest.rest_img, mem.m_name, mem.m_img, ");
		sql.append(" (SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append(" (SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt ");
		sql.append(" FROM review rev ");
		sql.append(" JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append(" JOIN member mem ON rev.m_no = mem.m_no ");
		sql.append(" WHERE ROWNUM <= 12; ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList <ReviewDTO> list = null;
		pstmt = conn.prepareStatement(sql.toString());
		
		rs=pstmt.executeQuery();

		ReviewDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<>();
			do {
				dto = new ReviewDTO(rs, "main");
				list.add(dto);
			}while(rs.next());//while
		}
		pstmt.close();
		rs.close();
		return list;
	}
	
}// class

