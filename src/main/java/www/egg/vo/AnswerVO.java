package www.egg.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class AnswerVO {
	
	private Integer an_num = 0;
	private String an_re = null;
	private Date an_date = new Date(an_num);
	
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String dateString = format.format(an_date);
	
	public Integer getAn_num() {
		return an_num;
	}
	public void setAn_num(Integer an_num) {
		this.an_num = an_num;
	}
	public String getAn_re() {
		return an_re;
	}
	public void setAn_re(String an_re) {
		this.an_re = an_re;
	}
	public Date getAn_date() {
		return an_date;
	}
	public void setAn_date(Date an_date) {
		this.an_date = an_date;
	}
	
	@Override
	public String toString() {
		return "AnswerVO [an_num=" + an_num + ", an_re=" + an_re + ", an_date=" + an_date + ", format=" + format
				+ ", dateString=" + dateString + "]";
	}
	
	
}
