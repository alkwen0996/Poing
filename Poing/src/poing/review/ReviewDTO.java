package poing.review;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class ReviewDTO {
	
	private int rev_seq;
	private int rest_seq;
	private Date rev_wtime;
	private String rev_content;
	private int rev_m_seq;
	private int rev_starpoint;
	private String rest_name;
	private String rest_loc;
	private String m_name;
	private String m_img;
	private int m_ercnt;
	private int m_revcnt;
	
	
	
	public ReviewDTO() {
	}
	public ReviewDTO(HttpServletRequest request) {
		this.rev_seq = Integer.parseInt(request.getParameter("rev_seq"));
		this.rest_seq = Integer.parseInt(request.getParameter("rest_seq"));
		this.rev_content = request.getParameter("rev_content");
		this.rev_m_seq = Integer.parseInt(request.getParameter("rev_m_seq"));
		this.rev_starpoint = Integer.parseInt(request.getParameter("rev_starpoint"));
	}
	
	public ReviewDTO(ResultSet rs) throws SQLException {
		this.rev_seq = rs.getInt("rev_seq");
		this.rest_seq = rs.getInt("rest_seq");
		this.rev_content = rs.getString("rev_content");
		this.rev_m_seq = rs.getInt("rev_m_seq");
		this.rev_starpoint = rs.getInt("rev_starpoint");
		this.rest_name = rs.getString("rest_name");
		this.rest_loc = rs.getString("rest_loc");
		this.m_name = rs.getString("m_name");
		this.m_img = rs.getString("m_img");
		this.m_ercnt = rs.getInt("m_ercnt");
		this.m_revcnt = rs.getInt("m_revcnt");
		this.rev_wtime = rs.getDate("rev_wtime");
	}
	
	
	public String getRest_name() {
		return rest_name;
	}
	public void setRest_name(String rest_name) {
		this.rest_name = rest_name;
	}
	public String getRest_loc() {
		return rest_loc;
	}
	public void setRest_loc(String rest_loc) {
		this.rest_loc = rest_loc;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getM_ercnt() {
		return m_ercnt;
	}
	public void setM_ercnt(int m_ercnt) {
		this.m_ercnt = m_ercnt;
	}
	public int getRev_seq() {
		return rev_seq;
	}
	public void setRev_seq(int rev_seq) {
		this.rev_seq = rev_seq;
	}
	public int getRest_seq() {
		return rest_seq;
	}
	public void setRest_seq(int rest_seq) {
		this.rest_seq = rest_seq;
	}
	public Date getRev_wtime() {
		return rev_wtime;
	}
	public void setRev_wtime(Date rev_wtime) {
		this.rev_wtime = rev_wtime;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public int getRev_m_seq() {
		return rev_m_seq;
	}
	public void setRev_m_seq(int rev_m_seq) {
		this.rev_m_seq = rev_m_seq;
	}
	public int getRev_starpoint() {
		return rev_starpoint;
	}
	public void setRev_starpoint(int rev_starpoint) {
		this.rev_starpoint = rev_starpoint;
	}
	public int getM_revcnt() {
		return m_revcnt;
	}
	public void setM_revcnt(int m_revcnt) {
		this.m_revcnt = m_revcnt;
	}
	public String getM_img() {
		return m_img;
	}
	public void setM_img(String m_img) {
		this.m_img = m_img;
	}
	
}