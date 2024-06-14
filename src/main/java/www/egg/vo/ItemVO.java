package www.egg.vo;

public class ItemVO {
	
	private Integer num = 0;     // 아이템 번호
	private Integer no = 0;      // 결제 번호
	private String id = null;	 // 회원 ID
	private String code =null;   // 메인메뉴 코드
	private String scode =null;  // 사이드메뉴 코드
	private int count =0;        // 메뉴 수량
	private int price =0;        // 메뉴 주문 금액
	
	@Override
	public String toString() {
		return "ItemVO [num=" + num + ", no=" + no + ", id=" + id + ", code=" + code + ", scode=" + scode + ", count="
				+ count + ", price=" + price + "]";
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
