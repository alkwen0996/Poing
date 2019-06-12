package admin.review;

import java.sql.ResultSet;
import java.sql.SQLException;

public class EditerReviewDTO {
	private int er_seq;
	private int e_seq;
	private String er_content;
	private int rest_seq;
	public int getEr_seq() {
		return er_seq;
	}
	public void setEr_seq(int er_seq) {
		this.er_seq = er_seq;
	}
	public int getE_seq() {
		return e_seq;
	}
	public void setE_seq(int e_seq) {
		this.e_seq = e_seq;
	}
	public String getEr_content() {
		return er_content;
	}
	public void setEr_content(String er_content) {
		this.er_content = er_content;
	}
	public int getRest_seq() {
		return rest_seq;
	}
	public void setRest_seq(int rest_seq) {
		this.rest_seq = rest_seq;
	}
	public EditerReviewDTO(ResultSet rs) throws SQLException {
		this.er_seq = rs.getInt("er_seq");
		this.e_seq = rs.getInt("e_seq");
		this.er_content = rs.getString("er_content");
		this.rest_seq = rs.getInt("rest_seq");
	}
	
}
