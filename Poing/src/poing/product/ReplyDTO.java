package poing.product;

public class ReplyDTO {
	private int reply_seq;
	private String reply_ctime;
	private String reply_content;
	private int admin_seq;
	
	public int getReply_seq() {
		return reply_seq;
	}
	public void setReply_seq(int reply_seq) {
		this.reply_seq = reply_seq;
	}
	public String getReply_ctime() {
		return reply_ctime;
	}
	public void setReply_ctime(String reply_ctime) {
		this.reply_ctime = reply_ctime;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public int getAdmin_seq() {
		return admin_seq;
	}
	public void setAdmin_seq(int admin_seq) {
		this.admin_seq = admin_seq;
	}
	
		
	
}
