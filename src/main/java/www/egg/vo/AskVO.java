package www.egg.vo;

public class AskVO {

	private Integer num = 0;
	private String id = null;
	private String title = null;
	private String ex = null;
	private String check = null;
	private int in_date = 0;
	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEx() {
		return ex;
	}
	public void setEx(String ex) {
		this.ex = ex;
	}
	public String getCheck() {
		return check;
	}
	public void setCheck(String check) {
		this.check = check;
	}
	public int getIn_date() {
		return in_date;
	}
	public void setIn_date(int in_date) {
		this.in_date = in_date;
	}
	
	@Override
	public String toString() {
		return "InfoVO [num=" + num + ", id=" + id + ", title=" + title + ", ex=" + ex + ", check=" + check
				+ ", in_date=" + in_date + "]";
	}
	
}
