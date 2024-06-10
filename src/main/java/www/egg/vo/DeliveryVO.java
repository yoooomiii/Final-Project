package www.egg.vo;

public class DeliveryVO {

	private Integer no =0;       // 등록번호
	private Integer num =0;      // 주문번호
	private String time=null;    // 예상시간
	private String check =null;  // 배달유무
	
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
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	
	@Override
	public String toString() {
		return "DeliveryVO [no=" + no + ", num=" + num + ", time=" + time + ", check=" + check + "]";
	}
	
	
}
