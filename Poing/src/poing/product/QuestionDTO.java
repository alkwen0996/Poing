package poing.product;

public class QuestionDTO {
	
	private int q_seq;
	private int m_no;
	private String q_ctime;
	private String q_content;
	private int tic_seq;
	private String m_name;
	
	public int getQ_seq() {
		return q_seq;
	}
	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
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
	public int getTic_seq() {
		return tic_seq;
	}
	public void setTic_seq(int tic_seq) {
		this.tic_seq = tic_seq;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
}
