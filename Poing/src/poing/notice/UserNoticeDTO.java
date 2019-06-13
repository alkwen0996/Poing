package poing.notice;

public class UserNoticeDTO {
	
	private int un_seq; // 소식 일련번호
	private int un_is_read;
	private int un_is_count;
	private int un_is_poing;
	private int un_is_block_on_user;
	private int un_additional;
	private String un_ctime;
	private String un_utime;
	private String un_img_original;
	private String un_img_thumnail;
	private int nt_seq; // 알림 타입 코드번호.
	private int un_m_seq; // 로그인해있는 회원코드
	private String un_m_name; // 로그인 해 있는 회원 이름.(조인으로)
	private String nt_pushtype; // 해당 알림에서 무엇을 했는지 ex)comment_reivew
	private String nt_typecontent; // 해당 알림의 내용
	private String nt_target; // 어떤종류의 알림인지 ex)reivew
	private int nt_tic_seq; // target의 코드번호.
	private int nt_m_seq; //누가 했는지 (고지용이 했으면) 고지용 의 회원번호
	private String nt_m_name; //누가 했는지 (고지용이 했으면) 회원 이름.
	private int rc_seq;
	private int follow_seq; // 팔로 코드번호
	private int follower_seq; // 누가 팔로워 했는지.
	private String follower_name; // 누가 팔로워했는지 이름.
	private int reply_seq;
	private int rl_seq;
	private String rl_name; // 리뷰를 좋아요 한사람 이름
	private int pick_seq;
	private String pick_name; // 찜 한사람의 이름.
	private int r_reserve_seq; // 예약 테이블에서 예약 번호.
	private String rest_name; // 레스토랑 테이블에서 레스토랑 이름.
	private int tic_purchase_seq; // tic_cart_purchase_detail에서
	private String tic_purchas_state; // 티켓구매상태(결제완료/환불완료)
	private String tic_name; // ticket 테이블에서 
	private int tic_cart_seq;
	private int tic_num_of_people;
	private String tic_reserve_date;
	
	public int getUn_seq() {
		return un_seq;
	}
	public void setUn_seq(int un_seq) {
		this.un_seq = un_seq;
	}
	public int getUn_m_seq() {
		return un_m_seq;
	}
	public void setUn_m_seq(int un_m_seq) {
		this.un_m_seq = un_m_seq;
	}
	public String getUn_m_name() {
		return un_m_name;
	}
	public void setUn_m_name(String un_m_name) {
		this.un_m_name = un_m_name;
	}
	public int getUn_is_read() {
		return un_is_read;
	}
	public void setUn_is_read(int un_is_read) {
		this.un_is_read = un_is_read;
	}
	public int getUn_is_count() {
		return un_is_count;
	}
	public void setUn_is_count(int un_is_count) {
		this.un_is_count = un_is_count;
	}
	public int getUn_is_poing() {
		return un_is_poing;
	}
	public void setUn_is_poing(int un_is_poing) {
		this.un_is_poing = un_is_poing;
	}
	public int getUn_is_block_on_user() {
		return un_is_block_on_user;
	}
	public void setUn_is_block_on_user(int un_is_block_on_user) {
		this.un_is_block_on_user = un_is_block_on_user;
	}
	public int getUn_additional() {
		return un_additional;
	}
	public void setUn_additional(int un_additional) {
		this.un_additional = un_additional;
	}
	public String getUn_ctime() {
		return un_ctime;
	}
	public void setUn_ctime(String un_ctime) {
		this.un_ctime = un_ctime;
	}
	public String getUn_utime() {
		return un_utime;
	}
	public void setUn_utime(String un_utime) {
		this.un_utime = un_utime;
	}
	public String getUn_img_original() {
		return un_img_original;
	}
	public void setUn_img_original(String un_img_original) {
		this.un_img_original = un_img_original;
	}
	public String getUn_img_thumnail() {
		return un_img_thumnail;
	}
	public void setUn_img_thumnail(String un_img_thumnail) {
		this.un_img_thumnail = un_img_thumnail;
	}
	public int getNt_seq() {
		return nt_seq;
	}
	public void setNt_seq(int nt_seq) {
		this.nt_seq = nt_seq;
	}
	public String getNt_pushtype() {
		return nt_pushtype;
	}
	public void setNt_pushtype(String nt_pushtype) {
		this.nt_pushtype = nt_pushtype;
	}
	public String getNt_typecontent() {
		return nt_typecontent;
	}
	public void setNt_typecontent(String nt_typecontent) {
		this.nt_typecontent = nt_typecontent;
	}
	public String getNt_target() {
		return nt_target;
	}
	public void setNt_target(String nt_target) {
		this.nt_target = nt_target;
	}
	public int getNt_m_seq() {
		return nt_m_seq;
	}
	public void setNt_m_seq(int nt_m_seq) {
		this.nt_m_seq = nt_m_seq;
	}
	public String getNt_m_name() {
		return nt_m_name;
	}
	public void setNt_m_name(String nt_m_name) {
		this.nt_m_name = nt_m_name;
	}
	public int getNt_tic_seq() {
		return nt_tic_seq;
	}
	public void setNt_tic_seq(int nt_tic_seq) {
		this.nt_tic_seq = nt_tic_seq;
	}
	public int getRc_seq() {
		return rc_seq;
	}
	public void setRc_seq(int rc_seq) {
		this.rc_seq = rc_seq;
	}
	public int getFollow_seq() {
		return follow_seq;
	}
	public void setFollow_seq(int follow_seq) {
		this.follow_seq = follow_seq;
	}
	public int getReply_seq() {
		return reply_seq;
	}
	public void setReply_seq(int reply_seq) {
		this.reply_seq = reply_seq;
	}
	public int getRl_seq() {
		return rl_seq;
	}
	public void setRl_seq(int rl_seq) {
		this.rl_seq = rl_seq;
	}
	public int getPick_seq() {
		return pick_seq;
	}
	public void setPick_seq(int pick_seq) {
		this.pick_seq = pick_seq;
	}
	public int getR_reserve_seq() {
		return r_reserve_seq;
	}
	public void setR_reserve_seq(int r_reserve_seq) {
		this.r_reserve_seq = r_reserve_seq;
	}
	public int getTic_purchase_seq() {
		return tic_purchase_seq;
	}
	public void setTic_purchase_seq(int tic_purchase_seq) {
		this.tic_purchase_seq = tic_purchase_seq;
	}
	public int getFollower_seq() {
		return follower_seq;
	}
	public void setFollower_seq(int follower_seq) {
		this.follower_seq = follower_seq;
	}
	public String getFollower_name() {
		return follower_name;
	}
	public void setFollower_name(String follower_name) {
		this.follower_name = follower_name;
	}
	public String getRl_name() {
		return rl_name;
	}
	public void setRl_name(String rl_name) {
		this.rl_name = rl_name;
	}
	public String getPick_name() {
		return pick_name;
	}
	public void setPick_name(String pick_name) {
		this.pick_name = pick_name;
	}
	public String getRest_name() {
		return rest_name;
	}
	public void setRest_name(String rest_name) {
		this.rest_name = rest_name;
	}
	public String getTic_purchas_state() {
		return tic_purchas_state;
	}
	public void setTic_purchas_state(String tic_purchas_state) {
		this.tic_purchas_state = tic_purchas_state;
	}
	public String getTic_name() {
		return tic_name;
	}
	public void setTic_name(String tic_name) {
		this.tic_name = tic_name;
	}
	public int getTic_cart_seq() {
		return tic_cart_seq;
	}
	public void setTic_cart_seq(int tic_cart_seq) {
		this.tic_cart_seq = tic_cart_seq;
	}
	public int getTic_num_of_people() {
		return tic_num_of_people;
	}
	public void setTic_num_of_people(int tic_num_of_people) {
		this.tic_num_of_people = tic_num_of_people;
	}
	public String getTic_reserve_date() {
		return tic_reserve_date;
	}
	public void setTic_reserve_date(String tic_reserve_date) {
		this.tic_reserve_date = tic_reserve_date;
	}

	
}
