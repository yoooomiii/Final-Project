package www.egg.vo;

public class MlistVO {
	
	private Integer m_num =0;  
	private Integer m_no=0;
	private String m_id =null;
	private String m_state=null;

	@Override
	public String toString() {
		return "MlistVO [m_num=" + m_num + ", m_no=" + m_no + ", m_id=" + m_id + ", m_state=" + m_state + "]";
	}

	public Integer getM_num() {
		return m_num;
	}

	public void setM_num(Integer m_num) {
		this.m_num = m_num;
	}

	public Integer getM_no() {
		return m_no;
	}

	public void setM_no(Integer m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_state() {
		return m_state;
	}

	public void setM_state(String m_state) {
		this.m_state = m_state;
	}
	
	
}