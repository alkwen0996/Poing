package poing.review.insert;

public class Article {
	private int rev_seq;
	private int rest_seq;
	private String rev_wtime;
	private String rev_content;
	private int rev_like_cnt;
	private int rev_comm_cnt;
	private int rev_select_cnt;
	private int rev_m_seq;
	private int rev_se_seq;
	private float rev_starpoint;
	
	public Article(int rev_seq, int rest_seq, String rev_wtime, String rev_content, int rev_like_cnt,
			int rev_select_cnt,int rev_comm_cnt,
			int rev_m_seq, int rev_se_seq, float rev_starpoint) {
		super();
		this.rev_seq = rev_seq;
		this.rest_seq = rest_seq;
		this.rev_wtime = rev_wtime;
		this.rev_content = rev_content;
		this.rev_like_cnt = rev_like_cnt;
		this.rev_select_cnt = rev_select_cnt;
		this.rev_comm_cnt = rev_comm_cnt;
		this.rev_m_seq = rev_m_seq;
		this.rev_se_seq = rev_se_seq;
		this.rev_starpoint = rev_starpoint;
	}

	public int getRev_seq() {
		return rev_seq;
	}

	public int getRest_seq() {
		return rest_seq;
	}

	public String getRev_wtime() {
		return rev_wtime;
	}

	public String getRev_content() {
		return rev_content;
	}

	public int getRev_like_cnt() {
		return rev_like_cnt;
	}
	
	public int getRev_select_cnt() {
		return rev_select_cnt;
	}

	public int getRev_comm_cnt() {
		return rev_comm_cnt;
	}

	public int getRev_m_seq() {
		return rev_m_seq;
	}

	public int getRev_se_seq() {
		return rev_se_seq;
	}

	public float getRev_starpoint() {
		return rev_starpoint;
	}

	public String getRev_line_exp() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
}
