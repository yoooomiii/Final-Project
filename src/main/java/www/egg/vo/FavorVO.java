package www.egg.vo;

public class FavorVO {

	private int num =0;
	private String id = null;
	private String code = null;
	private String scode = null;
	
	@Override
	public String toString() {
		return "FavorVO [num=" + num + ", id=" + id + ", code=" + code + ", scode=" + scode + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
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
	
}
