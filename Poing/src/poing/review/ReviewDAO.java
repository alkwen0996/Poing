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
	
	public int writeReview(Connection conn, ReviewDTO rdto) throws WriteReviewError {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO review ");
		sql.append(" (rev_seq,        rest_seq, rev_wtime, rev_content, rev_m_seq, rev_starpoint) values ");
		sql.append(" (rev_seq.nextval,?       , sysdate  , ?          , ?        , ?) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		StringBuffer sql2 = new StringBuffer();
		sql2.append(" SELECT rev_seq.currval cur FROM dual ");
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setInt(1, rdto.getRest_seq());
			pstmt.setString(2, rdto.getRev_content());
			pstmt.setInt(3, rdto.getRev_m_seq());
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
	
	public List<ReviewDTO> selectdisplay(Connection conn, String type){
		
		System.out.println("ReviewDAO");
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT rev.*, rest.rest_name, rest.rest_loc, mem.m_name, mem.m_img, ");
		sql.append(" (SELECT COUNT(*) FROM follow WHERE follower_seq = rev.rev_m_seq) m_ercnt, ");
		sql.append(" (SELECT COUNT(*) FROM review WHERE rev_m_seq = rev.rev_m_seq) m_revcnt "); 
		sql.append(" FROM review rev ");
		sql.append(" JOIN p_restaurant rest ON rev.rest_seq =  rest.rest_seq ");
		sql.append(" JOIN member mem ON rev.rev_m_seq = mem.m_no ");
		if (type.equals("follower")) {
			sql.append(" WHERE rev.rev_m_seq IN (SELECT follower_seq FROM follow WHERE following_seq = 100022 ) ");
		}
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList <ReviewDTO> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			
			ReviewDTO dto = null;
			
			while(rs.next()) {
				dto = new ReviewDTO(rs);
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
	
}// class
