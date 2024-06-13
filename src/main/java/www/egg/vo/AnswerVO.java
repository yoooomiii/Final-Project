package www.egg.vo;

public class AnswerVO {
	private Integer num = 0;
	private String re = null;
	private int in_date = 0;
	
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getRe() {
		return re;
	}
	public void setRe(String re) {
		this.re = re;
	}
	public int getIn_date() {
		return in_date;
	}
	public void setIn_date(int in_date) {
		this.in_date = in_date;
	}
	
	@Override
	public String toString() {
		return "AnswerVO [num=" + num + ", re=" + re + ", in_date=" + in_date + "]";
	}
	
}
