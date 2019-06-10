package poing.notice;

public class UserNoticeDTO {
	
	private int un_id; // 소식 일련번호
	private int un_user_id; // 로그인해있는 회원코드
	private String un_push_type; // 해당 알림에서 무엇을 했는지 ex)comment_reivew
	private int un_target_id; // 리뷰면? 리뷰번호
	private String un_target; // 어떤종류의 알림인지 ex)reivew
	private int un_additional;
	private String un_created_at;
	private String un_img_ori;
	private String m_name; //누가 했는지 (고지용이 했으면)
	private int m_seq; // 고지용 의 회원번호
	private String notice_type_content; // 해당 알림의 내용
	
	
	public int getUn_id() {
		return un_id;
	}
	public void setUn_id(int un_id) {
		this.un_id = un_id;
	}
	public int getUn_user_id() {
		return un_user_id;
	}
	public void setUn_user_id(int un_user_id) {
		this.un_user_id = un_user_id;
	}
	public String getUn_push_type() {
		return un_push_type;
	}
	public void setUn_push_type(String un_push_type) {
		this.un_push_type = un_push_type;
	}
	public int getUn_target_id() {
		return un_target_id;
	}
	public void setUn_target_id(int un_target_id) {
		this.un_target_id = un_target_id;
	}
	public String getUn_target() {
		return un_target;
	}
	public void setUn_target(String un_target) {
		this.un_target = un_target;
	}
	public int getUn_additional() {
		return un_additional;
	}
	public void setUn_additional(int un_additional) {
		this.un_additional = un_additional;
	}
	public String getUn_created_at() {
		return un_created_at;
	}
	public void setUn_created_at(String un_created_at) {
		this.un_created_at = un_created_at;
	}
	public String getUn_img_ori() {
		return un_img_ori;
	}
	public void setUn_img_ori(String un_img_ori) {
		this.un_img_ori = un_img_ori;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getNotice_type_content() {
		return notice_type_content;
	}
	public void setNotice_type_content(String notice_type_content) {
		this.notice_type_content = notice_type_content;
	}
	public int getM_seq() {
		return m_seq;
	}
	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}
	
	
	
}
