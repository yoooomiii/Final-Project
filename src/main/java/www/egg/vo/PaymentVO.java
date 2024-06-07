package www.egg.vo;

public class PaymentVO {

	private int no =0;
	private int num =0;
	private String code =null;
	private String scode=null;
	private String pick =null;
	private int tip = 0;
	private int point = 0;
	private String pay = null;
	private String card = null;
	private int in_date = 0;
	private String address = null;
	
	@Override
	public String toString() {
		return "PaymentVO [no=" + no + ", num=" + num + ", code=" + code + ", scode=" + scode + ", pick=" + pick
				+ ", tip=" + tip + ", point=" + point + ", pay=" + pay + ", card=" + card + ", in_date=" + in_date
				+ ", address=" + address + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
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

	public String getPick() {
		return pick;
	}

	public void setPick(String pick) {
		this.pick = pick;
	}

	public int getTip() {
		return tip;
	}

	public void setTip(int tip) {
		this.tip = tip;
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
}

