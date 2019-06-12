package admin.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EditerReviewDAO {

	public boolean insertEditerReview(Connection conn, int e_seq, int rest_seq, String er_content) throws SQLException {
		boolean result = false;


		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO editer_review ");
		sql.append(" (er_seq, e_seq, er_conent, rest_seq) VALUES ");
		sql.append(" (editer_review_seq.nextval, ?, ?, ?) ");

		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		
		pstmt.setInt(1, e_seq);
		pstmt.setInt(2, rest_seq);
		pstmt.setString(3, er_content);
		
		result = pstmt.executeUpdate()==0?false:true;
		pstmt.close();
		return result;
	}

}
