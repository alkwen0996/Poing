package poing.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
	private static ReviewDAO reviewdao = new ReviewDAO();
	
	public ReviewDAO() {}
	public static ReviewDAO getInstance() {
		return reviewdao;
	}//getInstance
	
	public static int writeReview(Connection conn, ReviewDTO rdto) {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into review ");
		sql.append(" (rev_seq,rest_seq,rev_wtime,rev_content,rev_m_seq,rev_starpoint) values ");
		sql.append(" (rev_seq.nextval,rest_seq.nextval,?,?,rev_m_seq.nextval,?) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, rdto.getRev_wtime());
			pstmt.setString(2, rdto.getRev_content());
			pstmt.setString(3, rdto.getRev_starpoint());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}//insert
	
	public List<ReviewDTO> selectdisplay(Connection conn){
		
		System.out.println("ReviewDAO");
		
		StringBuffer sql = new StringBuffer();
		sql.append("select * from review ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList <ReviewDTO> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			
			ReviewDTO dto = null;
			
			while(rs.next()) {
				dto = new ReviewDTO();
				dto.setRev_seq(rs.getString("rev_seq"));
				dto.setRest_seq(rs.getString("rest_seq"));
				dto.setRev_wtime(rs.getString("rev_wtime"));
				dto.setRev_content(rs.getString("rev_content"));
				dto.setRev_m_seq(rs.getString("rev_m_seq"));
				dto.setRev_starpoint(rs.getString("rev_starpoint"));
				
				list.add(dto);
			}//while
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}//catch
		}//finally
		
		
		return list;
	}//ReviewDisplay
	
}// class
