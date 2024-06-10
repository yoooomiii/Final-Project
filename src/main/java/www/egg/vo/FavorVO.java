package www.egg.vo;

public class FavorVO {

	private Integer num =0;           // 찜번호
	private String id = null;     // 회원id 
	private String code = null;   // 메인메뉴코드
	private String scode = null;  // 사이드메뉴코드
	
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
