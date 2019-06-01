package poing.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.glassfish.external.probe.provider.annotations.ProbeParam;

public class ReviewDAO {
	private static ReviewDAO reviewdao = new ReviewDAO();

	public ReviewDAO() {}
	public static ReviewDAO getInstance() {
		return reviewdao;
	}//getInstance

	public int writeReview(Connection conn, ReviewDTO rdto) throws WriteReviewError {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO review ");
		sql.append(" (rev_no,         rest_no, rev_wtime, rev_content, m_no, rev_starpoint) values ");
		sql.append(" (rev_seq.nextval,?      , sysdate  , ?          , ?   , ?) ");
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
	public int updateReview(Connection conn, int rev_no, String content) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE review SET content = ? WHERE rev_no = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, content);
		pstmt.setInt(2, rev_no);
		result = pstmt.executeUpdate();
		return result;
	}
	
	
	public List<ReviewDTO> selectdisplay(Connection conn, String type, int m_no){
		StringBuffer sql = new StringBuffer();
		sql.append( "SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append( "(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt, ");
		sql.append( "(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt,  ");
		sql.append( "(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt, ");
		sql.append( "(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt ");
		if (m_no != -1) {
			sql.append( ",(SELECT COUNT(*) FROM follow WHERE following_seq = rev.m_no AND follower_seq = ?) amIfollow ");
			sql.append( ",(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = ?) amIlike ");
		}
		sql.append( "FROM review rev ");
		sql.append( "JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq ");
		sql.append( "JOIN member mem ON rev.m_no = mem.m_no ");
		if (m_no != -1 && type.equals("follower")) {
			sql.append( "WHERE rev.m_no IN (SELECT following_seq FROM follow WHERE follower_seq = ?) ");
		}
		sql.append( "ORDER BY rev_wtime DESC ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList <ReviewDTO> list = new ArrayList<>();

		try {
			pstmt = conn.prepareStatement(sql.toString());
			if (m_no != -1) {
				pstmt.setInt(1, m_no);
				pstmt.setInt(2, m_no);
			}
			if (m_no != -1 && type.equals("follower")) {
				pstmt.setInt(3, m_no);
			}
			rs=pstmt.executeQuery();

			ReviewDTO dto = null;
			while(rs.next()) {
				dto = new ReviewDTO(rs, m_no);
				dto.setCdto(CommentDAO.selectLatestComment(conn, dto.getRev_no()));
				list.add(dto);
			}//while
			pstmt.close();
			rs.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}//finally

		return list;
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
	public int countLikeReview(Connection conn, int rev_id) throws SQLException {
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
}// class

