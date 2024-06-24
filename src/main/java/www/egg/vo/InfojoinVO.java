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
	
}
