package www.egg.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class InfojoinVO {
	
	private AskVO askVO;
	private AnswerVO answerVO;
	
	public AskVO getAskVO() {
		return askVO;
	}
	public void setAskVO(AskVO askVO) {
		this.askVO = askVO;
	}
	public AnswerVO getAnswerVO() {
		return answerVO;
	}
	public void setAnswerVO(AnswerVO answerVO) {
		this.answerVO = answerVO;
	}
	
	/*
	 * public void setA_id(String a_id) { if (this.askVO == null) { this.askVO = new
	 * AskVO(); } this.askVO.setA_id(a_id); }
	 */
	 
	@Override
	public String toString() {
		return "InfojoinVO [askVO=" + askVO + ", answerVO=" + answerVO + "]";
	}
	
	public class AskVO {

		private Integer a_num = 0;
		private String a_id = null;
		private String a_title = null;
		private String a_checkVal = "확인중";
		private Date a_date = new Date(a_num);
		
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
	}
	
	public class AnswerVO {
		
		private Integer an_num = 0;
		private String an_re = null;
		private Date an_date = new Date(an_num);
		
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
	
	}
}
