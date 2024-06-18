package www.egg.vo;

public class ItemVO {
	
	private Integer i_num = 0;     // 아이템 번호
	private Integer i_no = 0;      // 결제 번호
	private String i_code =null;   // 메인메뉴 코드
	private String i_scode =null;  // 사이드메뉴 코드
	private int i_count =0;        // 메뉴 수량
	private int i_price =0;        // 메뉴 주문 금액
	
	@Override
	public String toString() {
		return "ItemVO [i_num=" + i_num + ", i_no=" + i_no + ", i_id=" + ", i_code=" + i_code + ", i_scode="
				+ i_scode + ", i_count=" + i_count + ", i_price=" + i_price + "]";
	}
	public Integer getI_num() {
		return i_num;
	}
	public void setI_num(Integer i_num) {
		this.i_num = i_num;
	}
	public Integer getI_no() {
		return i_no;
	}
	public void setI_no(Integer i_no) {
		this.i_no = i_no;
	}
	public String getI_code() {
		return i_code;
	}
	public void setI_code(String i_code) {
		this.i_code = i_code;
	}
	public String getI_scode() {
		return i_scode;
	}
	public void setI_scode(String i_scode) {
		this.i_scode = i_scode;
	}
	public int getI_count() {
		return i_count;
	}
	public void setI_count(int i_count) {
		this.i_count = i_count;
	}
	public int getI_price() {
		return i_price;
	}
	public void setI_price(int i_price) {
		this.i_price = i_price;
	}

}
