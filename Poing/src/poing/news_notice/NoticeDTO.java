package poing.news_notice;

import java.sql.Date;

public class NoticeDTO {
	private int notice_no;
	private int notice_m_no;
	private int notice_m_name;
	private Date notice_wtime;
	private String notice_img;
	private 	String notice_content;
	private int notice_type;
	// notice 타입에 따라서 ticket/레스토랑/예약정보에 대한 정보 필요.
	
	public int getNotice_no() {
		return notice_no;
	}
	public int getNotice_m_name() {
		return notice_m_name;
	}
	public void setNotice_m_name(int notice_m_name) {
		this.notice_m_name = notice_m_name;
	}
	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_wtime() {
		return notice_wtime;
	}
	public void setNotice_wtime(Date notice_wtime) {
		this.notice_wtime = notice_wtime;
	}
	public String getNotice_img() {
		return notice_img;
	}
	public void setNotice_img(String notice_img) {
		this.notice_img = notice_img;
	}
	public int getNotice_type() {
		return notice_type;
	}
	public void setNotice_type(int notice_type) {
		this.notice_type = notice_type;
	}
	public int getNotice_m_no() {
		return notice_m_no;
	}
	public void setNotice_m_no(int notice_m_no) {
		this.notice_m_no = notice_m_no;
	}
	
	
}
