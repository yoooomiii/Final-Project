package www.egg.vo;

public class ItemVO {
	
	private Integer num = 0;     // ������ ��ȣ
	private Integer no = 0;      // ��ٱ��� ��ȣ
	private String code =null;   // ���θ޴� �ڵ�
	private String scode =null;  // ���̵�޴��ڵ�
	private int count =0;        // ����
	private int price =0;        // �ֹ��ݾ�
	
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
	
	@Override
	public String toString() {
		return "ItemVO [num=" + num + ", no=" + no + ", code=" + code + ", scode=" + scode + ", count=" + count
				+ ", price=" + price + "]";
	}
	
	

}
