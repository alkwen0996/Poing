package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionDAO {
	private static QuestionDAO displaydao = new QuestionDAO();
	public static QuestionDAO getInstance() {
		return displaydao;
	}// getInstance
	
	public QuestionDAO() {}
	
	public ArrayList<QuestionDTO> selectDisplay(Connection conn,int memberID){
		System.out.println("QuestionDAO displayl");
		StringBuffer sql = new StringBuffer();
		sql.append(" select q.*,m.m_name m_name ");
		sql.append(" from tic_question q join member m on q.m_seq = m.m_seq ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<QuestionDTO> qlist = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			QuestionDTO qdto =null;
			
			while(rs.next()) {
				qdto = new QuestionDTO();
				qdto.setQ_seq(rs.getInt("q_seq"));
				qdto.setM_seq(rs.getInt("m_seq"));
				qdto.setQ_ctime(rs.getString("q_ctime"));
				qdto.setQ_content(rs.getString("q_content"));
				qdto.setTic_seq(rs.getInt("tic_seq"));
				qdto.setM_name(rs.getString("m_name"));
				qlist.add(qdto);
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
		}	
		
		return qlist;
	}
	
}// class
