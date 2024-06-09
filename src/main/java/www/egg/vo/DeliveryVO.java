package www.egg.vo;

public class DeliveryVO {

	private int no =0;
	private int num =0;
	private String time=null;
	private String check =null;
	
	@Override
	public String toString() {
		return "DeliveryVO [no=" + no + ", num=" + num + ", time=" + time + ", check=" + check + "]";
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
}
