package owner.review.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import poing.review.CommentDAO;
import poing.review.CommentDTO;
import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class GetMyRestReviewDetailService {
	ReviewDAO reviewDAO = new ReviewDAO();
	public ReviewDTO getMyRestReivew(int rev_no) throws SQLException {
		ReviewDTO reviewDTO = null;
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		int m_no = -1;
		reviewDTO = reviewDAO.selectReviewById(conn, m_no, rev_no);
		conn.close();
		return reviewDTO;
	}
	public ArrayList<CommentDTO> getReviewCommentList(int rev_no) throws SQLException {
		CommentDAO commentDAO = new CommentDAO();
		ArrayList<CommentDTO> comment_list = null;
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		comment_list = commentDAO.selectComments(conn, rev_no);
		conn.close();
		return comment_list;
	}
}
