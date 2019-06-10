package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReplyDAO {
	private static ReplyDAO displydao = new ReplyDAO();
	public static ReplyDAO getInstance() {
		return displydao;
	}// getInstance
	
	public ReplyDAO() {}
	public List<ReplyDTO> selectDisplay(Connection conn , int memberID){
		System.out.println("ReplyDAO display");
		StringBuffer sql = new StringBuffer();
		sql.append(" select * from reply ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList <ReplyDTO> rlist = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			ReplyDTO rdto = null;
			while(rs.next()) {
				rdto.setReply_seq(rs.getInt("reply_seq"));
				rdto.setReply_ctime(rs.getString("reply_ctime"));
				rdto.setReply_content(rs.getString("reply_content"));
				rdto.setAdmin_seq(rs.getInt("admin_seq"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}//finally	

		
		return rlist;
	} // selectDisply
}// class
