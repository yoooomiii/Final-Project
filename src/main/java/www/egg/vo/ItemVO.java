package www.egg.vo;

public class ItemVO {
	
	private int num = 0;
	private int no = 0;
	private String code =null;
	private String scode =null;
	private int count =0;
	private int price =0;
	
	@Override
	public String toString() {
		return "ItemVO [num=" + num + ", no=" + no + ", code=" + code + ", scode=" + scode + ", count=" + count
				+ ", price=" + price + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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
