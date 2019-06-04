package poing.news_notice;

import java.sql.Date;

public class NewsDTO {
	
	private int news_no;
	private int news_m_no; // 누가 했는지
	private String news_m_name; // 상대방 이름.
	private Date news_wtime;
	private String news_img;
	private String news_content;
	
	public String getNews_m_name() {
		return news_m_name;
	}
	public void setNews_m_name(String news_m_name) {
		this.news_m_name = news_m_name;
	}
	public int getNews_no() {
		return news_no;
	}
	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public Date getNews_wtime() {
		return news_wtime;
	}
	public void setNews_wtime(Date news_wtime) {
		this.news_wtime = news_wtime;
	}
	public String getNews_img() {
		return news_img;
	}
	public void setNews_img(String news_img) {
		this.news_img = news_img;
	}
	public int getNews_m_no() {
		return news_m_no;
	}
	public void setNews_m_no(int news_m_no) {
		this.news_m_no = news_m_no;
	}
	
	
}
