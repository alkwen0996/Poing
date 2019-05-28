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
	
	public static boolean insertReview(Connection conn, ReviewDTO rdto) {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into review ");
		sql.append(" (rev_seq,rest_seq,rev_wtime,rev_content,rev_like_cnt,rev_select_cnt,rev_comm_cnt,rev_m_seq,rev_se_seq,rev_starpoint,rev_line_exp) values ");
		sql.append(" (seq_review.nextval,seq_restaurant.nextval,?,?,?,?,?,?,?,?,?) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, rdto.getRev_wtime());
			pstmt.setString(2, rdto.getRev_content());
			pstmt.setInt(3, rdto.getRev_like_cnt());
			pstmt.setInt(4, rdto.getRev_select_cnt());
			pstmt.setInt(5, rdto.getRev_comm_cnt());
			pstmt.setInt(6, rdto.getRev_m_seq());
			pstmt.setInt(7, rdto.getRev_se_seq());
			pstmt.setFloat(8, rdto.getRev_starpoint());
			pstmt.setString(9, rdto.getRev_line_exp());
			
			result = pstmt.executeUpdate()==1?true:false;
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
				dto.setRev_seq(rs.getInt("rev_seq"));
				dto.setRest_seq(rs.getInt("rest_seq"));
				dto.setRev_wtime(rs.getString("rev_wtime"));
				dto.setRev_content(rs.getString("rev_content"));
				dto.setRev_like_cnt(rs.getInt("rev_like_cnt"));
				dto.setRev_select_cnt(rs.getInt("rev_select_cnt"));
				dto.setRev_comm_cnt(rs.getInt("rev_comm_cnt"));
				dto.setRev_m_seq(rs.getInt("rev_m_seq"));
				dto.setRev_se_seq(rs.getInt("rev_se_seq"));
				dto.setRev_starpoint(rs.getFloat("rev_starpoint"));
				
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
