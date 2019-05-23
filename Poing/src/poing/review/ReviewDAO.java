package poing.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
	private static ReviewDAO reviewdao = new ReviewDAO();
	public static ReviewDAO getInstance() {
		return reviewdao;
	}//getInstance
	
	public ReviewDAO() {}
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
				dto.setRev_no(rs.getInt("rev_no"));
				dto.setRest_no(rs.getInt("rest_no"));
				dto.setRev_wtime(rs.getString("rev_wtime"));
				dto.setRev_content(rs.getString("rev_content"));
				dto.setRev_like_cnt(rs.getInt("rev_like_cnt"));
				dto.setRev_select_cnt(rs.getInt("rev_select_cnt"));
				dto.setRev_comm_cnt(rs.getInt("rev_comm_cnt"));
				dto.setM_no(rs.getInt("m_no"));
				dto.setSe_seq(rs.getInt("se_seq"));
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
