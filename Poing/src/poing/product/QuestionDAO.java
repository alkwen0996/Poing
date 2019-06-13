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
	
	public ArrayList<QuestionDTO> selectDisplay(Connection conn){
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
	
	public QuestionDTO insertQuestion(Connection conn,int m_seq, int tic_seq,String q_content) throws SQLException {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into tic_question values(seq_tic_question.nextval,"
				+ " sysdate,?,?,?) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		QuestionDTO qdto = null;
		
		try {
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, q_content);
				pstmt.setInt(2, m_seq);
				pstmt.setInt(3, tic_seq);
				result = pstmt.executeUpdate()==0? false:true;
		
				
				StringBuffer sql2 = new StringBuffer();
				if (result) {
					 sql2.append(" select * from tic_question ");
					pstmt = conn.prepareStatement(sql2.toString());
					rs = pstmt.executeQuery();
					while (rs.next()) {
						qdto = new QuestionDTO();
						qdto.setQ_seq(rs.getInt("q_seq"));
						qdto.setM_seq(rs.getInt("m_seq"));
						qdto.setQ_ctime(rs.getString("q_ctime"));
						qdto.setQ_content(rs.getString("q_content"));
						qdto.setTic_seq(rs.getInt("tic_seq"));
						qdto.setM_name(rs.getString("m_name"));
					}
					
				}
				pstmt.close();
				rs.close();
				conn.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return qdto;
	};
	
}// class
