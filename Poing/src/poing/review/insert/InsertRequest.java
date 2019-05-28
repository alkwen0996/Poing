package poing.review.insert;

public class InsertRequest {
	
	private int rev_seq;
	private int rest_seq;
	private String rev_content;
	private int rev_m_seq;
	private float rev_starpoint;

//	private String rev_img;
	public int getRev_seq() {
		return rev_seq;
	}
	public void setRev_seq(int rev_seq) {
		this.rev_seq = rev_seq;
	}
	public int getRest_seq() {
		return rest_seq;
	}
	public void setRest_seq(int rest_seq) {
		this.rest_seq = rest_seq;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public int getRev_m_seq() {
		return rev_m_seq;
	}
	public void setRev_m_seq(int rev_m_seq) {
		this.rev_m_seq = rev_m_seq;
	}

	public float getRev_starpoint() {
		return rev_starpoint;
	}
	public void setRev_starpoint(float rev_starpoint) {
		this.rev_starpoint = rev_starpoint;
	}

	
}
