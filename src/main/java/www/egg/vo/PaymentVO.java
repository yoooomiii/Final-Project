package www.egg.vo;

public class PaymentVO {

	private Integer no =0;          // 결제번호
	private Integer num =0;         // 주문번호
	private String id = null;       // 회원 id
	private int price = 0;          // 주문금액
	private int tip = 0;            // 배달비
	private int total = 0;          // 총결제금액
	private int point = 0;          // 포인트
	private String pay = null;      // 결제수단
	private String card = null;     // 결제정보
	private int in_date = 0;        // 주문일시
	private String address = null;  // 배달주소
	private String pick = null;     // 수령방법
	private String comment = null;  // 요청사항
	
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