package admin.review.write.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import admin.review.EditerReviewDAO;

public class WriteEditerReviewService{
	EditerReviewDAO erDAO = new EditerReviewDAO();
	public boolean addEditerReview(int e_seq, int rest_seq, String er_content) throws SQLException {
		boolean result = false;
		Connection conn = ConnectionProvider.getConnection();
		result = erDAO.insertEditerReview(conn, e_seq, rest_seq, er_content);
		conn.close();
		return result;
	}
}
