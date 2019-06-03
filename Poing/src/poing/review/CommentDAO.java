package poing.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {

	public int insertComment(Connection conn, int rev_no, String comment, int m_no) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO review_comment ");
		sql.append(" (rc_no,                      rc_content, rc_wtime, rc_mtime, m_no, rev_no) VALUES ");
		sql.append(" (review_comment_seq.nextval, ?         , sysdate , sysdate , ?   , ? ) ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, comment);
		pstmt.setInt(2, m_no);
		pstmt.setInt(3, rev_no);
		result = pstmt.executeUpdate();
		return result;
	}
	public int deleteComment(Connection conn, int rc_no) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM review_comment ");
		sql.append(" WHERE rc_no = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rc_no);
		result = pstmt.executeUpdate();
		return result;
	}
	public int updateComment(Connection conn, int rc_no, String comment) throws SQLException {
		int result = 0;
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE review_comment ");
		sql.append(" rc_content = ? ");
		sql.append(" WHERE rc_no = ? ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, comment);
		pstmt.setInt(2, rc_no);
		result = pstmt.executeUpdate();
		return result;
	}
	public ArrayList<CommentDTO> selectComments(Connection conn, int rev_no) throws SQLException {
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT rc.*, m_name, m_img  ");
		sql.append(" FROM review_comment rc ");
		sql.append(" JOIN member m ON  rc.m_no = m.m_no ");
		sql.append(" WHERE rev_no= ? ");
		sql.append(" ORDER BY rc_wtime ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_no);
		
		ResultSet rs = pstmt.executeQuery();
		CommentDTO cdto = null;
		ArrayList<CommentDTO> clist = null;
		if (rs.next()) {
			clist = new ArrayList<CommentDTO>();
			do {
				cdto = new CommentDTO(rs);
				clist.add(cdto);
			} while (rs.next());
		}
		return clist;
	}
	public static CommentDTO selectLatestComment(Connection conn, int rev_no) throws SQLException {
		CommentDTO cdto = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT rc.*, m_name, m_img  ");
		sql.append(" from review_comment rc ");
		sql.append(" JOIN member m ON  rc.m_no = m.m_no ");
		sql.append(" WHERE ROWNUM =1 AND rev_no= ? ");
		sql.append(" ORDER BY rc_wtime desc ");
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, rev_no);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			cdto = new CommentDTO(rs);
		}
		return cdto;
	}
}
