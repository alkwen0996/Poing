package poing.member;

import java.util.Date;

public class MemberDTO {

	private int m_no; /* 회원번호 */
	private String m_name; /* 회원이름 */
	private String m_tel; /* 전화번호 */
	private Date m_birth; /* 생일 */
	private int m_gen; /* 성별 */
	private String m_email; /* 이메일 */
	private int m_level; /* 레벨 */
	private String m_selfintro; /* 자기소개 */
	private String m_id; /* 아이디 */
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


	public Date getM_birth() {
		return m_birth;
	}


	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}


	public int getM_gen() {
		return m_gen;
	}


	public void setM_gen(int m_gen) {
		this.m_gen = m_gen;
	}


	public String getM_email() {
		return m_email;
	}


	public void setM_email(String m_email) {
		this.m_email = m_email;
	}


	public int getM_level() {
		return m_level;
	}


	public void setM_level(int m_level) {
		this.m_level = m_level;
	}


	public String getM_selfintro() {
		return m_selfintro;
	}


	public void setM_selfintro(String m_selfintro) {
		this.m_selfintro = m_selfintro;
	}


	public String getM_id() {
		return m_id;
	}


	public void setM_id(String m_id) {
		this.m_id = m_id;
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


	public MemberDTO() {
		this.m_no = 0;
		this.m_name = null;
		this.m_tel = null;
		this.m_birth = null;
		this.m_gen = 0;
		this.m_email = null;
		this.m_level = 0;
		this.m_selfintro = null;
		this.m_id = null;
		this.m_pw = null;
		this.m_nickname = null;
		this.m_img = null;
		this.rp_seq = 0;
	}


	public boolean checkPassword(String password) {
		return this.m_pw.equals(password);
	}

}
