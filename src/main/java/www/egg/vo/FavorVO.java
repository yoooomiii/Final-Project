package www.egg.vo;

public class FavorVO {

	private Integer num =0;           // ���ȣ
	private String id = null;     // ȸ��id 
	private String code = null;   // ���θ޴��ڵ�
	private String scode = null;  // ���̵�޴��ڵ�
	
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
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getScode() {
		return scode;
	}
	public void setScode(String scode) {
		this.scode = scode;
	}
	
	@Override
	public String toString() {
		return "FavorVO [num=" + num + ", id=" + id + ", code=" + code + ", scode=" + scode + "]";
	}
	
	
}
