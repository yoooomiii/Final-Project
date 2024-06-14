package www.egg.vo;

public class OptionVO {		
	
	private String side_code = null;	// 사이드 음식 고유코드
	private int side_no = 0;				// 사이드 음식 등록 순서(PK)
	private String side_name = null;		// 사이드 음식 이름
	private int side_price = 0;			// 사이드 음식 가격
	private String side_ex = null;		// 사이드 음식 설명
	private String[] filename = null;	//음식 사진
	
	@Override
	public String toString() {
		return "OptionVO [side_code=" + side_code + ", side_no=" + side_no + ", side_name=" + side_name
				+ ", side_price=" + side_price + ", side_ex=" + side_ex + "]";
	}
	public String getSide_code() {
		return side_code;
	}
	public void setSide_code(String side_code) {
		this.side_code = side_code;
	}
	public int getSide_no() {
		return side_no;
	}
	public void setSide_no(int side_no) {
		this.side_no = side_no;
	}
	public String getSide_name() {
		return side_name;
	}
	public void setSide_name(String side_name) {
		this.side_name = side_name;
	}
	public int getSide_price() {
		return side_price;
	}
	public void setSide_price(int side_price) {
		this.side_price = side_price;
	}
	public String getSide_ex() {
		return side_ex;
	}
	public void setSide_ex(String side_ex) {
		this.side_ex = side_ex;
	}
	public String[] getFilename() {
		return filename;
	}
	public void setFilename(String[] filename) {
		this.filename = filename;
	}
	
}