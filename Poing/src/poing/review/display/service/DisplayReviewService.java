package poing.review.display.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class DisplayReviewService {
	public List<ReviewDTO> select(String type, int m_no){
		
		System.out.println("DisplayReviewService");
		ReviewDAO dao = new ReviewDAO();
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			List<ReviewDTO> list = ReviewDAO.selectAllReview(conn, type, m_no);
			
			return list;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
	}//List
	
	public static int countReview(int m_no) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			result = ReviewDAO.countWriteReview(conn, m_no);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return result;
	}
}//class
