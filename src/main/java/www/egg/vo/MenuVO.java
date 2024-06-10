package www.egg.vo;

public class MenuVO {	
	
	private String code = null;	 // 메인메뉴코드
	private int no = 0;			 // 메뉴번호
	private String name = null;	 // 메뉴이름
	private int price = 0;		 // 메뉴가격
	private String ex = null;	 // 메뉴설명
	private int star = 0;		 // 별점
	private String file = null;	 // 메뉴사진 
	
	@Override
	public String toString() {
		return "MenuVO [code=" + code + ", no=" + no + ", name=" + name + ", price=" + price + ", ex=" + ex + ", star="
				+ star + ", file=" + file + "]";
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEx() {
		return ex;
	}
	public void setEx(String ex) {
		this.ex = ex;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}

}
