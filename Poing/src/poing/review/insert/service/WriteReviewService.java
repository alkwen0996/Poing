package poing.review.insert.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class WriteReviewService {
	public boolean insertReview(ReviewDTO rdto) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			return ReviewDAO.insertReview(conn,rdto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}// boolean
}
