package poing.product;

public class OptionDTO {
	
	private int op_seq;
	private int p_num;
	private String op_name;
	private int op_price;
	private int op_min_cnt;
	private int op_max_cnt;
	
	public int getOp_seq() {
		return op_seq;
	}
	public void setOp_seq(int op_seq) {
		this.op_seq = op_seq;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getOp_name() {
		return op_name;
	}
	public void setOp_name(String op_name) {
		this.op_name = op_name;
	}
	public int getOp_price() {
		return op_price;
	}
	public void setOp_price(int op_price) {
		this.op_price = op_price;
	}
	public int getOp_min_cnt() {
		return op_min_cnt;
	}
	public void setOp_min_cnt(int op_min_cnt) {
		this.op_min_cnt = op_min_cnt;
	}
	public int getOp_max_cnt() {
		return op_max_cnt;
	}
	public void setOp_max_cnt(int op_max_cnt) {
		this.op_max_cnt = op_max_cnt;
	}
}
