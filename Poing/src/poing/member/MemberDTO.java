package poing.member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberDTO {
	private int m_no; /* 회원번호 */
	private String m_name; /* 회원이름 */
	private String m_tel; /* 전화번호 */
	private String m_birth; /* 생일 */
	private int m_gen; /* 성별 */
	private int m_level; /* 레벨 */
	private String m_selfintro; /* 자기소개 */
	private String m_email; /* 이메일 */
	private String m_pw; /* 비밀번호 */
	private String m_nickname; /* 예약자명 */
	private String m_img; /* 프로필이미지 */
	private int rp_seq; /* 레드포인트seq */
	
	
	
	public int getM_no() {
		return m_no;
	}



	public void setM_no(int m_no) {
		this.m_no = m_no;
	}



	public String getM_name() {
		return m_name;
	}



	public void setM_name(String m_name) {
		this.m_name = m_name;
	}



	public String getM_tel() {
		return m_tel;
	}



	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}



	public String getM_birth() {
		return m_birth;
	}



	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}



	public int getM_gen() {
		return m_gen;
	}



	public void setM_gen(int m_gen) {
		this.m_gen = m_gen;
	}



	public String getM_selfintro() {
		return m_selfintro;
	}



	public void setM_selfintro(String m_selfintro) {
		this.m_selfintro = m_selfintro;
	}



	public String getM_email() {
		return m_email;
	}



	public void setM_email(String m_email) {
		this.m_email = m_email;
	}



	public String getM_pw() {
		return m_pw;
	}



	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}



	public String getM_nickname() {
		return m_nickname;
	}



	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}



	public String getM_img() {
		return m_img;
	}



	public void setM_img(String m_img) {
		this.m_img = m_img;
	}



	public int getRp_seq() {
		return rp_seq;
	}



	public void setRp_seq(int rp_seq) {
		this.rp_seq = rp_seq;
	}



	public int getM_level() {
		return m_level;
	}



	public void setM_level(int m_level) {
		this.m_level = m_level;
	}


	@Override
	public String toString() {
		return "MemberDTO [m_no=" + m_no + ", m_name=" + m_name + ", m_tel=" + m_tel + ", m_birth=" + m_birth
				+ ", m_gen=" + m_gen + ", mlevel=" + m_level + ", m_selfintro=" + m_selfintro + ", m_email=" + m_email
				+ ", m_pw=" + m_pw + ", m_nickname=" + m_nickname + ", m_img=" + m_img + ", rp_seq=" + rp_seq + "]";
	}



	public MemberDTO(ResultSet rs) throws SQLException {
		this.m_no = rs.getInt("m_no");
		this.m_name = rs.getString("m_name");
		this.m_tel = rs.getString("m_tel");
		SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
		this.m_birth = sdf.format(rs.getDate("m_birth"));
		this.m_gen = rs.getInt("m_gen");
		this.m_level = rs.getInt("m_level");
		this.m_selfintro = rs.getString("m_selfintro");
		if(this.m_selfintro == null) {
			this.m_selfintro = "소개가 없습니다.";
		}
		this.m_email = rs.getString("m_email");
		this.m_pw = rs.getString("m_pw");
		this.m_nickname = rs.getString("m_nickname");
		this.m_img = rs.getString("m_img");
		if(this.m_img == null) {
			this.m_img = "http://c1.poing.co.kr/original/images/user/user_base.png";
		}
		this.rp_seq = rs.getInt("rp_seq");
	}
	

	public MemberDTO() {
		this.m_no = 0;
		this.m_name = null;
		this.m_tel = null;
		this.m_birth = null;
		this.m_gen = -1;
		this.m_level = 1;
		this.m_selfintro = null;
		this.m_email = null;
		this.m_pw = null;
		this.m_nickname = null;
		this.m_img = null;
		this.rp_seq = 0;
	}



	public boolean checkPassword(String password) {
		return this.m_pw.equals(password);
	}


}
