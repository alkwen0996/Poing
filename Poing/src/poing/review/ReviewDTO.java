package poing.review;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class ReviewDTO {
	
	private int rev_no;
	private int rest_no;
	private Date rev_wtime;
	private String rev_content;
	private int m_no;
	private int rev_starpoint;
	private String rest_name;
	private String rest_loc;
	private String rest_img;
	private String m_name;
	private String m_img;
	private int m_ercnt;
	private int m_revcnt;
	private int like_cnt;
	private int pick_cnt;
	private boolean amIfollow;
	private boolean amIlike;
	private boolean amIpick;
	private int commend_cnt;
	private CommentDTO cdto;
	private ArrayList<String> images = null;
	
	public ReviewDTO() {
	}
	
	public ReviewDTO(ResultSet rs, int m_no) throws SQLException {
		this.rev_no = rs.getInt("rev_no");
		this.rest_no = rs.getInt("rest_no");
		this.rev_content = rs.getString("rev_content");
		this.m_no = rs.getInt("m_no");
		this.rev_wtime = rs.getDate("rev_wtime");
		this.rev_starpoint = rs.getInt("rev_starpoint");
		this.rest_name = rs.getString("rest_name");
		this.rest_loc = rs.getString("rest_loc");
		this.m_name = rs.getString("m_name");
		this.m_img = rs.getString("m_img");
		this.m_ercnt = rs.getInt("m_ercnt");
		this.m_revcnt = rs.getInt("m_revcnt");
		this.commend_cnt = rs.getInt("commend_cnt");
		this.like_cnt = rs.getInt("like_cnt");
		this.pick_cnt = rs.getInt("pick_cnt");
		
		if(m_no != -1) {
			this.amIfollow = rs.getInt("amIfollow")==1?true:false;
			this.amIlike = rs.getInt("amIlike")==1?true:false;
			this.amIpick = rs.getInt("amIpick")==1?true:false;
		}
	}
	public ReviewDTO(ResultSet rs) throws SQLException {
		this.rev_no = rs.getInt("rev_no");
		this.rest_no = rs.getInt("rest_no");
		this.rev_content = rs.getString("rev_content");
		this.m_no = rs.getInt("m_no");
		this.rev_wtime = rs.getDate("rev_wtime");
		this.rev_starpoint = rs.getInt("rev_starpoint");
		this.rest_name = rs.getString("rest_name");
		this.rest_loc = rs.getString("rest_loc");
		this.m_name = rs.getString("m_name");
		this.m_img = rs.getString("m_img");
		this.m_ercnt = rs.getInt("m_ercnt");
		this.m_revcnt = rs.getInt("m_revcnt");
		this.commend_cnt = rs.getInt("commend_cnt");
		this.amIlike = rs.getInt("amIlike")==1?true:false;
		this.amIpick = rs.getInt("amIpick")==1?true:false;
		this.like_cnt = rs.getInt("like_cnt");
		this.commend_cnt = rs.getInt("commend_cnt");
		this.pick_cnt = rs.getInt("pick_cnt");
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
	public boolean isAmIfollow() {
		return amIfollow;
	}
	public void setAmIfollow(boolean amIfollow) {
		this.amIfollow = amIfollow;
	}
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public boolean isAmIlike() {
		return amIlike;
	}
	public void setAmIlike(boolean amIlike) {
		this.amIlike = amIlike;
	}
	public int getCommend_cnt() {
		return commend_cnt;
	}
	public void setCommend_cnt(int commend_cnt) {
		this.commend_cnt = commend_cnt;
	}
	public CommentDTO getCdto() {
		return cdto;
	}
	public void setCdto(CommentDTO cdto) {
		this.cdto = cdto;
	}

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}

	public int getRest_no() {
		return rest_no;
	}

	public void setRest_no(int rest_no) {
		this.rest_no = rest_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public ArrayList<String> getImages() {
		return images;
	}

	public void setImages(ArrayList<String> images) {
		this.images = images;
	}

	public int getPick_cnt() {
		return pick_cnt;
	}

	public void setPick_cnt(int pick_cnt) {
		this.pick_cnt = pick_cnt;
	}

	public boolean isAmIpick() {
		return amIpick;
	}

	public void setAmIpick(boolean amIpick) {
		this.amIpick = amIpick;
	}
	
}