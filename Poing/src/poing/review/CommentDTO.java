package poing.review;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class CommentDTO {
	private int rc_no;
	private String rc_content;
	private Date rc_wtime;
	private Date rc_mtime;
	private int m_no;
	private int rev_no;
	private String m_name;
	private String m_img;

	public int getRc_no() {
		return rc_no;
	}

	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}
	
	public Date getRc_mtime() {
		return rc_mtime;
	}

	public void setRc_mtime(Date rc_mtime) {
		this.rc_mtime = rc_mtime;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public String getRc_content() {
		return rc_content;
	}

	public void setRc_content(String rc_content) {
		this.rc_content = rc_content;
	}



	public Date getRc_wtime() {
		return rc_wtime;
	}



	public void setRc_wtime(Date rc_wtime) {
		this.rc_wtime = rc_wtime;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}
	

	public CommentDTO() {
	}

	public CommentDTO(String rc_content, int m_no, int rev_no) {
		this.setRc_no(0);
		this.rc_content = rc_content;
		this.m_no = m_no;
		this.rev_no = rev_no;
		this.rc_wtime = null;
	}

	public CommentDTO(ResultSet rs) throws SQLException {
		this.rc_no = rs.getInt("rc_no");
		this.rc_content = rs.getString("rc_content");
		this.rc_wtime = rs.getDate("rc_wtime");
		this.rc_mtime = rs.getDate("rc_mtime");
		this.m_no = rs.getInt("m_no");
		this.rev_no = rs.getInt("rev_no");
		this.m_name = rs.getString("m_name");
		this.m_img = rs.getString("m_img");
	}
}
