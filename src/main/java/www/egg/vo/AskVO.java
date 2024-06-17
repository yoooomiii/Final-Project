package www.egg.vo;

import java.sql.Date;

public class AskVO {

	private Integer num = 0;
	private String id = null;
	private String title = null;
	private String ex = null;
	private String checkVal = "»Æ¿Œ¡ﬂ";
	private Date in_date ;
	
	@Override
	public String toString() {
		return "AskVO [num=" + num + ", id=" + id + ", title=" + title + ", ex=" + ex + ", checkVal=" + checkVal
				+ ", in_date=" + in_date + "]";
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
	public String getCheckVal() {
		return checkVal;
	}
	public void setCheckVal(String checkVal) {
		this.checkVal = checkVal;
	}
	public Date getIn_date() {
		return in_date;
	}
	public void setIn_date(Date in_date) {
		this.in_date = in_date;
	}
	
	
	
}
