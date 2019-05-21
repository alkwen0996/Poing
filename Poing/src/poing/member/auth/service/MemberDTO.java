package poing.member.auth.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class MemberDTO {
	private int id;
	private String password;
	private String name;
	private String phone;
	private Date birth;
	private int point;
	private String info;
	private int level;
	private int reviewCnt;
	private int likeRestCnt;
	private int flowerCnt;
	private String image;
	
	private int bascketCnt;
	private int noticeCnt;
	
	
	
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", birth="
				+ birth + ", point=" + point + ", info=" + info + ", level=" + level + ", reviewCnt=" + reviewCnt
				+ ", likeRestCnt=" + likeRestCnt + ", flowerCnt=" + flowerCnt + ", image=" + image + ", bascketCnt="
				+ bascketCnt + ", noticeCnt=" + noticeCnt + "]";
	}

	public MemberDTO() {
		this.id = 0;
		this.name = null;
		this.point = 0;
		this.info = null;
		this.level = 0;
		this.reviewCnt = 0;
		this.likeRestCnt = 0;
		this.flowerCnt = 0;
		this.bascketCnt = 0;
		this.noticeCnt = 0;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getReviewCnt() {
		return reviewCnt;
	}
	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	public int getLikeRestCnt() {
		return likeRestCnt;
	}
	public void setLikeRestCnt(int likeRestCnt) {
		this.likeRestCnt = likeRestCnt;
	}
	public int getFlowerCnt() {
		return flowerCnt;
	}
	public void setFlowerCnt(int flowerCnt) {
		this.flowerCnt = flowerCnt;
	}

	public int getBascketCnt() {
		return bascketCnt;
	}

	public void setBascketCnt(int bascketCnt) {
		this.bascketCnt = bascketCnt;
	}

	public int getNoticeCnt() {
		return noticeCnt;
	}

	public void setNoticeCnt(int noticeCnt) {
		this.noticeCnt = noticeCnt;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void convert(ResultSet rs) throws SQLException {
		this.id = rs.getInt("id");
		this.name = rs.getString("name");
		this.point = rs.getInt("point");
		this.info = rs.getString("info");
		this.level = rs.getInt("level");
		this.reviewCnt = rs.getInt("reviewCnt");
		this.likeRestCnt = rs.getInt("likeRestCnt");
		this.flowerCnt = rs.getInt("flowerCnt");
		this.bascketCnt = rs.getInt("bascketCnt");
		this.noticeCnt = rs.getInt("noticeCnt");
	}

	public boolean checkPassword(String password) {
		return this.password.equals(password);
	}

}
