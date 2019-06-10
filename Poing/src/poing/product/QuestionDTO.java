package poing.product;

public class QuestionDTO {
	private int q_seq;
	private int q_m_no;
	private String q_ctime;
	private String q_content;
	private int q_tic_seq;
	private String q_m_name;
	private int q_reply_seq;
	
	public int getQ_reply_seq() {
		return q_reply_seq;
	}
	public void setQ_reply_seq(int q_reply_seq) {
		this.q_reply_seq = q_reply_seq;
	}
	public int getQ_seq() {
		return q_seq;
	}
	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}
	public int getQ_m_no() {
		return q_m_no;
	}
	public void setQ_m_no(int q_m_no) {
		this.q_m_no = q_m_no;
	}
	public String getQ_ctime() {
		return q_ctime;
	}
	public void setQ_ctime(String q_ctime) {
		this.q_ctime = q_ctime;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public int getQ_tic_seq() {
		return q_tic_seq;
	}
	public void setQ_tic_seq(int q_tic_seq) {
		this.q_tic_seq = q_tic_seq;
	}
	public String getQ_m_name() {
		return q_m_name;
	}
	public void setQ_m_name(String q_m_name) {
		this.q_m_name = q_m_name;
	}
	
	
}
