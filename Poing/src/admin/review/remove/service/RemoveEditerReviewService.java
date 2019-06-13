package admin.review.remove.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import admin.review.EditerReviewDAO;

public class RemoveEditerReviewService{
	EditerReviewDAO erDAO = new EditerReviewDAO();
	
	public boolean removeEditerReview(int er_seq) {
		boolean result = false;
		Connection conn = ConnectionProvider.getConnection();
		result = erDAO.deleteEditerReivew(conn, er_seq);
		conn.close();
		return result;
	}
}
