package www.egg.vo;

public class PaymentVO {

	private Integer no =0;          // ������ȣ
	private Integer num =0;         // �ֹ���ȣ
	private String id = null;       // ȸ�� id
	private int price = 0;          // �ֹ��ݾ�
	private int tip = 0;            // ��޺�
	private int total = 0;          // �Ѱ����ݾ�
	private int point = 0;          // ����Ʈ
	private String pay = null;      // ��������
	private String card = null;     // ��������
	private int in_date = 0;        // �ֹ��Ͻ�
	private String address = null;  // ����ּ�
	private String pick = null;     // ���ɹ��
	private String comment = null;  // ��û����
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTip() {
		return tip;
	}
	public void setTip(int tip) {
		this.tip = tip;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public int getIn_date() {
		return in_date;
	}
	public void setIn_date(int in_date) {
		this.in_date = in_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPick() {
		return pick;
	}
	public void setPick(String pick) {
		this.pick = pick;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	@Override
	public String toString() {
		return "PaymentVO [no=" + no + ", num=" + num + ", id=" + id + ", price=" + price + ", tip=" + tip + ", total="
				+ total + ", point=" + point + ", pay=" + pay + ", card=" + card + ", in_date=" + in_date + ", address="
				+ address + ", pick=" + pick + ", comment=" + comment + "]";
	}
	
	
	
}