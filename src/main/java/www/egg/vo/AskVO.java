package www.egg.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.format.annotation.DateTimeFormat;

public class AskVO {

	private Integer a_num = 0;
	private String a_id = null;
	private String a_title = null;
	private String a_ex = null;
	private String a_checkVal = "확인중";
	private Date a_date = new Date(a_num);
	
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString = format.format(a_date);
	
	public Integer getA_num() {
		return a_num;
	}
	public void setA_num(Integer a_num) {
		this.a_num = a_num;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_ex() {
		return a_ex;
	}
	public void setA_ex(String a_ex) {
		this.a_ex = a_ex;
	}
	public String getA_checkVal() {
		return a_checkVal;
	}
	public void setA_checkVal(String a_checkVal) {
		this.a_checkVal = a_checkVal;
	}
	public Date getA_date() {
		return a_date;
	}
	public void setA_date(Date a_date) {
		this.a_date = a_date;
	}
	
	@Override
	public String toString() {
		return "AskVO [a_num=" + a_num + ", a_id=" + a_id + ", a_title=" + a_title + ", a_ex=" + a_ex + ", a_checkVal="
				+ a_checkVal + ", a_date=" + a_date + "]";
	}
	
		
	
}
