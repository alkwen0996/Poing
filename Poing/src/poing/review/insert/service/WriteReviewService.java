package poing.review.insert.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class WriteReviewService {
	
	public int writeReview(ReviewDTO rdto) {
		System.out.println("WriteReviewService");
		ReviewDAO dao = ReviewDAO.getInstance();
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			int insertedCount = dao.writeReview(conn, rdto);
			
			return insertedCount;
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}// boolean
}
