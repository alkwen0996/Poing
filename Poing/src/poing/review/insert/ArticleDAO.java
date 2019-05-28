package poing.review.insert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.util.JdbcUtil;

public class ArticleDAO {
	public int insert(Connection conn, Article article) throws SQLException {
		System.out.println("ArticleDAO insert()");
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(" insert into review "
					+ "( rev_seq, rest_seq, rev_wtime,rev_content, " 
					+ "rev_like_cnt,rev_select_cnt,rev_comm_cnt, "  
					+" rev_m_seq, rev_se_seq, rev_starpoint,rev_line_exp) "
					+ " values (seq_review.nextval,seq_restaurant.nextval,?,?,?,?,?,?,?,?,?) ");
			pstmt.setString(2, article.getRev_wtime());
			pstmt.setString(3, article.getRev_content());
			pstmt.setInt(4, article.getRev_like_cnt());
			pstmt.setInt(5, article.getRev_select_cnt());
			pstmt.setInt(6, article.getRev_comm_cnt());
			pstmt.setInt(7, article.getRev_m_seq());
			pstmt.setInt(8, article.getRev_se_seq());
			pstmt.setFloat(9, article.getRev_starpoint());
			pstmt.setString(10, article.getRev_line_exp());
			
			int insertedCount = pstmt.executeUpdate();
			
			return insertedCount;
			
		}finally {
			JdbcUtil.close(pstmt);
		}
		
		
	}// method
}//class
