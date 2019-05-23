package poing.review;


public class ReviewDTO {
	private int rev_no;
	private int rest_no;
	private String rev_wtime;
	private String rev_content;
	private int rev_like_cnt;
	private int rev_select_cnt;
	private int rev_comm_cnt;
	private int m_no;
	private int se_seq;

	public ReviewDTO() {}

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

	public String getRev_wtime() {
		return rev_wtime;
	}

	public void setRev_wtime(String rev_wtime) {
		this.rev_wtime = rev_wtime;
	}

	public String getRev_content() {
		return rev_content;
	}

	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}

	public int getRev_like_cnt() {
		return rev_like_cnt;
	}

	public void setRev_like_cnt(int rev_like_cnt) {
		this.rev_like_cnt = rev_like_cnt;
	}

	public int getRev_select_cnt() {
		return rev_select_cnt;
	}

	public void setRev_select_cnt(int rev_select_cnt) {
		this.rev_select_cnt = rev_select_cnt;
	}

	public int getRev_comm_cnt() {
		return rev_comm_cnt;
	}

	public void setRev_comm_cnt(int rev_comm_cnt) {
		this.rev_comm_cnt = rev_comm_cnt;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getSe_seq() {
		return se_seq;
	}

	public void setSe_seq(int se_seq) {
		this.se_seq = se_seq;
	}


}
